# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeArg.Variantbefa26929e3b94d01304228219b9aab7faae5eb215f2a3bd3bc088462a0249b8.Lean.MVarId.generalizeHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:668e787c0618f782a268e276aaa199cb941a6d41f784c83804bcf100ba080f40",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeArg.Variantbefa26929e3b94d01304228219b9aab7faae5eb215f2a3bd3bc088462a0249b8.Lean.MVarId.generalizeHyp",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-gener--495fdd2f2d3ff20cc626ac61",
  "source": {
    "blob": "34da288843a5e078f05a859547d6897e742092ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:495fdd2f2d3ff20cc626ac61a24f9f18c8d55f99a756378da9e2c8e126d87c5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:668e787c0618f782a268e276aaa199cb941a6d41f784c83804bcf100ba080f40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeArg.Variantbefa26929e3b94d01304228219b9aab7faae5eb215f2a3bd3bc088462a0249b8.Lean.MVarId.generalizeHyp (mvarId : MVarId) (args : Array GeneralizeArg) (hyps : Array FVarId := #[])
    (fvarSubst : FVarSubst := {}) (transparency := TransparencyMode.instances) : MetaM (FVarSubst × Array FVarId × MVarId) := do
  if hyps.isEmpty then
    -- trivial case
    return (fvarSubst, ← mvarId.generalize args transparency)
  let args ← args.mapM fun arg => return { arg with expr := ← instantiateMVars arg.expr }
  let hyps ← hyps.filterM fun h => do
    let type ← instantiateMVars (← h.getType)
    args.anyM fun arg => return (← withTransparency transparency <| kabstract type arg.expr).hasLooseBVars
  let (reverted, mvarId) ← mvarId.revert hyps true
  let (newVars, mvarId) ← mvarId.generalize args transparency
  let (reintros, mvarId) ← mvarId.introNP reverted.size
  let fvarSubst := Id.run do
    let mut subst : FVarSubst := fvarSubst
    for h in reverted, reintro in reintros do
      subst := subst.insert h (mkFVar reintro)
    pure subst
  return (fvarSubst, newVars, mvarId)

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34da288843a5e078f05a859547d6897e742092ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
