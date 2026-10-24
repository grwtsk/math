# exists_measure_rpow_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfb5d261991388600339b7871a14fd954559d6cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02e15dc7-90e3-1d1e-07e5-d78c5d7a39c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aacd4178-794f-7f12-ecbc-eb617e15fbf8",
  "kind": "lemma",
  "lexical_name": "exists_measure_rpow_eq_integral",
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
  "slug": "exists-measure-rpow-eq-integral--b17aeaf5f40f12fcea066941",
  "source": {
    "blob": "cfb5d261991388600339b7871a14fd954559d6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 287,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b17aeaf5f40f12fcea066941905278a87663a1cf8d4b95a1398d2d6db370bec8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aacd4178-794f-7f12-ecbc-eb617e15fbf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_measure_rpow_eq_integral (hp : p ∈ Ioo 0 1) :
    ∃ μ : Measure ℝ, (∀ᵐ t ∂μ, 0 < t) ∧ ∀ x, 0 ≤ x → x ^ p = ∫ t, rpowIntegrand₀₁ p t x ∂μ := by
  let C : ℝ≥0 :=
    { val := (∫ t in Ioi 0, rpowIntegrand₀₁ p t 1)⁻¹
      property := by
        rw [inv_nonneg]
        exact le_of_lt <| integral_rpowIntegrand₀₁_one_pos hp }
  let μ : Measure ℝ := C • volume.restrict (Ioi 0)
  refine ⟨μ, ?_, fun x hx => ?_⟩
  · refine Measure.ae_smul_measure ?_ _
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact ht
  · rw [integral_smul_nnreal_measure, rpow_eq_const_mul_integral hp hx]
    simp [C, NNReal.smul_def]

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb5d261991388600339b7871a14fd954559d6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
