# inductiveGroups

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:137f59706790aa3e5b7cf6e8e4d9fb6008197c3f034e5f07efdc07304dc0c597",
  "kind": "def",
  "lexical_name": "inductiveGroups",
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
  "slug": "inductivegroups--4a35a8e192bb793c6e1369a9",
  "source": {
    "blob": "f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a35a8e192bb793c6e1369a9bf8ca7fb8070191827c03f45e1b19d240ff3bd2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:137f59706790aa3e5b7cf6e8e4d9fb6008197c3f034e5f07efdc07304dc0c597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def inductiveGroups (recArgInfos : Array RecArgInfo) : MetaM (Array IndGroupInst) :=
  dedup IndGroupInst.isDefEq (recArgInfos.map (·.indGroupInst))

/--
Filters the `recArgInfos` by those that describe an argument that's part of the recursive inductive
group `group`.

Because of nested inductives this function has the ability to change the `recArgInfo`.
Consider
```
inductive Tree where | node : List Tree → Tree
```
then when we look for arguments whose type is part of the group `Tree`, we want to also consider
the argument of type `List Tree`, even though that argument’s `RecArgInfo` refers to initially to
`List`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
