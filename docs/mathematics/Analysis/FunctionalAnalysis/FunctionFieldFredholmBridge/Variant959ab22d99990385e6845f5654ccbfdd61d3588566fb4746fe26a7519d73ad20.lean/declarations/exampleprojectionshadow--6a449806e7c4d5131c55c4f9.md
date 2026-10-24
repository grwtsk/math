# exampleProjectionShadow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8930a1de7017a1b698c0a74a0c89966c276cf18608275148c73cc4513da9ee1",
  "kind": "def",
  "lexical_name": "exampleProjectionShadow",
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
  "slug": "exampleprojectionshadow--6a449806e7c4d5131c55c4f9",
  "source": {
    "blob": "9e2b37560ef141ee7f66b45cffe2afe68e042927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 701,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a449806e7c4d5131c55c4f973add7a4019f11f3b5fa4047e760c22cd624a4fe",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8930a1de7017a1b698c0a74a0c89966c276cf18608275148c73cc4513da9ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleProjectionShadow : FunctionFieldProjectionShadow where
  treeHash := 101
  matrixHash := 202
  rows := 2
  cols := 2
  finiteSupportOK := True
  finiteSupportOKProof := trivial
  reachabilityOK := True
  reachabilityOKProof := trivial
  cycleConditionOK := True
  cycleConditionOKProof := trivial
  intrinsicProjectionOK := True
  intrinsicProjectionOKProof := trivial
  noExtrinsicGridOverlay := True
  noExtrinsicGridOverlayProof := trivial
  hexagonalOverlapOK := True
  hexagonalOverlapOKProof := trivial
  finiteShadowSound := True
  finiteShadowSoundProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e2b37560ef141ee7f66b45cffe2afe68e042927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
