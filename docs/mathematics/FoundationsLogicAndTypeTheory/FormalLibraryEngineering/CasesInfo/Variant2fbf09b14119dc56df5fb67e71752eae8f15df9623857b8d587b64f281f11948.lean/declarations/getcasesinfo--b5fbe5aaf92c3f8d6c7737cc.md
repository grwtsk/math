# getCasesInfo?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a92276979bd623a074d82aab902b280bc91846bcb8b51ff2f007ecf807b93033",
  "kind": "def",
  "lexical_name": "getCasesInfo?",
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
  "slug": "getcasesinfo--b5fbe5aaf92c3f8d6c7737cc",
  "source": {
    "blob": "c8003bfc98d5f90b8be0644e66458f8b197b0c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variant2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5fbe5aaf92c3f8d6c7737cc58b7526d4474574b64feade10d20c7c7e009b63a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variant2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a92276979bd623a074d82aab902b280bc91846bcb8b51ff2f007ecf807b93033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getCasesInfo? (declName : Name) : CoreM (Option CasesInfo) := do
  unless isCasesOnLike (← getEnv) declName do return none
  let info ← getConstVal declName
  MetaM.run' <|
    forallTelescope info.type fun xs r => do
      let arity := xs.size
      assert! r.isApp
      assert! r.appArg!.isFVar  -- major argument
      assert! r.getAppFn.isFVar -- motive
      let some discrPos := xs.idxOf? r.appArg! | unreachable!
      let some indName := (← inferType xs[discrPos]!).getAppFn.constName? | unreachable!
      -- We recognize the per-ctor elims side condition here
      let xsTys ← (xs.extract (discrPos+1)).mapM inferType
      let hasSideCondition : Bool := !xsTys.isEmpty && xsTys[0]!.getForallBody.getAppFn != r.getAppFn
      let altsRange := (discrPos + (if hasSideCondition then 2 else 1))...arity
      let altNumParams ← altsRange.toArray.mapM fun idx => do
        forallTelescope (xsTys[idx - discrPos - 1]!) fun ys mr => do
          assert! mr.isApp
          let motiveArg := mr.appArg!
          -- If the motive is applied to the major premise...
          if motiveArg.isFVar then
            -- Then this is the catch-all case of a sparse match
            assert! motiveArg == xs[discrPos]!
            return .default ys.size
          else
            -- Else we have a normal case
            let some ctorName := motiveArg.getAppFn.constName? | unreachable!
            let ctorVal ← getConstInfoCtor ctorName
            return .ctor ctorName ctorVal.numFields
      return some { declName, indName, arity, discrPos, altsRange, altNumParams }

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variant2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variant2fbf09b14119dc56df5fb67e71752eae8f15df9623857b8d587b64f281f11948.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8003bfc98d5f90b8be0644e66458f8b197b0c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
