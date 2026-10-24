# aeconst_of_dense_aestabilizer_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fe3da2656dfc755db1e455df63c338834da14c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e67076e-264f-1f17-ba65-dbce85536fb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8eb378d-6692-822f-dbbe-da3778cb580a",
  "kind": "theorem",
  "lexical_name": "aeconst_of_dense_aestabilizer_smul",
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
  "slug": "aeconst-of-dense-aestabilizer-smul--25872523b223b7f470ba99d9",
  "source": {
    "blob": "7fe3da2656dfc755db1e455df63c338834da14c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 118,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25872523b223b7f470ba99d9178c8bb05290ee38e73e834acc4d0b71038e3b8d",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8eb378d-6692-822f-dbbe-da3778cb580a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeconst_of_dense_aestabilizer_smul (hsm : NullMeasurableSet s μ)
    (hd : Dense (MulAction.aestabilizer G μ s : Set G)) : EventuallyConst s (ae μ) :=
  aeconst_of_dense_setOf_preimage_smul_ae hsm <| (hd.preimage (isOpenMap_inv _)).mono fun g hg ↦ by
    simpa only [preimage_smul] using hg

/-- If a monoid `M` continuously acts on an R₁ topological space `X`,
`g` is an element of `M such that its integer powers are dense in `M`,
and `μ` is a finite inner regular measure on `X` which is ergodic with respect to the action of `M`,
then the scalar multiplication by `g` is an ergodic map. -/
@[to_additive "If an additive monoid `M` continuously acts on an R₁ topological space `X`,
`g` is an element of `M such that its integer multiples are dense in `M`,
and `μ` is a finite inner regular measure on `X` which is ergodic with respect to the action of `M`,
then the vector addition of `g` is an ergodic map."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe3da2656dfc755db1e455df63c338834da14c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
