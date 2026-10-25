# getFrameProcFromDeclImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c2e3351b99ccc6d760ce86a48cbb27bf25b6061ba155742fe550a5ea40e3d12",
  "kind": "def",
  "lexical_name": "getFrameProcFromDeclImpl",
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
  "slug": "getframeprocfromdeclimpl--8d9a8f8447a30840bb4fc3db",
  "source": {
    "blob": "6f9e695b90637b6bbc85a6f3202bc0994a7a4639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProcAttr/Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d9a8f8447a30840bb4fc3db1fffa40929968cd88f60447adf3e3b0937b24c1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProcAttr/Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c2e3351b99ccc6d760ce86a48cbb27bf25b6061ba155742fe550a5ea40e3d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def getFrameProcFromDeclImpl (declName : Name) : ImportM FrameProc := do
  let ctx ← read
  match ctx.env.find? declName with
  | none => throw <| .userError s!"unknown constant '{declName}'"
  | some info =>
    unless info.type.isConstOf ``FrameProc do
      throw <| .userError s!"`{declName}` is not a `FrameProc`"
    IO.ofExcept <| ctx.env.evalConst FrameProc ctx.opts declName

/-- Recover the compiled `FrameProc` value of a `@[frameproc]`-annotated declaration. -/
@[implemented_by getFrameProcFromDeclImpl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProcAttr/Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProcAttr/Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f9e695b90637b6bbc85a6f3202bc0994a7a4639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
