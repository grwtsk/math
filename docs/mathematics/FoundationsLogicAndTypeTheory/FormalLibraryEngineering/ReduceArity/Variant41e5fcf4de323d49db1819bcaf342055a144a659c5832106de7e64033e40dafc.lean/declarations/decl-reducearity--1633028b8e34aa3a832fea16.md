# Decl.reduceArity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ae1f88e179334044cb6f16118f6071c2fdfb7d7772e39e3849aed6b39506bff",
  "kind": "def",
  "lexical_name": "Decl.reduceArity",
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
  "slug": "decl-reducearity--1633028b8e34aa3a832fea16",
  "source": {
    "blob": "6f2fed14d03a3fc54f5359b2b2d80a715d337dbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReduceArity/Variant41e5fcf4de323d49db1819bcaf342055a144a659c5832106de7e64033e40dafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1633028b8e34aa3a832fea16b2ba8afc07a4f8e06d19a61a2f3f678fa5e3e234",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReduceArity/Variant41e5fcf4de323d49db1819bcaf342055a144a659c5832106de7e64033e40dafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ae1f88e179334044cb6f16118f6071c2fdfb7d7772e39e3849aed6b39506bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Decl.reduceArity (decl : Decl .pure) : CompilerM (Array (Decl .pure)) := do
  match decl.value with
  | .code code =>
    let used ← collectUsedParams decl
    if used.size == decl.params.size || used.size == 0 then
      -- Do nothing if all params were used, or if no params were used. In the latter case,
      -- this would promote the decl to a constant, which could execute unreachable code.
      return #[decl]
    else
      trace[Compiler.reduceArity] "{decl.name}, used params: {used.toList.map mkFVar}"
      let mask   := decl.params.map fun param => used.contains param.fvarId
      let auxName   := decl.name ++ `_redArg
      let mkAuxDecl : CompilerM (Decl .pure) := do
        let params := decl.params.filter fun param => used.contains param.fvarId
        let value  ← decl.value.mapCodeM reduce |>.run { declName := decl.name, auxDeclName := auxName, paramMask := mask }
        let type ← code.inferType
        let type ← mkForallParams params type
        let auxDecl := { decl with name := auxName, levelParams := [], type, params, value }
        auxDecl.saveMono
        return auxDecl
      let updateDecl : InternalizeM .pure (Decl .pure) := do
        let params ← decl.params.mapM internalizeParam
        let mut args := #[]
        for used in mask, param in params do
          if used then
            args := args.push param.toArg
        let letDecl ← mkAuxLetDecl (.const auxName [] args)
        let value := .code (.let letDecl (.return letDecl.fvarId))
        let decl := { decl with params, value, inlineAttr? := some .inline, recursive := false }
        decl.saveMono
        return decl
      let unusedParams := decl.params.filter fun param => !used.contains param.fvarId
      let auxDecl ← mkAuxDecl
      let decl ← updateDecl |>.run' {}
      eraseParams unusedParams
      return #[auxDecl, decl]
  | .extern .. => return #[decl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReduceArity/Variant41e5fcf4de323d49db1819bcaf342055a144a659c5832106de7e64033e40dafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReduceArity/Variant41e5fcf4de323d49db1819bcaf342055a144a659c5832106de7e64033e40dafc.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f2fed14d03a3fc54f5359b2b2d80a715d337dbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
