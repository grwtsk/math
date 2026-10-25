# getStained!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3391e5b108bd8a3f745ed05ff69beeab4ad549cf4c6bc86f84de61d4bd5fc9b4",
  "kind": "def",
  "lexical_name": "getStained!",
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
  "slug": "getstained--03cc26db15a4025fd2e24b8e",
  "source": {
    "blob": "37ab45bf334aaaf5f004bde7cce26d37af5ec574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03cc26db15a4025fd2e24b8ea3a287e0cb3a447845d611dab0567b020c15aaca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3391e5b108bd8a3f745ed05ff69beeab4ad549cf4c6bc86f84de61d4bd5fc9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getStained! (stx : Syntax) (all? : Syntax → Bool := fun _ ↦ false) : Std.HashSet Stained :=
  let out := getStained stx all?
  if out.size == 0 then {.goal} else out

/-- `Stained.toFMVarId mv lctx st` takes a metavariable `mv`, a local context `lctx` and
a `Stained` `st` and returns the array of pairs `(FVarId, mv)`s that `lctx` assigns to `st`
(the second component is always `mv`):
* if `st` "is" a `Name`, returns the singleton of the `FVarId` with the name carried by `st`;
* if `st` is `.goal`, returns the singleton `#[default]`;
* if `st` is `.wildcard`, returns the array of all the `FVarId`s in `lctx` with also `default`
  (to keep track of the `goal`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ab45bf334aaaf5f004bde7cce26d37af5ec574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
