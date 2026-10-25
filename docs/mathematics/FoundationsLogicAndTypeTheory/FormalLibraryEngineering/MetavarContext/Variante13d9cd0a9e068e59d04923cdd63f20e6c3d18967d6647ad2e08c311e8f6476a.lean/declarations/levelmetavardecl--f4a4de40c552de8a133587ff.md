# LevelMetavarDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18cf4ba9cd6c38feacc93de6cd9c0f95e9503a8b5f6eddec9b02545aeeab4e21",
  "kind": "structure",
  "lexical_name": "LevelMetavarDecl",
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
  "slug": "levelmetavardecl--f4a4de40c552de8a133587ff",
  "source": {
    "blob": "7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4a4de40c552de8a133587ffca35130a2ac5c60e5118dbdff80f94079dcbbcc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18cf4ba9cd6c38feacc93de6cd9c0f95e9503a8b5f6eddec9b02545aeeab4e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LevelMetavarDecl where
  /-- The nesting depth of this metavariable. We do not want
  unification subproblems to influence the results of parent
  problems. The depth keeps track of this information and ensures
  that unification subproblems cannot leak information out, by unifying
  based on depth. -/
  depth : Nat
  /-- This field tracks how old a metavariable is. It is set using a counter at `MetavarContext`.
  We primarily use the index of a level metavariable for pretty printing. -/
  index : Nat
  deriving Inhabited

/--
`LocalInstance` represents a local typeclass instance registered by and for
the elaborator. It stores the name of the typeclass in `className`, and the
concrete typeclass instance in `fvar`. Note that the kernel does not care about
this information, since typeclasses are entirely eliminated during elaboration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
