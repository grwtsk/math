# ControlStack.exceptT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eec9a24fcf47460c761738a1678bd33a88b48ae425b9d6be19369c4deed6b7f",
  "kind": "def",
  "lexical_name": "ControlStack.exceptT",
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
  "slug": "controlstack-exceptt--af5e3890ddf5a5a1b99a6991",
  "source": {
    "blob": "d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af5e3890ddf5a5a1b99a6991b5c70a6e63b667c713d56ab362ea889929d895c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eec9a24fcf47460c761738a1678bd33a88b48ae425b9d6be19369c4deed6b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ControlStack.exceptT (baseMonadInfo : MonadInfo) (exceptTWrapper casesOnWrapper : Name)
    (getCont : DoElabM ReturnCont) (ε : Expr) (base : ControlStack) : ControlStack where
  description _ := m!"ExceptT ({ε}) over {base.description ()}"
  m := return mkApp2 (mkConst exceptTWrapper [baseMonadInfo.u, baseMonadInfo.v]) ε (← base.m)
  stM α := stM α >>= base.stM
  runInBase e := do
    -- `e : ExceptT ε m α`. Return `e`, which is defeq to `ExceptT.run e`.
    -- See also `instMonadControlExceptTOfMonad.liftWith`.
    base.runInBase (← mkAppM ``ExceptT.run #[e])
  restoreCont dec := do
    -- Wrap `dec` such that the result type is `Except ε dec.resultType` by unpacking the exception,
    -- calling `dec.k` in the success case. See also `instMonadControlExceptTOfMonad.restoreM`.
    let resultName ← mkFreshUserName `e
    let k := do
      let e ← getFVarFromUserName resultName
      let outerCont ← getCont
      let kexit ← withLocalDeclD (← mkFreshUserName `r) outerCont.resultType fun r => do
        mkLambdaFVars #[r] (← outerCont.k r)
      let (ksuccess, β) ← withLocalDeclD dec.resultName dec.resultType fun r => do
        let body ← dec.k
        let ksuccess ← mkLambdaFVars #[r] body
        let β ← inferType body
        return (ksuccess, β)
      return mkApp6 (mkConst casesOnWrapper [baseMonadInfo.u, baseMonadInfo.v]) ε dec.resultType β e kexit ksuccess
    let resultType ← stM dec.resultType
    base.restoreCont { resultName, resultType, k }
where
  -- Like `σ`, we need to refine `ε` because it is the early return value.
  stM α := return mkApp2 (mkConst ``Except [baseMonadInfo.u, baseMonadInfo.u]) (← getCont).resultType α

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
