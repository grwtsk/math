# apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:913cf5894e48281b1f567114ffc3b4a65fc55de5f45c0ed6ba58228a89d78053",
  "kind": "def",
  "lexical_name": "apply",
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
  "slug": "apply--d6a99188fc9deccabcd0c536",
  "source": {
    "blob": "dc2458c119a786ffaaf431b2b05474b66258ab27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6a99188fc9deccabcd0c5361351864971f40127af0bee21851573cdf540477b",
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

Occurrence: `declaration:913cf5894e48281b1f567114ffc3b4a65fc55de5f45c0ed6ba58228a89d78053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def apply (decls : Array (Decl .impure)) (map : ParamMap) : CompilerM (Array (Decl .impure)) :=
  decls.mapM fun decl => do
    match decl.value with
    | .code code =>
      let code ← go decl.name code
      let newParams ← updateParams decl.params map.map[ParamMap.Key.decl decl.name]!
      return { decl with value := .code code, params := newParams }
    | _ => return decl
where
  updateParams (ps : Array (Param .impure)) (borrows : Array (Param .impure)) :
      CompilerM (Array (Param .impure)) := do
    ps.iterM (m := CompilerM)
      |>.zip (borrows.iterM _)
      |>.mapM (fun (p, b) => p.updateBorrow b.borrow)
      |>.toArray

  go (declName : Name) (code : Code .impure) : CompilerM (Code .impure) := do
    match code with
    | .jp decl k =>
      let ps ← updateParams decl.params map.map[ParamMap.Key.jp declName decl.fvarId]!
      let decl ← decl.update decl.type ps (← go declName decl.value)
      return code.updateFun! decl (← go declName k)
    | .cases cs => return code.updateAlts! <| ← cs.alts.mapMonoM (·.mapCodeM (go declName))
    | .let _ k | .uset _ _ _ k _ | .sset _ _ _ _ _ k _ => return code.updateCont! (← go declName k)
    | .return .. | .jmp .. | .unreach .. => return code
    | .inc .. | .dec .. | .setTag .. | .oset .. | .del .. => unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2458c119a786ffaaf431b2b05474b66258ab27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
