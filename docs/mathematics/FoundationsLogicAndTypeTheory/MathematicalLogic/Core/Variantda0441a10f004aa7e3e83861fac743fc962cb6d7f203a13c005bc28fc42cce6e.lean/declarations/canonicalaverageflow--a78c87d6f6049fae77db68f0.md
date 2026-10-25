# canonicalAverageFlow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6939cf6d1e9ff1c58f114a19b6d820abc239c8c80f04e0b3333e7600d36f7238",
  "kind": "def",
  "lexical_name": "canonicalAverageFlow",
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
  "slug": "canonicalaverageflow--a78c87d6f6049fae77db68f0",
  "source": {
    "blob": "9a99a95d7efec741a1adfbf8bb0327c65ee69a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a78c87d6f6049fae77db68f057b54b0ac8783a4e0a80d529bae35afe55f91e87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6939cf6d1e9ff1c58f114a19b6d820abc239c8c80f04e0b3333e7600d36f7238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalAverageFlow : BinaryLogicMatrixAveragingModel where
  sourceCount := 2
  rows := 3
  cols := 3
  paddingPolicy := PaddingPolicy.ignorePadding
  comparisonWeights := { valueWeight := 1, paddingWeight := 1 }
  spectralPolicy := canonicalSpectralPolicy
  sources := canonicalSources

end BinaryLogicMatrixAveragingModel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a99a95d7efec741a1adfbf8bb0327c65ee69a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
