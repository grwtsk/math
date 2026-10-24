# sum_mul_eq_sub_integral_mul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71b44611d978318185ecc30724856b14e316742f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3154be0-5f74-3df7-c0ce-338252b9f2d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0ac736e-dff3-3b57-38e3-d9c1f0ac9e6e",
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
  "slug": "sum-mul-eq-sub-integral-mul--8224bc2e9a57b477995a0f32",
  "source": {
    "blob": "71b44611d978318185ecc30724856b14e316742f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8224bc2e9a57b477995a0f324eb08d64f78805582e4cd0e7b09cf673b71e4f3c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0ac736e-dff3-3b57-38e3-d9c1f0ac9e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–228.

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
      Icc_eq_cons_Ioc (by lia), sum_cons]
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b44611d978318185ecc30724856b14e316742f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
