# visitCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fcc4a321c83b59c92cb88af7ecd5f035ead0d53ba42980665dfce20aaabf5c7",
  "kind": "def",
  "lexical_name": "visitCode",
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
  "slug": "visitcode--9a45b004c6c8ddfb08bc39aa",
  "source": {
    "blob": "f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a45b004c6c8ddfb08bc39aa25280b5c71fe3cc4810575e2a0d8de39aad28dcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fcc4a321c83b59c92cb88af7ecd5f035ead0d53ba42980665dfce20aaabf5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def visitCode (code : Code .pure) : LiftM (Code .pure) := do
    match code with
    | .let decl k =>
      let k ← withFVar decl.fvarId <| visitCode k
      return code.updateLet! decl k
    | .fun decl k =>
      let decl ← visitFunDecl decl
      if (← shouldLift decl) then
        let declNew ← do
          if let some letDecl ← etaContractibleDecl? decl then
            pure letDecl
          else
            let scope ← getScope
            let (_, params, _) ← Closure.run (inScope := scope.contains) <| Closure.collectFunDecl decl
            mkAuxDecl params decl
        let k ← withFVar declNew.fvarId <| visitCode k
        return .let declNew k
      else
        let k ← withFVar decl.fvarId <| visitCode k
        return code.updateFun! decl k
    | .jp decl k =>
      let decl ← visitFunDecl decl
      let k ← withFVar decl.fvarId <| visitCode k
      return code.updateFun! decl k
    | .cases c =>
      let alts ← c.alts.mapMonoM fun alt =>
        match alt with
        | .default k => return alt.updateCode (← visitCode k)
        | .alt _ ps k => withParams ps do return alt.updateCode (← visitCode k)
      return code.updateAlts! alts
    | .unreach .. | .jmp .. | .return .. => return code
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
