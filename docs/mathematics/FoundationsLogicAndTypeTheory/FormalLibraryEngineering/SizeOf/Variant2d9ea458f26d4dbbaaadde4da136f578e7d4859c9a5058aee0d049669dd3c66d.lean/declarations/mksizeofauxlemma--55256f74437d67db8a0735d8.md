# mkSizeOfAuxLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d930bcacb2afdeb6d78b8d3f9110392c188b7287586663e2bc2099f28f5700c",
  "kind": "def",
  "lexical_name": "mkSizeOfAuxLemma",
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
  "slug": "mksizeofauxlemma--55256f74437d67db8a0735d8",
  "source": {
    "blob": "0faca0128fc0bcfc46156f3d678ddc6618e6ec7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55256f74437d67db8a0735d841418a3419a42fb35e31961e04c80a3a7ebfc023",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d930bcacb2afdeb6d78b8d3f9110392c188b7287586663e2bc2099f28f5700c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def mkSizeOfAuxLemma (lhs rhs : Expr) : M Expr := withIncRecDepth do
    trace[Meta.sizeOf.aux] "{lhs} =?= {rhs}"
    match lhs.getAppFn.const? with
    | none => throwFailed
    | some (fName, us) =>
      let thmLevelParams ← us.mapM fun
        | Level.param n => return n
        | _ => throwFailed
      let thmName  := fName.appendAfter "_eq"
      if (← getEnv).contains thmName then
        -- Auxiliary lemma has already been defined
        return mkAppN (mkConst thmName us) lhs.getAppArgs
      else
        -- Define auxiliary lemma
        -- First, generalize indices
        let x := lhs.appArg!
        let xType ← whnf (← inferType x)
        matchConstInduct xType.getAppFn (fun _ => throwFailed) fun info _ => do
          let params := xType.getAppArgs[*...info.numParams]
          forallTelescopeReducing (← inferType (mkAppN xType.getAppFn params)) fun indices _ => do
            let majorType := mkAppN (mkAppN xType.getAppFn params) indices
            withLocalDeclD `x majorType fun major => do
              let lhsArgs := lhs.getAppArgs
              let lhsArgsNew := lhsArgs[*...(lhsArgs.size - 1 - indices.size)] ++ indices ++ #[major]
              let lhsNew := mkAppN lhs.getAppFn lhsArgsNew
              let rhsNew ← mkAppM ``SizeOf.sizeOf #[major]
              let eq ← mkEq lhsNew rhsNew
              let thmParams := lhsArgsNew
              let thmType ← mkForallFVars thmParams eq
              let thmValue ← mkSizeOfAuxLemmaProof info lhsNew
              let thmValue ← mkLambdaFVars thmParams thmValue
              trace[Meta.sizeOf] "thmValue: {thmValue}"
              addDecl <| Declaration.thmDecl {
                name        := thmName
                levelParams := thmLevelParams
                type        := thmType
                value       := thmValue
              }
              return mkAppN (mkConst thmName us) lhs.getAppArgs

end

/-- Prove SizeOf spec lemma of the form `sizeOf <ctor-application> = 1 + sizeOf <field_1> + ... + sizeOf <field_n> -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0faca0128fc0bcfc46156f3d678ddc6618e6ec7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
