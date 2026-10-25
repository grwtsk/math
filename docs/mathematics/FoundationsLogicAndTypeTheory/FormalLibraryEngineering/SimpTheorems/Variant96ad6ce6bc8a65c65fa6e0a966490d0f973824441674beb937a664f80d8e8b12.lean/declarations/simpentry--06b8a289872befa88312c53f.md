# SimpEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76da54afb15ad52ef82a5306e6128af378a4904bc84c4537d5899f10275e41b8",
  "kind": "inductive",
  "lexical_name": "SimpEntry",
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
  "slug": "simpentry--06b8a289872befa88312c53f",
  "source": {
    "blob": "6cf6e9e19687239e0524540d7f004f81f941f560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 529,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06b8a289872befa88312c53f6827c05c517e537d69c6e21e3014548703297211",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76da54afb15ad52ef82a5306e6128af378a4904bc84c4537d5899f10275e41b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SimpEntry where
  | thm      : SimpTheorem → SimpEntry
  | toUnfold : Name → SimpEntry
  | toUnfoldThms : Name → Array Name → SimpEntry
  deriving Inhabited

/--
Reducible functions and projection functions should always be put in `toUnfold`, instead
of trying to use equational theorems.

The simplifiers has special support for structure and class projections, and gets
confused when they suddenly rewrite, so ignore equations for them
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf6e9e19687239e0524540d7f004f81f941f560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
