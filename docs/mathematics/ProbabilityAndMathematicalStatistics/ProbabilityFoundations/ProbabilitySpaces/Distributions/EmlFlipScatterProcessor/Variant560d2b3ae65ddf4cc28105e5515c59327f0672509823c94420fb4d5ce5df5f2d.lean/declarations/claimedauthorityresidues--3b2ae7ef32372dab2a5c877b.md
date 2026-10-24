# claimedAuthorityResidues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fcaa9de6730834e1d3fca55d9bd2abcfbc1f98043d4dec9c37ae57345b5b5da",
  "kind": "def",
  "lexical_name": "claimedAuthorityResidues",
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
  "slug": "claimedauthorityresidues--3b2ae7ef32372dab2a5c877b",
  "source": {
    "blob": "005b85f4e45377d68cd9283f7c8faee90b7a0303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 187,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFlipScatterProcessor/Variant560d2b3ae65ddf4cc28105e5515c59327f0672509823c94420fb4d5ce5df5f2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b2ae7ef32372dab2a5c877b339123f032a390086d8995e9db088b34cab89d43",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFlipScatterProcessor/Variant560d2b3ae65ddf4cc28105e5515c59327f0672509823c94420fb4d5ce5df5f2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fcaa9de6730834e1d3fca55d9bd2abcfbc1f98043d4dec9c37ae57345b5b5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def claimedAuthorityResidues
    (input : EmlToposProcessorInput) :
    List FlipScatterResidue :=
  (if input.proseAuthorityClaim then
      [FlipScatterResidue.prose_not_authority]
    else
      []) ++
    (if input.browserStateAuthorityClaim then
      [FlipScatterResidue.browser_state_not_authority]
    else
      []) ++
    (if input.modelOutputAuthorityClaim then
      [FlipScatterResidue.model_output_not_authority]
    else
      [])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFlipScatterProcessor/Variant560d2b3ae65ddf4cc28105e5515c59327f0672509823c94420fb4d5ce5df5f2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFlipScatterProcessor/Variant560d2b3ae65ddf4cc28105e5515c59327f0672509823c94420fb4d5ce5df5f2d.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `005b85f4e45377d68cd9283f7c8faee90b7a0303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
