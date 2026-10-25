# evalInductionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ae6f58901f6413323b26ee8ef4ee8e912ec7d95a3b573b7980528f1be34a4ec",
  "kind": "def",
  "lexical_name": "evalInductionCore",
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
  "slug": "evalinductioncore--044349a64c94a948536e08c9",
  "source": {
    "blob": "e1ac382d587c03dd137dad0d3b17273cb7572b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1013,
    "line": 986,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:044349a64c94a948536e08c962ef2f33bc08ee602ac336688341513b7139e77f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ae6f58901f6413323b26ee8ef4ee8e912ec7d95a3b573b7980528f1be34a4ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 986–1013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalInductionCore (stx : Syntax) (elimInfo : ElimInfo) (targets : Array Expr)
    (toTag : Array (Ident × FVarId) := #[]) : TacticM Unit := do
  let mvarId ← getMainGoal
  -- save initial info before main goal is reassigned
  let mkInitInfo ← mkInitialTacticInfoForInduction stx
  let tag ← mvarId.getTag
  mvarId.withContext do
    checkInductionTargets targets
    let targetFVarIds := targets.map (·.fvarId!)
    let (generalized, mvarId) ← generalizeVars mvarId stx targets elimInfo.elimExpr
    mvarId.withContext do
      let result ← withRef stx[1] do -- use target position as reference
        ElimApp.mkElimApp elimInfo targets tag
      trace[Elab.induction] "elimApp: {result.elimApp}"
      ElimApp.setMotiveArg mvarId result.motive targetFVarIds result.complexArgs
      -- drill down into old and new syntax: allow reuse of an rhs only if everything before it is
      -- unchanged
      -- everything up to the alternatives must be unchanged for reuse
      Term.withNarrowedArgTacticReuse (stx := stx) (argIdx := inductionAltsPos stx) fun optInductionAlts => do
      checkForInductionWithNoAlts "induction" optInductionAlts
      withAltsOfOptInductionAlts optInductionAlts fun alts? => do
        let optPreTac := getOptPreTacOfOptInductionAlts optInductionAlts
        mvarId.assign result.elimApp
        ElimApp.evalAlts elimInfo result.alts optPreTac alts? mkInitInfo stx[0]
          (generalized := generalized) (toClear := targetFVarIds) (toTag := toTag)
        appendGoals result.others.toList

@[builtin_tactic Lean.Parser.Tactic.induction, builtin_incremental]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean#L986).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1ac382d587c03dd137dad0d3b17273cb7572b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
