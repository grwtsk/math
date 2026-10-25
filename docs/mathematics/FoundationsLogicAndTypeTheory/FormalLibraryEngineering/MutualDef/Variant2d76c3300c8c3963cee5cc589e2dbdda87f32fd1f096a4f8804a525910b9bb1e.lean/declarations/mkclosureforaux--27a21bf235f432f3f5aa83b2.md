# mkClosureForAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1316db62730b28dd15c056ebfc117a1e93211cae3aaed2a4fd82e39f2b443df",
  "kind": "def",
  "lexical_name": "mkClosureForAux",
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
  "slug": "mkclosureforaux--27a21bf235f432f3f5aa83b2",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 960,
    "line": 929,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27a21bf235f432f3f5aa83b2b2d520e8d9e5ecd5bc3a44d174796dca62646cfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1316db62730b28dd15c056ebfc117a1e93211cae3aaed2a4fd82e39f2b443df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 929–960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkClosureForAux (toProcess : Array FVarId) : StateRefT ClosureState TermElabM Unit := do
  let lctx ← getLCtx
  match pickMaxFVar? lctx toProcess with
  | none        => return ()
  | some fvarId =>
    trace[Elab.definition.mkClosure] "toProcess: {toProcess.map mkFVar}, maxVar: {mkFVar fvarId}"
    let toProcess := toProcess.erase fvarId
    let localDecl ← fvarId.getDecl
    match localDecl with
    | .cdecl _ _ userName type bi k =>
      let toProcess ← pushLocalDecl toProcess fvarId userName type bi k
      mkClosureForAux toProcess
    | .ldecl _ _ userName type val nondep k =>
      let zetaDeltaFVarIds ← getZetaDeltaFVarIds
      -- Note: If `nondep` is true then `zetaDeltaFVarIds.contains fvarId` must be false.
      if nondep || !zetaDeltaFVarIds.contains fvarId then
        /- Nondependent let-decl. See comment at src/Lean/Meta/Closure.lean -/
        let toProcess ← pushLocalDecl toProcess fvarId userName type .default k
        mkClosureForAux toProcess
      else
        /- Dependent let-decl. -/
        let type ← preprocess type
        let val  ← preprocess val
        modify fun s => { s with
          newLetDecls   := s.newLetDecls.push <| .ldecl default fvarId userName type val false k,
          /- We don't want to interleave let and lambda declarations in our closure. So, we expand any occurrences of fvarId
             at `newLocalDecls` and `localDecls` -/
          newLocalDecls := s.newLocalDecls.map (·.replaceFVarId fvarId val)
          localDecls := s.localDecls.map (·.replaceFVarId fvarId val)
        }
        mkClosureForAux (pushNewVars toProcess (collectFVars (collectFVars {} type) val))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
