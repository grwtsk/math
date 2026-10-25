# visit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43f0e317e0e6fe177c1ec177aa684e3a8d2e124f85282eb01827e425dc25e826",
  "kind": "def",
  "lexical_name": "visit",
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
  "slug": "visit--b2c6e34ade5266df3fbad6c9",
  "source": {
    "blob": "b2adaae665f722724c4f30b3aa91e0a49542d223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variantb56fdf81e04b987b2d3140187e70f60da2b4a97b0a4f3472c2f1ec19515a0b0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2c6e34ade5266df3fbad6c98b7dff3f53724815cc2a8d7245d231a18ecb3e36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variantb56fdf81e04b987b2d3140187e70f60da2b4a97b0a4f3472c2f1ec19515a0b0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43f0e317e0e6fe177c1ec177aa684e3a8d2e124f85282eb01827e425dc25e826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def visit (n : Name) : StateM NameSet Unit := do
  if (← get).contains n then
    modify (·.erase n)
    let rec visitExpr (e : Expr) : StateM NameSet Unit := e.getUsedConstants.forM visit
    match env.find? n with
    | some (ConstantInfo.axiomInfo v)  => visitExpr v.type
    | some (ConstantInfo.defnInfo v)   => visitExpr v.type *> visitExpr v.value
    | some (ConstantInfo.thmInfo v)    => visitExpr v.type *> visitExpr v.value
    | some (ConstantInfo.opaqueInfo v) => visitExpr v.type *> visitExpr v.value
    | some (ConstantInfo.quotInfo _)   => pure ()
    | some (ConstantInfo.ctorInfo v)   => visitExpr v.type
    | some (ConstantInfo.recInfo v)    => visitExpr v.type
    | some (ConstantInfo.inductInfo v) => visitExpr v.type *> v.ctors.forM visit
    | none                             => pure ()

/--
`#show_unused decl1 decl2 ..` will highlight every theorem or definition in the current file
not involved in the definition of declarations `decl1`, `decl2`, etc. The result is shown
both in the message on `#show_unused`, as well as on the declarations themselves.
```
def foo := 1
def baz := 2
def bar := foo
#show_unused bar -- highlights `baz`
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variantb56fdf81e04b987b2d3140187e70f60da2b4a97b0a4f3472c2f1ec19515a0b0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variantb56fdf81e04b987b2d3140187e70f60da2b4a97b0a4f3472c2f1ec19515a0b0a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2adaae665f722724c4f30b3aa91e0a49542d223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
