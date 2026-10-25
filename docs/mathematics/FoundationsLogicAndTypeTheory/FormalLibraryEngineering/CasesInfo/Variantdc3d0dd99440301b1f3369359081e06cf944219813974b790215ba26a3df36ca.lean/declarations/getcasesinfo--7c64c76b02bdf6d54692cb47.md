# getCasesInfo?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cbd03f49752a9666f005f7d8508d76b7c53dab7a33778e057973a4e93ec90ff",
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
  "slug": "getcasesinfo--7c64c76b02bdf6d54692cb47",
  "source": {
    "blob": "25b43bce5f764bfb528543c92f21502f1d34207b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variantdc3d0dd99440301b1f3369359081e06cf944219813974b790215ba26a3df36ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c64c76b02bdf6d54692cb472e2751cc0f445ae10a819c986b7fc366b853b379",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variantdc3d0dd99440301b1f3369359081e06cf944219813974b790215ba26a3df36ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cbd03f49752a9666f005f7d8508d76b7c53dab7a33778e057973a4e93ec90ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–95.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variantdc3d0dd99440301b1f3369359081e06cf944219813974b790215ba26a3df36ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesInfo/Variantdc3d0dd99440301b1f3369359081e06cf944219813974b790215ba26a3df36ca.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b43bce5f764bfb528543c92f21502f1d34207b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
