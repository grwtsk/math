# getDeclBodyInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcbfe87638f396faa7b3bf135f528158d6fc04015cc6dcbce39a294989a17401",
  "kind": "def",
  "lexical_name": "getDeclBodyInfos",
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
  "slug": "getdeclbodyinfos--0ef5e42d5efff23934d562c1",
  "source": {
    "blob": "4ed9e0797f6ee5e716ca7b9c7171b2134cbe8c34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ef5e42d5efff23934d562c1fb76767941a2e0e0be7ae51d23ae6668ef12ca55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcbfe87638f396faa7b3bf135f528158d6fc04015cc6dcbce39a294989a17401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getDeclBodyInfos (t : InfoTree) : List (Syntax × ContextInfo × Info) :=
  t.foldInfoTree (init := []) fun ctx t acc =>
    match t with
    | .node (.ofCustomInfo i) body => Id.run do
      if i.value.typeName == ``Lean.Elab.Term.BodyInfo then
        if h : 0 < body.size then
          -- See through `.context`s instead of just matching on `.node`:
          let result? := body[0].getHighestInfo? ctx
          if let some result := result? then
            return (i.stx, result) :: acc
      return acc
    | _ => acc

/--
Get the declarations elaborated in the infotree `t` which are theorems according to the
environment. This includes e.g. `instance`s of `Prop` classes in addition to declarations declared
using the keyword `theorem` directly.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Variantee45ebeb7b967d58af1573cfceefc32da4e6cc6bf7601e4e0f6c5a027d7374df.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ed9e0797f6ee5e716ca7b9c7171b2134cbe8c34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
