# eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e34e3d6671de97aaf5d4d04c4a4ccb151f70536fd11e7e1d81635e4060276f64",
  "kind": "def",
  "lexical_name": "eval",
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
  "slug": "eval--55855e1e4abd15aa6aca9eec",
  "source": {
    "blob": "76f300877a4aaaf415ceb88dd0f914714800eeb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 363,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55855e1e4abd15aa6aca9eececb2605a5ddd540c3f82d50d56859d445398a7c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e34e3d6671de97aaf5d4d04c4a4ccb151f70536fd11e7e1d81635e4060276f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eval (e : Expr) : M (NormalExpr × Expr) := do
  trace[abel.detail] "running eval on {e}"
  trace[abel.detail] "getAppFnArgs: {e.getAppFnArgs}"
  match e.getAppFnArgs with
  | (``HAdd.hAdd, #[_, _, _, _, e₁, e₂]) => do
    let (e₁', p₁) ← eval e₁
    let (e₂', p₂) ← eval e₂
    let (e', p') ← evalAdd e₁' e₂'
    return (e', ← iapp ``subst_into_add #[e₁, e₂, e₁', e₂', e', p₁, p₂, p'])
  | (``HSub.hSub, #[_, _, _ ,_, e₁, e₂]) => do
    let e₂' ← mkAppM ``Neg.neg #[e₂]
    let e ← mkAppM ``HAdd.hAdd #[e₁, e₂']
    let (e', p) ← eval e
    let p' ← (← read).mkApp ``unfold_sub ``SubtractionMonoid #[e₁, e₂, e', p]
    return (e', p')
  | (``Neg.neg, #[_, _, e]) => do
    let (e₁, p₁) ← eval e
    let (e₂, p₂) ← evalNeg e₁
    return (e₂, ← iapp `Mathlib.Tactic.Abel.subst_into_neg #[e, e₁, e₂, p₁, p₂])
  | (``AddMonoid.nsmul, #[_, _, e₁, e₂]) => do
    let n ← if (← read).isGroup then mkAppM ``Int.ofNat #[e₁] else pure e₁
    let (e', p) ← eval <| ← iapp ``smul #[n, e₂]
    return (e', ← iapp ``unfold_smul #[e₁, e₂, e', p])
  | (``SubNegMonoid.zsmul, #[_, _, e₁, e₂]) => do
      if ¬ (← read).isGroup then failure
      let (e', p) ← eval <| ← iapp ``smul #[e₁, e₂]
      return (e', (← read).app ``unfold_zsmul (← read).inst #[e₁, e₂, e', p])
  | (``SMul.smul, #[.const ``Int _, _, _, e₁, e₂]) =>
    evalSMul' eval true e e₁ e₂
  | (``SMul.smul, #[.const ``Nat _, _, _, e₁, e₂]) =>
    evalSMul' eval false e e₁ e₂
  | (``HSMul.hSMul, #[.const ``Int _, _, _, _, e₁, e₂]) =>
    evalSMul' eval true e e₁ e₂
  | (``HSMul.hSMul, #[.const ``Nat _, _, _, _, e₁, e₂]) =>
    evalSMul' eval false e e₁ e₂
  | (``smul, #[_, _, e₁, e₂]) => evalSMul' eval false e e₁ e₂
  | (``smulg, #[_, _, e₁, e₂]) => evalSMul' eval true e e₁ e₂
  | (``OfNat.ofNat, #[_, .lit (.natVal 0), _])
  | (``Zero.zero, #[_, _]) =>
    if ← isDefEq e (← read).α0 then
      pure (← zero', ← mkEqRefl (← read).α0)
    else
      evalAtom e
  | _ => evalAtom e

open Lean Elab Meta Tactic

@[tactic_alt abel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variantc18fcbf6401b25c524c724b63db74cd2ea6bb681bc32900ae4fa426ce5e4a983.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76f300877a4aaaf415ceb88dd0f914714800eeb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
