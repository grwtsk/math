# correlationScaleDerivative_zero_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8100d224-1699-96ea-205c-4313054671ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e84e00a7-459f-2081-1e0a-803379988ca8",
  "kind": "theorem",
  "lexical_name": "correlationScaleDerivative_zero_of_le",
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
  "slug": "correlationscalederivative-zero-of-le--94690e5b6290d5549b8c144d",
  "source": {
    "blob": "c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 345,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94690e5b6290d5549b8c144d731b685206028fb4095ce5f1c94aa880bf74c284",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e84e00a7-459f-2081-1e0a-803379988ca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationScaleDerivative_zero_of_le {A s : ℝ} (hA : 0 < A) (hs : 2 * A ≤ s) :
    correlationScaleDerivative A s = 0 := by
  have he : (fun B => sourceCorrelation explicitSecondDerivative B s) =ᶠ[nhdsWithin A (Iic A)]
      (fun _ => (0 : ℝ)) := by
    filter_upwards [self_mem_nhdsWithin,
      (eventually_gt_nhds hA).filter_mono nhdsWithin_le_nhds] with B hBA hB
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs B s hB
      (by have := le_abs_self s; have := mem_Iic.mp hBA; linarith)
  have hz := (hasDerivAt_const A (0 : ℝ)).hasDerivWithinAt.congr_of_eventuallyEq_of_mem
    he (show A ∈ Iic A from le_rfl)
  exact ((sourceCorrelation_hasDerivAt_scale hA s).hasDerivWithinAt.derivWithin
    (uniqueDiffWithinAt_Iic A)).symm.trans (hz.derivWithin (uniqueDiffWithinAt_Iic A))

/-- The literal coefficient is zero at its included closed-right support birth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
