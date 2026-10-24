# interval_correlation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f38a4ae4c148b6bfad672a5b2d6bb026cd557794",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba8e0c5f-5ab8-6cac-c720-9e161e314eee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:988637a9-292a-29f9-b818-793c60fb870f",
  "kind": "theorem",
  "lexical_name": "interval_correlation_square",
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
  "slug": "interval-correlation-square--61f20ca2137ac901fdd2523e",
  "source": {
    "blob": "f38a4ae4c148b6bfad672a5b2d6bb026cd557794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variant8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f20ca2137ac901fdd2523ee4f3cdd80eac15c61ac0b8d72408bf2c394e73c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variant8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:988637a9-292a-29f9-b818-793c60fb870f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interval_correlation_square (A : ℝ) (hA : 1 ≤ A) (σ : ℝ) :
    (∫ t in (-2*A)..(2*A),Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) =
      normalizedSquare A σ := by
  have he : (fun t : ℝ => Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) =
      (Icc (-2*A) (2*A)).indicator
        (fun t : ℝ => Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) := by
    funext t
    by_cases ht : t ∈ Icc (-2*A) (2*A)
    · rw [indicator_of_mem ht]
    · rw [indicator_of_notMem ht]
      have hb : 2*A ≤ |t| := by
        simp only [mem_Icc,not_and_or] at ht
        rcases ht with ht | ht
        · have : t < -2*A := lt_of_not_ge ht
          have hh := neg_le_abs t; linarith
        · have : 2*A < t := lt_of_not_ge ht
          exact this.le.trans (le_abs_self t)
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) hb,mul_zero]
  have hf := full_correlation_square A hA σ
  rw [he,integral_indicator measurableSet_Icc,integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -2*A ≤ 2*A)] at hf
  exact hf

#check actual_normalized_even
#print axioms actual_normalized_even
#check real_transform_dictionary
#print axioms real_transform_dictionary
#check full_correlation_square
#print axioms full_correlation_square
#check interval_correlation_square
#print axioms interval_correlation_square
end
end ContinuousResearch.ActualMomentDictionary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variant8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variant8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f38a4ae4c148b6bfad672a5b2d6bb026cd557794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
