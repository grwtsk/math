# sourceCorrelation_contDiff_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b530e171c2774cad4e3501ee741490c37c5b1b66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ea6da35-6783-ddec-77da-d916af2e0ad1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:687216d8-6e61-fadc-1a40-68b5ad80131f",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_contDiff_two",
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
  "slug": "sourcecorrelation-contdiff-two--bb47147ca1ae60eba075bc38",
  "source": {
    "blob": "b530e171c2774cad4e3501ee741490c37c5b1b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb47147ca1ae60eba075bc385bb1c1b24ff1d847b4283ff530ec0eebbf376d69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:687216d8-6e61-fadc-1a40-68b5ad80131f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (sourceCorrelation explicitSecondDerivative A) := by
  rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨(sourceCorrelation_contDiff A hA).differentiable (by norm_num),
    by norm_num, sourceCorrelation_deriv_contDiff hA⟩

/-- Differentiating the reflected convolution factor produces the exact negative sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b530e171c2774cad4e3501ee741490c37c5b1b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
