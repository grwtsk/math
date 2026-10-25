# Lean.Meta.synthSubsingletonInst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dfab7c577e8d303100eafa37d41e7ca6cf69dc5a46bf91c2cbe852aeae545d9",
  "kind": "def",
  "lexical_name": "Lean.Meta.synthSubsingletonInst",
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
  "slug": "lean-meta-synthsubsingletoninst--90a093707ce76f1d25ef0e20",
  "source": {
    "blob": "c5d461075f406acd1e452bde439c00ac00d6ef70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90a093707ce76f1d25ef0e20b1701c74f03a47a8cf47285a02c078dd82be4fe4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dfab7c577e8d303100eafa37d41e7ca6cf69dc5a46bf91c2cbe852aeae545d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Meta.synthSubsingletonInst (ty : Expr)
    (insts : Array (Term × AbstractMVarsResult) := #[]) :
    MetaM Expr := do
  -- Synthesize a subsingleton instance. The new metacontext depth ensures that universe
  -- level metavariables are not specialized.
  withNewMCtxDepth do
    -- We need to process the local instances *under* `withNewMCtxDepth` since they might
    -- have universe parameters, which we need to let `synthInstance` assign to.
    let (insts', uss) ← Array.unzip <$> insts.mapM fun inst => do
      let us ← inst.2.paramNames.mapM fun _ => mkFreshLevelMVar
      pure <| (inst.2.expr.instantiateLevelParamsArray inst.2.paramNames us, us)
    withLocalDeclsD (insts'.map fun e => (`inst, fun _ => inferType e)) fun fvars => do
      withNewLocalInstances fvars 0 do
        let res ← instantiateMVars <| ← synthInstance <| ← mkSubsingleton ty
        let res' := res.abstract fvars
        for i in [0 : fvars.size] do
          if res'.hasLooseBVar (fvars.size - i - 1) then
            uss[i]!.forM fun u => do
              let u ← instantiateLevelMVars u
              if u.isMVar then
                -- This shouldn't happen, `synthInstance` should solve for all level metavariables
                throwErrorAt insts[i]!.1 "\
                  Instance provided to 'subsingleton' has unassigned universe level metavariable\
                  {indentD insts'[i]!}"
          else
            -- Unused local instance.
            -- Not logging a warning since this might be `... <;> subsingleton [...]`
            pure ()
        instantiateMVars <| res'.instantiateRev insts'

/--
Closes the goal `g` whose target is an `Eq` or `HEq` by appealing to the fact that the types
are subsingletons.
Fails if it cannot find a way to do this.

Has support for showing `BEq` instances are equal if they have `LawfulBEq` instances.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d461075f406acd1e452bde439c00ac00d6ef70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
