# ControlStack.optionT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b680f0535813b4011133a1b107289344acd347a88003c7ae5e6a7576a1127e0c",
  "kind": "def",
  "lexical_name": "ControlStack.optionT",
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
  "slug": "controlstack-optiont--de505a45477a3acb2856ec79",
  "source": {
    "blob": "d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de505a45477a3acb2856ec798b0030ff357d922726d6654da1a36a7ceb240384",
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

Occurrence: `declaration:b680f0535813b4011133a1b107289344acd347a88003c7ae5e6a7576a1127e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ControlStack.optionT (baseMonadInfo : MonadInfo) (optionTWrapper casesOnWrapper : Name)
    (getCont : DoElabM (DoElabM Expr)) (base : ControlStack) : ControlStack where
  description _ := m!"OptionT over {base.description ()}"
  m := return mkApp (mkConst optionTWrapper [baseMonadInfo.u, baseMonadInfo.v]) (← base.m)
  stM := base.stM ∘ stM
  runInBase e := do
    -- `e : OptionT m α`. Return `e`, which is defeq to `OptionT.run e`.
    -- See also `instMonadControlOptionTOfMonad.liftWith`.
    base.runInBase (← mkAppM ``OptionT.run #[e])
  restoreCont dec := do
    -- Wrap `dec` such that the result type is `Option dec.resultType` by unpacking
    -- the option, calling `dec.k` in the success case.
    -- See also `instMonadControlOptionTOfMonad.restoreM`.
    let resultName ← mkFreshUserName `e
    let resultType := stM dec.resultType
    let k : DoElabM Expr := do
      let e ← getFVarFromUserName resultName
      let outerCont ← getCont
      let kexit ← withLocalDeclD (← mkFreshUserName `r) (mkConst ``Unit) fun r => do
        mkLambdaFVars #[r] (← outerCont)
      let ksuccess ← withLocalDeclD dec.resultName dec.resultType fun r => do
        mkLambdaFVars #[r] (← dec.k)
      let β ← mkMonadApp (← read).doBlockResultType
      return mkApp5 (mkConst casesOnWrapper [baseMonadInfo.u, baseMonadInfo.v]) dec.resultType β e kexit ksuccess
    base.restoreCont { resultName, resultType, k }
where
  stM α := mkApp (mkConst ``Option [baseMonadInfo.u]) α

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
