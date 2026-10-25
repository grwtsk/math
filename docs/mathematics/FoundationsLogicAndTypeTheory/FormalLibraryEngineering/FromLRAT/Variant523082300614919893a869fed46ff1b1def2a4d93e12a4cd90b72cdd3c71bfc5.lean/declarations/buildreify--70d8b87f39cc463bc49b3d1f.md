# buildReify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad95919537425cd8e48dce1b471bbf36a3ec966f0a3c8f4023dcce5dae681afc",
  "kind": "def",
  "lexical_name": "buildReify",
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
  "slug": "buildreify--70d8b87f39cc463bc49b3d1f",
  "source": {
    "blob": "c45f908020ab8ae86a140fee5edc1759b46a4dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 422,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70d8b87f39cc463bc49b3d1f85974aec592853370dc81bcb42d7d74c52b8537e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad95919537425cd8e48dce1b471bbf36a3ec966f0a3c8f4023dcce5dae681afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def buildReify (ctx ctx' proof : Expr) (nvars : Nat) : Expr × Expr := Id.run do
  let (e, pr) := reifyFmla ctx'
  let mut pr := pr
  for i in [0:nvars] do
    let j := nvars-i-1
    let ty := mkApp2 (mkConst ``Iff) (mkApp (mkBVar j) (mkRawNatLit j)) (mkBVar nvars)
    pr := mkLambda `h default ty pr
  pr := mkLambda `v default (mkConst ``Sat.Valuation) pr
  let mut e := e.lowerLooseBVars (nvars+1) (nvars+1)
  let cons := mkApp (mkConst ``List.cons [levelZero]) (mkSort levelZero)
  let nil := mkApp (mkConst ``List.nil [levelZero]) (mkSort levelZero)
  let rec mkPS depth e
  | 0 => e
  | n+1 => mkPS (depth+1) (mkApp2 cons (mkBVar depth) e) n
  pr := mkApp5 (mkConst ``Sat.Fmla.refute) e (mkPS 0 nil nvars) ctx proof pr
  for _ in [0:nvars] do
    e := mkForall `a default (mkSort levelZero) e
    pr := mkLambda `a default (mkSort levelZero) pr
  pure (e, pr)
where
  /-- The `v` variable under the `a1 ... an, v, h1 ... hn` context -/
  v := mkBVar nvars
  /-- Returns `a` and `pr : reify v f a` given a formula `f` -/
  reifyFmla f :=
    match f.getAppFn.constName! with
    | ``Sat.Fmla.and =>
      let f₁ := f.appFn!.appArg!
      let f₂ := f.appArg!
      let (e₁, h₁) := reifyFmla f₁
      let (e₂, h₂) := reifyFmla f₂
      (mkApp2 (mkConst ``Or) e₁ e₂, mkApp7 (mkConst ``Sat.Fmla.reify_or) v f₁ e₁ f₂ e₂ h₁ h₂)
    | ``Sat.Fmla.one =>
      let c := f.appArg!
      let (e, h) := reifyClause c
      (e, mkApp4 (mkConst ``Sat.Fmla.reify_one) v c e h)
    | _ => panic! "not a valid formula"
  /-- Returns `a` and `pr : reify v c a` given a clause `c` -/
  reifyClause c :=
    if c.appFn!.isConst then
      (mkConst ``True, mkApp (mkConst ``Sat.Clause.reify_zero) v)
    else reifyClause1 c
  /-- Returns `a` and `pr : reify v c a` given a nonempty clause `c` -/
  reifyClause1 c :=
    let l := c.appFn!.appArg!
    let c := c.appArg!
    let (e₁, h₁) := reifyLiteral l
    if c.isConst then
      (e₁, mkApp4 (mkConst ``Sat.Clause.reify_one) v l e₁ h₁)
    else
      let (e₂, h₂) := reifyClause1 c
      (mkApp2 (mkConst ``And) e₁ e₂, mkApp7 (mkConst ``Sat.Clause.reify_and) v l e₁ c e₂ h₁ h₂)
  /-- Returns `a` and `pr : reify v l a` given a literal `c` -/
  reifyLiteral l :=
    let n := l.appArg!
    let (e, h) := reifyVar n
    match l.appFn!.constName! with
    | ``Sat.Literal.pos =>
      (mkApp (mkConst ``Not) e, mkApp4 (mkConst ``Sat.Literal.reify_pos) v e n h)
    | ``Sat.Literal.neg =>
      (e, mkApp4 (mkConst ``Sat.Literal.reify_neg) v e n h)
    | _ => panic! "not a valid literal"
  /-- Returns `a` and `pr : v n ↔ a` given a variable index `n`.
  These are both lookups into the context
  `(a0 .. a(n-1) : Prop) (v) (h1 : v 0 ↔ a0) ... (hn : v (n-1) ↔ a(n-1))`. -/
  reifyVar v :=
    let n := v.natLit?.get!
    (mkBVar (2 * nvars - n), mkBVar (nvars - n - 1))
open Lean

namespace Parser
open Lean Parsec

/-- Parse a natural number -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45f908020ab8ae86a140fee5edc1759b46a4dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
