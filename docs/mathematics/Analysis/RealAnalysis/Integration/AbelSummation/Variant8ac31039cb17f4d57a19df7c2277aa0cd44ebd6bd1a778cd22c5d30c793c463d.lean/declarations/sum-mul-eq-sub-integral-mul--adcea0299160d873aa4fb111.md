# sum_mul_eq_sub_integral_mul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0a0b400-2d01-028c-27c5-8317317c18a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5aaea8d2-a4b2-7cd9-028b-89b07037045b",
  "kind": "theorem",
  "lexical_name": "sum_mul_eq_sub_integral_mul₀",
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
  "slug": "sum-mul-eq-sub-integral-mul--adcea0299160d873aa4fb111",
  "source": {
    "blob": "9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adcea0299160d873aa4fb111847787cefac68f481e096c7d761cbbc061f91e41",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aaea8d2-a4b2-7cd9-028b-89b07037045b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_eq_sub_integral_mul₀ (hc : c 0 = 0) (b : ℝ)
    (hf_diff : ∀ t ∈ Set.Icc 1 b, DifferentiableAt ℝ f t)
    (hf_int : IntegrableOn (deriv f) (Set.Icc 1 b)) :
    ∑ k ∈ Icc 0 ⌊b⌋₊, f k * c k =
      f b * (∑ k ∈ Icc 0 ⌊b⌋₊, c k) - ∫ t in Set.Ioc 1 b, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k := by
  obtain hb | hb := le_or_gt 1 b
  · have : 1 ≤ ⌊b⌋₊ := (Nat.one_le_floor_iff _).mpr hb
    nth_rewrite 1 [Icc_eq_cons_Ioc (Nat.zero_le _), sum_cons, ← Icc_add_one_left_eq_Ioc,
      Icc_eq_cons_Ioc (by omega), sum_cons]
    rw [zero_add, ← Nat.floor_one (R := ℝ),
      sum_mul_eq_sub_sub_integral_mul c zero_le_one hb hf_diff hf_int, Nat.floor_one, Nat.cast_one,
      Icc_eq_cons_Ioc zero_le_one, sum_cons, show 1 = 0 + 1 by rfl, Nat.Ioc_succ_singleton,
      zero_add, sum_singleton, hc, mul_zero, zero_add]
    ring
  · simp_rw [Nat.floor_eq_zero.mpr hb, Icc_self, sum_singleton, Nat.cast_zero, hc, mul_zero,
      Set.Ioc_eq_empty_of_le hb.le, Measure.restrict_empty, integral_zero_measure, sub_self]

/-- A version of `sum_mul_eq_sub_integral_mul₀` where the endpoint is a `Nat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
