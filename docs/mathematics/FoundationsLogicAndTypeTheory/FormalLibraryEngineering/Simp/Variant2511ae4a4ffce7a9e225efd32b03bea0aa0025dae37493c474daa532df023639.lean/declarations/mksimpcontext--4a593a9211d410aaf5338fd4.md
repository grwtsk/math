# mkSimpContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91617798a29f04cf9a8da84f213098e118fcec2673f8a5ae690c5af4a3ac0394",
  "kind": "def",
  "lexical_name": "mkSimpContext",
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
  "slug": "mksimpcontext--4a593a9211d410aaf5338fd4",
  "source": {
    "blob": "cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 554,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a593a9211d410aaf5338fd45468f368b4475719d64d415c557391d2ff3d51a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91617798a29f04cf9a8da84f213098e118fcec2673f8a5ae690c5af4a3ac0394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSimpContext (stx : Syntax) (eraseLocal : Bool) (kind := SimpKind.simp)
    (ignoreStarArg : Bool := false) (simpTheorems : CoreM SimpTheorems := getSimpTheorems) :
    TacticM MkSimpContextResult := do
  if !stx[2].isNone then
    if kind == SimpKind.simpAll then
      throwError "Tactic `simp_all` does not support the `discharger` option"
    if kind == SimpKind.dsimp then
      throwError "Tactic `dsimp` does not support the `discharger' option"
  let dischargeWrapper ← mkDischargeWrapper stx[2]
  let simpOnly := !stx[simpOnlyPos].isNone
  let mut simpTheorems ← if simpOnly then
    simpOnlyBuiltins.foldlM (·.addConst ·) ({} : SimpTheorems)
  else
    simpTheorems
  let simprocs ← if simpOnly then pure {} else Simp.getSimprocs
  let congrTheorems ← getSimpCongrTheorems
  let { config, userConfig } ← elabSimpConfig stx[1] (kind := kind)
  -- Add local definitions if +locals is enabled
  if config.locals then
    simpTheorems ← elabSimpLocals simpTheorems kind
  let ctx ← Simp.mkContext
     (config := config)
     (userConfig := userConfig)
     (simpTheorems := #[simpTheorems])
     congrTheorems
  let r ← elabSimpArgs stx[4] (eraseLocal := eraseLocal) (kind := kind) (simprocs := #[simprocs]) (ignoreStarArg := ignoreStarArg) ctx
  return { r with dischargeWrapper }

/--
Runs the given action.
If it throws a maxRecDepth exception (nested or not), run the loop checking.
If it does not throw, run the loop checking only if explicitly enabled.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
