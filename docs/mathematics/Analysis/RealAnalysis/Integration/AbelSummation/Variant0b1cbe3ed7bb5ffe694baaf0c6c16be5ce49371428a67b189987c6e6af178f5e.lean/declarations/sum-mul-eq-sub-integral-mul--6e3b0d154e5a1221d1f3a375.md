# sum_mul_eq_sub_integral_mul₁

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
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6760722b-b577-409c-b749-972fbe25071b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12bd559f-47f1-dcdd-da6c-e81744687b71",
  "kind": "theorem",
  "lexical_name": "sum_mul_eq_sub_integral_mul₁",
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
  "slug": "sum-mul-eq-sub-integral-mul--6e3b0d154e5a1221d1f3a375",
  "source": {
    "blob": "71b44611d978318185ecc30724856b14e316742f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 239,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e3b0d154e5a1221d1f3a375f8b5e286808d6b3605141445aa42a011f4455e0d",
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

Occurrence: `result:12bd559f-47f1-dcdd-da6c-e81744687b71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_eq_sub_integral_mul₁ (hc : c 0 = 0) (hc1 : c 1 = 0) (b : ℝ)
    (hf_diff : ∀ t ∈ Set.Icc 2 b, DifferentiableAt ℝ f t)
    (hf_int : IntegrableOn (deriv f) (Set.Icc 2 b)) :
    ∑ k ∈ Icc 0 ⌊b⌋₊, f k * c k =
      f b * (∑ k ∈ Icc 0 ⌊b⌋₊, c k) - ∫ t in Set.Ioc 2 b, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k := by
  by_cases! hb : b < 2
  · -- Easy case, everything is 0
    have H₁ : ∀ n ∈ Icc 0 ⌊b⌋₊, c n = 0 := by grind [(Nat.floor_lt' two_ne_zero).mpr hb]
    have H₂ : ∀ n ∈ Icc 0 ⌊b⌋₊, f n * c n = 0 := by grind
    simp [sum_eq_zero H₁, sum_eq_zero H₂, Set.Ioc_eq_empty_of_le hb.le]
  -- Split off the first two terms of the sum
  have : 2 ≤ ⌊b⌋₊ := Nat.le_floor hb
  have H : ∑ k ∈ Icc 0 ⌊b⌋₊, f ↑k * c k = f (2 :) * c 2 + ∑ k ∈ Ioc 2 ⌊b⌋₊, f ↑k * c k := by
    rw [add_sum_Ioc_eq_sum_Icc (f := fun (k : ℕ) ↦ f k * c k) this,
      show Icc 0 ⌊b⌋₊ = {0, 1} ∪ Icc 2 ⌊b⌋₊ by grind]
    exact sum_union_eq_right fun k hk hk' ↦ by grind
  rw [H]
  -- Apply Abel summation to the remainder
  nth_rewrite 3 [show 2 = ⌊(2 : ℝ)⌋₊ by simp]
  rw [sum_mul_eq_sub_sub_integral_mul c zero_le_two hb hf_diff hf_int]
  simp [show Icc 0 2 = {0, 1, 2} by rfl, hc, hc1]
  grind

end specialversions

section limit

open Filter intervalIntegral

open scoped Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b44611d978318185ecc30724856b14e316742f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
