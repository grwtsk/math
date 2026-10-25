# specializeApp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2212e71613a79c74754852b1c3d82802d0c1dc49ef7203ea7b01d90d4b6d8290",
  "kind": "def",
  "lexical_name": "specializeApp?",
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
  "slug": "specializeapp--02fa00c0859edb3ff7da2615",
  "source": {
    "blob": "744889b1f1b063ca4b83b2d59f4bbd45a923754c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 406,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02fa00c0859edb3ff7da2615e4a606737da00aa4b1e244d52da8574a645b562b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2212e71613a79c74754852b1c3d82802d0c1dc49ef7203ea7b01d90d4b6d8290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def specializeApp? (e : LetValue .pure) : SpecializeM (Option (LetValue .pure)) := do
    let .const declName us args := e | return none
    if args.isEmpty then return none
    if (← isInstanceReducible declName) then return none
    let some specEntry ← getSpecEntry? declName | return none
    unless (← shouldSpecialize specEntry args) do return none
    let some ⟨.pure, decl⟩ ← getDecl? declName | return none
    let .code _ := decl.value | return none
    trace[Compiler.specialize.candidate] "{e.toExpr}, {specEntry}"
    let paramsInfo := specEntry.paramsInfo
    let (argMask, params, decls) ← Collector.collect paramsInfo args
    let keyBody := .const declName us (argMask.filterMap id)
    let (key, levelParamsNew) ← mkKey params decls keyBody
    trace[Compiler.specialize.candidate] "key: {key}"
    assert! !key.hasLooseBVars
    assert! !key.hasFVar
    let usNew := levelParamsNew.map mkLevelParam
    let argsNew := params.map (.fvar ·.fvarId) ++ getRemainingArgs paramsInfo args
    if let some declName ← findSpecCache? key then
      trace[Compiler.specialize.step] "cached: {declName}"
      return some (.const declName usNew argsNew)
    else
      let specDecl ← mkSpecDecl decl us argMask params decls levelParamsNew
      let parentMask ← argsNew.mapM
        fun
          | .type .. | .erased => return false
          | .fvar fvar => do
            if let some param ← findParam? (pu := .pure) fvar then
              /-
              For now we only allow recursive specialization on non class parameters, reason:
              We can encounter situations where we repeatedly re-abstract over type classes
              recursively and would end up in a loop because of that.
              -/
              return (param.type matches .forallE ..) && !(← isArrowClass? param.type).isSome
            else
              return false
      cacheSpec key specDecl.name
      specDecl.saveBase
      let specDecl ← specDecl.etaExpand
      specDecl.saveBase
      let specDecl ← specDecl.simp {}
      let specDecl ← specDecl.simp { etaPoly := true, inlinePartial := true, implementedBy := true }
      trace[Compiler.specialize.step] "new: {specDecl.name}: {← ppDecl specDecl}"
      modify fun s => {
        s with
          workingDecls := s.workingDecls.push specDecl,
          parentMasks := s.parentMasks.insert specDecl.name parentMask
      }
      return some (.const specDecl.name usNew argsNew)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744889b1f1b063ca4b83b2d59f4bbd45a923754c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
