# elimDead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d62c49edf6f76b6f19237dcdac5277683a59b10255deff91b84858f7da8d140",
  "kind": "def",
  "lexical_name": "elimDead",
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
  "slug": "elimdead--4c5e857f6e7c216dacfbc8b6",
  "source": {
    "blob": "8b62986b401b14d81366e3bbe3e2275487d609cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 617,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c5e857f6e7c216dacfbc8b64450ce0648d232bd2420c345da751e70939d3fd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d62c49edf6f76b6f19237dcdac5277683a59b10255deff91b84858f7da8d140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elimDead (assignment : Assignment) (decl : Decl .pure) : CompilerM (Decl .pure) := do
  trace[Compiler.elimDeadBranches] s!"Eliminating {decl.name} with {repr (← assignment.toArray |>.mapM (fun (name, val) => do return (toString (← getBinderName name), val)))}"
  return { decl with value := (← decl.value.mapCodeM go) }
where
  go (code : Code .pure) : CompilerM (Code .pure) := do
    match code with
    | .let decl k =>
      return code.updateLet! decl (← go k)
    | .jp decl k | .fun decl k =>
      return code.updateFun! (← decl.updateValue (← go decl.value)) (← go k)
    | .cases cs =>
      let discrVal := assignment.getD cs.discr .bot
      let processAlt typ alt := do
        match alt with
        | .alt ctor args body =>
          if discrVal.containsCtor ctor then
            let constantInfos ← args.filterMapM fun param => do
              if let some val := assignment[param.fvarId]? then
                if let some literal ← val.getLiteral then
                  return some (param, literal)
              return none
            if constantInfos.size != 0 then
              let (body, subst) ← constantInfos.foldlM (init := (← go body, {})) fun (body, subst) (param, decls, var) => do
                return (attachCodeDecls decls body, subst.insert param.fvarId (.fvar var))
              let body ← replaceFVars body subst false
              return alt.updateCode body
            else
              return alt.updateCode (← go body)
          else
            trace[Compiler.elimDeadBranches] s!"Threw away cases {← getBinderName cs.discr} branch {ctor}"
            eraseCode alt.getCode
            return alt.updateCode <| .unreach typ
        | .default body => return alt.updateCode (← go body)
      return code.updateAlts! (← cs.alts.mapMonoM <| processAlt cs.resultType)
    | .jmp .. | .return .. | .unreach .. => return code

end UnreachableBranches

open UnreachableBranches in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b62986b401b14d81366e3bbe3e2275487d609cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
