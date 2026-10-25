# relationProfileTag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc8d531f9d9cbe74ee8d8f701ead7c567981b4d08260f82261a537013427d934",
  "kind": "def",
  "lexical_name": "relationProfileTag",
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
  "slug": "relationprofiletag--02b75aa58308a1510f7c8a67",
  "source": {
    "blob": "c8c8b485b9d6d57324713a67a7e40b3a6c56b790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02b75aa58308a1510f7c8a67351c5f674791f32a7ae44e1028ad0eabf95a5d83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc8d531f9d9cbe74ee8d8f701ead7c567981b4d08260f82261a537013427d934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def relationProfileTag : RhetoricalRelationProfile → Nat
  | .similarity => 0
  | .implicationAffinity => 1
  | .oppositionAffinity => 2
  | .oppositionResidual => 3
  | .coordinateAntipodesExact => 4
  | .analogyTranslationAffinity => 5
  | .analogyTranslationResidual => 6
  | .analogyTranslationExact => 7
  | .analogyTensorAffinity => 8

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c8b485b9d6d57324713a67a7e40b3a6c56b790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
