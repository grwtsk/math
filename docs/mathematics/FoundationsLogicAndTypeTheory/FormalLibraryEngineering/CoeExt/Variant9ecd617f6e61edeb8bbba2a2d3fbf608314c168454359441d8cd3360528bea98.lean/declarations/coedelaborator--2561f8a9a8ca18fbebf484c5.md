# coeDelaborator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32a66d97e2682687930d39fef551c6d64ae67a4b067c45fab9f967e72060c209",
  "kind": "def",
  "lexical_name": "coeDelaborator",
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
  "slug": "coedelaborator--2561f8a9a8ca18fbebf484c5",
  "source": {
    "blob": "1baff3502fd17d0921d64994332a682f15c0d914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2561f8a9a8ca18fbebf484c5e03e256dfe4c839637035ec6be16eb0f63c673a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32a66d97e2682687930d39fef551c6d64ae67a4b067c45fab9f967e72060c209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeDelaborator (info : CoeFnInfo) : Delab := whenPPOption getPPCoercions do
  let n := (← getExpr).getAppNumArgs
  withOverApp info.numArgs do
    match info.type with
    | .coe => `(↑$(← withNaryArg info.coercee delab))
    | .coeFun =>
      if n = info.numArgs then
        `(⇑$(← withNaryArg info.coercee delab))
      else
        withNaryArg info.coercee delab
    | .coeSort => `(↥$(← withNaryArg info.coercee delab))

/-- Add a coercion delaborator for the given function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1baff3502fd17d0921d64994332a682f15c0d914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
