# isAlgebraic_of_adjoin_eq_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3db0f4f-c0e2-de94-45ea-aac867abf784",
  "kind": "theorem",
  "lexical_name": "isAlgebraic_of_adjoin_eq_adjoin",
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
  "slug": "isalgebraic-of-adjoin-eq-adjoin--910c7e51b8b8ed4408c55dfe",
  "source": {
    "blob": "2b9546978513fabf1ef67e65f1e08c1933913002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 244,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:910c7e51b8b8ed4408c55dfed14f85d0983d21d759b256bfedc796b9d5df7296",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3db0f4f-c0e2-de94-45ea-aac867abf784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAlgebraic_of_adjoin_eq_adjoin {α : E} {m n : ℕ} (hneq : m ≠ n)
    (heq : F⟮α ^ m⟯ = F⟮α ^ n⟯) : IsAlgebraic F α := by
  wlog hmn : m < n
  · exact this F E hneq.symm heq.symm (hneq.lt_or_lt.resolve_left hmn)
  by_cases hm : m = 0
  · rw [hm] at heq hmn
    simp only [pow_zero, adjoin_one] at heq
    obtain ⟨y, h⟩ := mem_bot.1 (heq.symm ▸ mem_adjoin_simple_self F (α ^ n))
    refine ⟨X ^ n - C y, X_pow_sub_C_ne_zero hmn y, ?_⟩
    simp only [map_sub, map_pow, aeval_X, aeval_C, h, sub_self]
  obtain ⟨r, s, h⟩ := (mem_adjoin_simple_iff F _).1 (heq ▸ mem_adjoin_simple_self F (α ^ m))
  by_cases hzero : aeval (α ^ n) s = 0
  · simp only [hzero, div_zero, pow_eq_zero_iff hm] at h
    exact h.symm ▸ isAlgebraic_zero
  replace hm : 0 < m := Nat.pos_of_ne_zero hm
  rw [eq_div_iff hzero, ← sub_eq_zero] at h
  replace hzero : s ≠ 0 := by rintro rfl; simp only [map_zero, not_true_eq_false] at hzero
  let f : F[X] := X ^ m * expand F n s - expand F n r
  refine ⟨f, ?_, ?_⟩
  · have : f.coeff (n * s.natDegree + m) ≠ 0 := by
      have hn : 0 < n := by linarith only [hm, hmn]
      have hndvd : ¬ n ∣ n * s.natDegree + m := by
        rw [← Nat.dvd_add_iff_right (n.dvd_mul_right s.natDegree)]
        exact Nat.not_dvd_of_pos_of_lt hm hmn
      simp only [f, coeff_sub, coeff_X_pow_mul, s.coeff_expand_mul' hn, coeff_natDegree,
        coeff_expand hn r, hndvd, ite_false, sub_zero]
      exact leadingCoeff_ne_zero.2 hzero
    intro h
    simp only [h, coeff_zero, ne_eq, not_true_eq_false] at this
  · simp only [f, map_sub, map_mul, map_pow, aeval_X, expand_aeval, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9546978513fabf1ef67e65f1e08c1933913002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
