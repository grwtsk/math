# mkInitParamMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9d735b01da28bb360595f400e2be30d65b6d67145baff4ff2c3517260979d25",
  "kind": "def",
  "lexical_name": "mkInitParamMap",
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
  "slug": "mkinitparammap--2b307ceef36ebfe0a82bb48c",
  "source": {
    "blob": "dc2458c119a786ffaaf431b2b05474b66258ab27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b307ceef36ebfe0a82bb48ca469942e1d028d0492138ee7c730c9cbcbe3ea11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9d735b01da28bb360595f400e2be30d65b6d67145baff4ff2c3517260979d25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkInitParamMap (decls : Array (Decl .impure)) : CompilerM ParamMap := do
  let (_, map) ← go decls |>.run {}
  return map
where
  go (decls : Array (Decl .impure)) : InitM Unit :=
    decls.forM fun decl => do
      match decl.value with
      | .code code =>
        let exported := isExport (← getEnv) decl.name
        modify fun m =>
          { m with
            map := m.map.insert (.decl decl.name) (initParamsIfNotExported exported decl.params),
            annotatedBorrows := decl.params.foldl (init := m.annotatedBorrows) fun acc p =>
              if p.borrow then acc.insert p.fvarId else acc
          }
        goCode decl.name code
      | .extern .. => return ()

  initParams (ps : Array (Param .impure)) : Array (Param .impure) :=
    ps.map fun p => { p with borrow := p.type.isPossibleRef }

  initParamsIfNotExported (exported : Bool) (ps : Array (Param .impure)) : Array (Param .impure) :=
    if exported then
      ps.map ({ · with borrow := false })
    else
      initParams ps

  goCode (declName : Name) (code : Code .impure) : InitM Unit := do
    match code with
    | .jp decl k =>
      modify fun m =>
        { m with
          map := m.map.insert (.jp declName decl.fvarId) (initParams decl.params),
          annotatedBorrows := decl.params.foldl (init := m.annotatedBorrows) fun acc p =>
            if p.borrow then acc.insert p.fvarId else acc
        }
      goCode declName decl.value
      goCode declName k
    | .cases cs => cs.alts.forM (·.forCodeM (goCode declName))
    | .let _ k | .uset _ _ _ k _ | .sset _ _ _ _ _ k _ => goCode declName k
    | .return .. | .jmp .. | .unreach .. => return ()
    | .inc .. | .dec .. | .setTag .. | .del .. | .oset .. => unreachable!

/--
Apply the inferred borrow annotations from `map` to a SCC.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2458c119a786ffaaf431b2b05474b66258ab27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
