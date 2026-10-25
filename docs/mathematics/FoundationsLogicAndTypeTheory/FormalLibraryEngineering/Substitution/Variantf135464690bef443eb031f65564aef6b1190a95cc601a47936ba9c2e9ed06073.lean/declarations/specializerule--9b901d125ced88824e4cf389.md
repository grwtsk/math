# specializeRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:107bd1b86807b45ef9f4240263ee9fd7d432f3694153937b9d49e5404f37e7fe",
  "kind": "def",
  "lexical_name": "specializeRule",
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
  "slug": "specializerule--9b901d125ced88824e4cf389",
  "source": {
    "blob": "3888570c4a23e933b0e986fc13f2e4724fbd1830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b901d125ced88824e4cf3891afce0fdeb01db9027c8ea9d7a6c485ec773639d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:107bd1b86807b45ef9f4240263ee9fd7d432f3694153937b9d49e5404f37e7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def specializeRule (rule : Expr) (subst : Substitution) : MetaM Expr :=
  withNewMCtxDepth do
    let lmvarIds := collectLevelMVars {} (← instantiateMVars rule) |>.result
    for h : i in [:lmvarIds.size] do
      if let some l := subst.findLevel? ⟨i⟩ then
        assignLevelMVar lmvarIds[i] l
    forallTelescopeReducing (← inferType rule) λ fvarIds _ => do
      let mut args := Array.mkEmpty fvarIds.size
      let mut remainingFVarIds := Array.mkEmpty fvarIds.size
      for h : i in [:fvarIds.size] do
        if let some inst := subst.find? ⟨i⟩ then
          args := args.push $ some inst
        else
          let fvarId := fvarIds[i]
          args := args.push $ some fvarId
          remainingFVarIds := remainingFVarIds.push fvarId
      let result ← mkLambdaFVars remainingFVarIds (← mkAppOptM' rule args)
      return result

end Substitution

/-- Open the type of a rule `e`. If a substitution `σ` is given, this function
acts like `Substitution.openRuleType σ`. Otherwise it acts like
`forallMetaTelescope`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3888570c4a23e933b0e986fc13f2e4724fbd1830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
