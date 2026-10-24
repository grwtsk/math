# sourceKernel_rescaled_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f8a69bf45f2e7edc71e63ec9ea50b9c8447b5b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:251412e9-bbd4-6288-8d91-ce91f1ffbde7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a2ead0d-c1e3-40da-9b79-03703bf9b48f",
  "kind": "theorem",
  "lexical_name": "sourceKernel_rescaled_integrable",
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
  "slug": "sourcekernel-rescaled-integrable--23729dfed5a9688c34b90996",
  "source": {
    "blob": "9f8a69bf45f2e7edc71e63ec9ea50b9c8447b5b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23729dfed5a9688c34b90996523bcbfbda5a7fd20e02525b8db5fc8ab5bb52a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2ead0d-c1e3-40da-9b79-03703bf9b48f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_rescaled_integrable (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ SourceSampling.sourceSamplingKernel A (q * x)) (Ioi 1) := by
  have hi : IntegrableOn (fun x ↦
      ∑ l ∈ Finset.Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), innerTerm A q l x) (Ioi 1) :=
    integrable_finsetSum _ (fun l hl ↦ innerTerm_integrable A q l hA
      (by linarith) (Finset.mem_Icc.mp hl).1)
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact (sourceKernel_eq_inner_sum A q x hA hq hx.le).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8a69bf45f2e7edc71e63ec9ea50b9c8447b5b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
