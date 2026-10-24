# exampleArgumentPrinciplePayload

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d45980e0655c9f9b36cd7a6900e6a8aa70f8e105c361614254b63c19479868b7",
  "kind": "def",
  "lexical_name": "exampleArgumentPrinciplePayload",
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
  "slug": "exampleargumentprinciplepayload--cc010f6ce899de3c8a69bc36",
  "source": {
    "blob": "ea36fee80690e33e42699494395b09773b0dee1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc010f6ce899de3c8a69bc36d801a91f042699339bb1653a80951c66d8a86cf3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d45980e0655c9f9b36cd7a6900e6a8aa70f8e105c361614254b63c19479868b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleArgumentPrinciplePayload :
    _root_.Number.NumericalEstimate.ArgumentPrincipleCountPayload where
  contourLabel := "rectangle contour"
  contourHash := 24
  meromorphicFunctionHash := 27
  zeroCount := 3
  poleCount := 0
  windingNumberHash := 28
  contourAvoidsZerosAndPoles := True
  contourAvoidsZerosAndPolesProof := trivial
  finiteSound := True
  finiteSoundProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea36fee80690e33e42699494395b09773b0dee1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
