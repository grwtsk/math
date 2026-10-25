# IndGroupInst.brecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0b0848fd2e226d53997d39c5ebc7a48de8ac55bbe1d51bee0d2538374120614",
  "kind": "def",
  "lexical_name": "IndGroupInst.brecOn",
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
  "slug": "indgroupinst-brecon--ba7c0227cb4c3063eb4cae03",
  "source": {
    "blob": "b3a10022dd1b30116e659005f41f9cdf84e29044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantd4bb6f10ddca81ca05de4c37398c1d84c8b5daebf2cd4b63cd29dfef017bce7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba7c0227cb4c3063eb4cae03f7f2cb40685e79de17ca9e4ce1289c59405b0815",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantd4bb6f10ddca81ca05de4c37398c1d84c8b5daebf2cd4b63cd29dfef017bce7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0b0848fd2e226d53997d39c5ebc7a48de8ac55bbe1d51bee0d2538374120614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def IndGroupInst.brecOn (group : IndGroupInst) (lvl : Level) (idx : Nat) : Expr :=
  let n := group.brecOnName idx
  let us := lvl :: group.levels
  mkAppN (.const n us) group.params

/--
Figures out the nested type formers of an inductive group, with parameters instantiated
and indices still forall-abstracted.

For example given a nested inductive
```
inductive Tree α where | node : α → Vector (Tree α) n → Tree α
```
(where `n` is an index of `Vector`) and the instantiation `Tree Int` it will return
```
#[(n : Nat) → Vector (Tree Int) n]
```

-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantd4bb6f10ddca81ca05de4c37398c1d84c8b5daebf2cd4b63cd29dfef017bce7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndGroupInfo/Variantd4bb6f10ddca81ca05de4c37398c1d84c8b5daebf2cd4b63cd29dfef017bce7f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a10022dd1b30116e659005f41f9cdf84e29044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
