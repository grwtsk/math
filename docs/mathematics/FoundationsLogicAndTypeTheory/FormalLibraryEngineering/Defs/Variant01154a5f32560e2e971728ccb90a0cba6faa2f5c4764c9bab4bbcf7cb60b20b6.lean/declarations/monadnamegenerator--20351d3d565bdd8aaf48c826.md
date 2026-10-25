# MonadNameGenerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:759940b009e71a64d9bc1cbfc8352147d8f05f1b64d2d4bd8c1ff5346ebc6c63",
  "kind": "class",
  "lexical_name": "MonadNameGenerator",
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
  "slug": "monadnamegenerator--20351d3d565bdd8aaf48c826",
  "source": {
    "blob": "201680de486432949cac7a2da67f00faabd021da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 361,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20351d3d565bdd8aaf48c8264d961de2b658bd73d7068a9c100ab11c2466ba90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:759940b009e71a64d9bc1cbfc8352147d8f05f1b64d2d4bd8c1ff5346ebc6c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonadNameGenerator (m : Type → Type) where
  getNGen : m NameGenerator
  setNGen : NameGenerator → m Unit

export MonadNameGenerator (getNGen setNGen)

/--
Creates a globally unique `Name`, without any semantic interpretation.
The names are not intended to be user-visible.
With the default name generator, names use `_uniq` as a base and have a numeric suffix.

This is used for example by `Lean.mkFreshFVarId`, `Lean.mkFreshMVarId`, and `Lean.mkFreshLMVarId`.
To create fresh user-visible identifiers, use functions such as `Lean.Core.mkFreshUserName` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201680de486432949cac7a2da67f00faabd021da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
