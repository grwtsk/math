# Examples.natRenderRay_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "600269bab0b308e29af033cb0762f24d4c6bdd96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f0c0ab0b3b5bf424d80b2edfb3684c7bb5a97b5174131874f29da9ee1f31e3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7de21977-f133-c4ba-d723-523b3db3a884",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1166fab2-9452-44fd-61b1-3b2c69f6e694",
  "kind": "theorem",
  "lexical_name": "Examples.natRenderRay_apply",
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
  "slug": "examples-natrenderray-apply--9532629596a68e31efc8835c",
  "source": {
    "blob": "600269bab0b308e29af033cb0762f24d4c6bdd96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Examples/Variant7f0c0ab0b3b5bf424d80b2edfb3684c7bb5a97b5174131874f29da9ee1f31e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9532629596a68e31efc8835c891506ed89807c253a45ddbf2a36668fcfdf9496",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Examples/Variant7f0c0ab0b3b5bf424d80b2edfb3684c7bb5a97b5174131874f29da9ee1f31e3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1166fab2-9452-44fd-61b1-3b2c69f6e694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Examples.natRenderRay_apply
    (c : AffineFiberTensorNetwork.ColorChannel) :
    Examples.natRenderRay c = 1 := by
  simp [Examples.natRenderRay, Examples.natSHBasis, Examples.natRayKernel,
    Examples.natGaussianScene, Examples.natGaussianSplat, Examples.natAngularFiber,
    Examples.natRGBOne, AffineFiberTensorNetwork.renderRay,
    AffineFiberTensorNetwork.atomRayContribution,
    AffineFiberTensorNetwork.GaussianSplat.color,
    AffineFiberTensorNetwork.FiniteAngularFiber.eval,
    AffineFiberTensorNetwork.sumRGB, AffineFiberTensorNetwork.rgbAdd,
    AffineFiberTensorNetwork.rgbScale, AffineFiberTensorNetwork.rgbZero]

/-- Example 3-cube vertex: binary state `101`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Examples/Variant7f0c0ab0b3b5bf424d80b2edfb3684c7bb5a97b5174131874f29da9ee1f31e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Examples/Variant7f0c0ab0b3b5bf424d80b2edfb3684c7bb5a97b5174131874f29da9ee1f31e3c.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `600269bab0b308e29af033cb0762f24d4c6bdd96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
