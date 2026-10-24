# generalizedEisenstein_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e07129627283409eba3c0047a30c81e39b52d63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8ade084-36e3-f2c4-568f-5176404e23a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fdf1a4c-616e-e4b7-43c7-a84b12f5bba1",
  "kind": "lemma",
  "lexical_name": "generalizedEisenstein_aux",
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
  "slug": "generalizedeisenstein-aux--45b48b63401eaadf1f8630f6",
  "source": {
    "blob": "9e07129627283409eba3c0047a30c81e39b52d63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 62,
    "path": "GRWTSK/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b48b63401eaadf1f8630f6f22430416813e88354dcf0e85219f90ff6fd8b04",
  "verification": {
    "reference": "docs/verification/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fdf1a4c-616e-e4b7-43c7-a84b12f5bba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma generalizedEisenstein_aux {q f g : R[X]} {p : ℕ}
    (hq_irr : Irreducible (q.map (algebraMap R K)))
    (hq_monic : q.Monic)
    (hf_lC : algebraMap R K f.leadingCoeff ≠ 0)
    (hf_prim : f.IsPrimitive)
    (hfmodP : f.map (algebraMap R K) =
      C (algebraMap R K f.leadingCoeff) * q.map (algebraMap R K) ^ p)
    (hg_div : g ∣ f) :
    ∃ m r, g = C g.leadingCoeff * q ^ m + r ∧
          r.map (algebraMap R K) = 0 ∧ (m = 0 → IsUnit g) := by
  set P := ker (algebraMap R K)
  have hP : P.IsPrime := ker_isPrime (algebraMap R K)
  have hgP : g.leadingCoeff ∉ P := by
    simp only [mem_ker, P]
    obtain ⟨h, rfl⟩ := hg_div
    simp only [leadingCoeff_mul, map_mul, ne_eq, mul_eq_zero, not_or] at hf_lC
    exact hf_lC.1
  have map_dvd_pow_q :
      g.map  (algebraMap R K) ∣ q.map (algebraMap R K) ^ p := by
    rw [← IsUnit.dvd_mul_left _, ← hfmodP]
    · exact Polynomial.map_dvd _ hg_div
    · simp_all
  obtain ⟨m, hm, hf⟩ := (dvd_prime_pow hq_irr.prime _).mp map_dvd_pow_q
  set r := g - C g.leadingCoeff * q ^ m
  have hg : g = C g.leadingCoeff * q ^ m + r := by ring
  have hr : r.map (algebraMap R K) = 0 := by
    obtain ⟨u, hu⟩ := hf.symm
    obtain ⟨a, ha, ha'⟩ := Polynomial.isUnit_iff.mp u.isUnit
    suffices C (algebraMap R K g.leadingCoeff) = u by
      simp [r, ← this, Polynomial.map_sub, ← hu, Polynomial.map_mul, map_C,
        Polynomial.map_pow, sub_eq_zero, mul_comm]
    rw [← leadingCoeff_map_of_leadingCoeff_ne_zero _ hgP, ← hu, ← ha',
      leadingCoeff_mul, leadingCoeff_C, (hq_monic.map _).pow m, one_mul]
  use m, r, hg, hr
  intro hm
  rw [isPrimitive_iff_isUnit_of_C_dvd] at hf_prim
  rw [hm, pow_zero, mul_one] at hg
  suffices g.natDegree = 0 by
    obtain ⟨a, rfl⟩ := Polynomial.natDegree_eq_zero.mp this
    apply IsUnit.map
    apply hf_prim
    rwa [leadingCoeff_C] at hgP
  by_contra hg'
  apply hgP
  rw [hg, leadingCoeff, coeff_add, ← hg, coeff_C, if_neg hg', zero_add,
    mem_ker, ← coeff_map, hr, coeff_zero]

/-- A generalized Eisenstein criterion

Let `R` be an integral domain and `K` an `R`-algebra which is a domain.
Let `q : R[X]` be a monic polynomial which is prime in `K[X]`.
Let `f : R[X]` be a primitive polynomial of strictly positive degree
whose leading coefficient is not zero in `K`
and such that the image `f` in `K[X]` is a power of `q`.
Assume moreover that `f.modByMonic q` is not zero in `(R ⧸ (P ^ 2))[X]`,
where `P` is the kernel of `algebraMap R K`.
Then `f` is irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e07129627283409eba3c0047a30c81e39b52d63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
