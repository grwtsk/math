# FoundationEquivalenceClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b29ce765cc7833970f287351561b935b5f2af1de06c387a61f5b18418a036d9e",
  "kind": "structure",
  "lexical_name": "FoundationEquivalenceClaim",
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
  "slug": "foundationequivalenceclaim--399d63e1ae23898ab933c401",
  "source": {
    "blob": "91c9c4de777855b6591f9860532a896b7b905570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:399d63e1ae23898ab933c4015336ecc8b4fba641314023171390eb1a1375a3c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b29ce765cc7833970f287351561b935b5f2af1de06c387a61f5b18418a036d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FoundationEquivalenceClaim (left right : Foundation) where
  claimArtifact : VersionId
  forward : FoundationInterpretation left right
  reverse : FoundationInterpretation right left
  roundTripEvidenceArtifacts : List VersionId
  roundTripEvidenceNonempty : roundTripEvidenceArtifacts ≠ []
  status : ExternalFoundationClaimStatus
  validation : ExternalFoundationClaimEvidence claimArtifact status

/--
A proposition is genuinely nullary, carries a statically nonempty exact finite
support, or conservatively requires every object in the theory scope.  The
universal case is used when an opaque semantic proposition does not expose a
finite support witness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variantbb2c01731a6c94cab232e25356b254be9a2981f0be67254096576b7ed85b010e.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c9c4de777855b6591f9860532a896b7b905570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
