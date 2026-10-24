# generalizedEisenstein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f69beb9b-eb3a-38f1-9ce5-3e7ac9b8678e",
  "kind": "theorem",
  "lexical_name": "generalizedEisenstein",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "generalizedeisenstein--07c90bb4da869dd71d76a725",
  "source": {
    "blob": "3d46d01599a642f7d44ab972fafb9e1c1bedd509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 127,
    "path": "GRWTSK/Algebra/Criterion/Variant65e49fd0799b56b25d425169b672a86ff1a28b1bf624a83f72eb70a9c25e9e3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07c90bb4da869dd71d76a72569f9ddca14f51a980d995cfd8185cbcc4019071c",
  "verification": {
    "reference": "docs/verification/Algebra/Criterion/Variant65e49fd0799b56b25d425169b672a86ff1a28b1bf624a83f72eb70a9c25e9e3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f69beb9b-eb3a-38f1-9ce5-3e7ac9b8678e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generalizedEisenstein {q f : R[X]} {p : ℕ}
    (hq_irr : Irreducible (q.map (algebraMap R K))) (hq_monic : q.Monic)
    (hf_prim : f.IsPrimitive)
    (hfd0 : 0 < natDegree f)
    (hfP : algebraMap R K f.leadingCoeff ≠ 0)
    (hfmodP : f.map (algebraMap R K) =
      C (algebraMap R K f.leadingCoeff) * q.map (algebraMap R K) ^ p)
    (hfmodP2 : (f.modByMonic q).map (mk ((ker (algebraMap R K)) ^ 2)) ≠ 0) :
    Irreducible f where
  not_isUnit := mt degree_eq_zero_of_isUnit fun h => by
    simp_all [lt_irrefl, natDegree_pos_iff_degree_pos]
  isUnit_or_isUnit g h h_eq := by
    -- We have to show that factorizations `f = g * h` are trivial
    set P : Ideal R := ker (algebraMap R K)
    obtain ⟨m, r, hg, hr, hm0⟩ :=
      generalizedEisenstein_aux hq_irr hq_monic hfP hf_prim hfmodP (h_eq ▸ dvd_mul_right g h)
    obtain ⟨n, s, hh, hs, hn0⟩ :=
      generalizedEisenstein_aux hq_irr hq_monic hfP hf_prim hfmodP (h_eq ▸ dvd_mul_left h g)
    by_cases hm : m = 0
    -- If `m = 0`, `generalizedEisenstein_aux` shows that `g` is a unit.
    · left; exact hm0 hm
    by_cases hn : n = 0
    -- If `n = 0`, `generalizedEisenstein_aux` shows that `h` is a unit.
    · right; exact hn0 hn
    -- Otherwise, we will get a contradiction by showing that `f %ₘ q` is zero mod `P ^ 2`.
    exfalso
    apply hfmodP2
    suffices f %ₘ q = (r * s) %ₘ q by
      -- Since the coefficients of `r` and `s` are in `P`, those of `r * s` are in `P ^ 2`
      suffices h : map (Ideal.Quotient.mk (P ^ 2)) (r * s) = 0 by
        simp [this, h, map_modByMonic, hq_monic]
      ext n
      have h (x : ℕ × ℕ) : (Ideal.Quotient.mk (P ^ 2)) (r.coeff x.1 * s.coeff x.2) = 0 := by
        rw [eq_zero_iff_mem, pow_two]
        apply mul_mem_mul
        · rw [mem_ker, ← coeff_map, hr, coeff_zero]
        · rw [mem_ker, ← coeff_map, hs, coeff_zero]
      simp [- Polynomial.map_mul, coeff_mul, h]
    -- It remains to prove the equality `f %ₘ q = (r * s) %ₘ q`, which is straightforward
    rw [h_eq, hg, hh]
    simp only [add_mul, mul_add, map_add, ← modByMonicHom_apply]
    simp only [← add_assoc, modByMonicHom_apply]
    iterate 3 rw [(modByMonic_eq_zero_iff_dvd hq_monic).mpr]
    · simp
    · exact ((dvd_pow_self q hm).mul_left _).mul_right _
    · simp only [← mul_assoc]
      exact (dvd_pow_self q hn).mul_left _
    · exact ((dvd_pow_self q hn).mul_left _).mul_left _

/-- If `f` is a non constant polynomial with coefficients in `R`, and `P` is a prime ideal in `R`,
then if every coefficient in `R` except the leading coefficient is in `P`, and
the trailing coefficient is not in `P^2` and no non units in `R` divide `f`, then `f` is
irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Criterion/Variant65e49fd0799b56b25d425169b672a86ff1a28b1bf624a83f72eb70a9c25e9e3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Criterion/Variant65e49fd0799b56b25d425169b672a86ff1a28b1bf624a83f72eb70a9c25e9e3b.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d46d01599a642f7d44ab972fafb9e1c1bedd509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
