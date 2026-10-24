# integral_deriv_comp_smul_deriv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16d5c33a386ed47303041786a77bd4f00fd06b25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f9b853c-0edf-f741-021a-515ed8088dd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:255563ef-b7bc-bc74-3255-ea0e96c7f9d0",
  "kind": "theorem",
  "lexical_name": "integral_deriv_comp_smul_deriv'",
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
  "slug": "integral-deriv-comp-smul-deriv--72d8546c70c947c9c172a1d8",
  "source": {
    "blob": "16d5c33a386ed47303041786a77bd4f00fd06b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1443,
    "line": 1433,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72d8546c70c947c9c172a1d81cc23588900a70fb0487bca12c418426a130c771",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:255563ef-b7bc-bc74-3255-ea0e96c7f9d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1433–1443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_deriv_comp_smul_deriv' {f f' : ℝ → ℝ} {g g' : ℝ → E} (hf : ContinuousOn f [[a, b]])
    (hff' : ∀ x ∈ Ioo (min a b) (max a b), HasDerivWithinAt f (f' x) (Ioi x) x)
    (hf' : ContinuousOn f' [[a, b]]) (hg : ContinuousOn g [[f a, f b]])
    (hgg' : ∀ x ∈ Ioo (min (f a) (f b)) (max (f a) (f b)), HasDerivWithinAt g (g' x) (Ioi x) x)
    (hg' : ContinuousOn g' (f '' [[a, b]])) :
    (∫ x in a..b, f' x • (g' ∘ f) x) = (g ∘ f) b - (g ∘ f) a := by
  rw [integral_comp_smul_deriv'' hf hff' hf' hg',
    integral_eq_sub_of_hasDeriv_right hg hgg' (hg'.mono _).intervalIntegrable]
  exacts [rfl, intermediate_value_uIcc hf]
#align interval_integral.integral_deriv_comp_smul_deriv' intervalIntegral.integral_deriv_comp_smul_deriv'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean#L1433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16d5c33a386ed47303041786a77bd4f00fd06b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
