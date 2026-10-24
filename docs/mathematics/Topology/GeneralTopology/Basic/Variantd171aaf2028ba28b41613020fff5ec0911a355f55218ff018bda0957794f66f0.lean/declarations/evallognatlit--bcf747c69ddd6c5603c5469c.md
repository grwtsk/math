# evalLogNatLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b50ececc40d93d0c4b0814dcfbe624b1eef77ab9d8a66dccf70d4380a56d5a18",
  "kind": "def",
  "lexical_name": "evalLogNatLit",
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
  "slug": "evallognatlit--bcf747c69ddd6c5603c5469c",
  "source": {
    "blob": "192a9b92912b130a9f9ab5782632889268de615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 561,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcf747c69ddd6c5603c5469cf5c9843617c844feb9c8e69112a25dc35ec4b079",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b50ececc40d93d0c4b0814dcfbe624b1eef77ab9d8a66dccf70d4380a56d5a18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalLogNatLit : PositivityExt where eval {_ _} _zα _pα e := do
  let .app (f : Q(ℝ → ℝ)) (a : Q(ℝ)) ← withReducible (whnf e) | throwError "not Real.log"
  guard <|← withDefault <| withNewMCtxDepth <| isDefEq f q(Real.log)
  match ←NormNum.derive a with
  | .isNat (_ : Q(AddMonoidWithOne ℝ)) lit p =>
    assumeInstancesCommute
    have p : Q(NormNum.IsNat $a $lit) := p
    if 1 < lit.natLit! then
      let p' : Q(Nat.blt 1 $lit = true) := (q(Eq.refl true) : Lean.Expr)
      pure (.positive (q(log_pos_of_isNat $p $p') : Lean.Expr))
    else
      pure (.nonnegative (q(log_nonneg_of_isNat $p) : Lean.Expr))
  | .isNegNat _ lit p =>
    assumeInstancesCommute
    have p : Q(NormNum.IsInt $a (Int.negOfNat $lit)) := p
    if 1 < lit.natLit! then
      let p' : Q(Nat.blt 1 $lit = true) := (q(Eq.refl true) : Lean.Expr)
      pure (.positive (q(log_pos_of_isNegNat $p $p') : Lean.Expr))
    else
      pure (.nonnegative (q(log_nonneg_of_isNegNat $p) : Lean.Expr))
  | .isRat (i : Q(DivisionRing ℝ)) q n d p =>
    assumeInstancesCommute
    have p : Q(by clear! «$i»; exact NormNum.IsRat $a $n $d) := p
    if 0 < q ∧ q < 1 then
      let w₁ : Q(decide ((0 : ℚ) < $n / $d) = true) := (q(Eq.refl true) : Lean.Expr)
      let w₂ : Q(decide ($n / $d < (1 : ℚ)) = true) := (q(Eq.refl true) : Lean.Expr)
      pure (.nonzero (q(log_nz_of_isRat $p $w₁ $w₂) : Lean.Expr))
    else if 1 < q then
      let w : Q(decide ((1 : ℚ) < $n / $d) = true) := (q(Eq.refl true) : Lean.Expr)
      pure (.positive (q(log_pos_of_isRat $p $w) : Lean.Expr))
    else if -1 < q ∧ q < 0 then
      let w₁ : Q(decide ($n / $d < (0 : ℚ)) = true) := (q(Eq.refl true) : Lean.Expr)
      let w₂ : Q(decide ((-1 : ℚ) < $n / $d) = true) := (q(Eq.refl true) : Lean.Expr)
      pure (.nonzero (q(log_nz_of_isRat_neg $p $w₁ $w₂) : Lean.Expr))
    else if q < -1 then
      let w : Q(decide ($n / $d < (-1 : ℚ)) = true) := (q(Eq.refl true) : Lean.Expr)
      pure (.positive (q(log_pos_of_isRat_neg $p $w) : Lean.Expr))
    else
      failure
  | _ => failure

end Mathlib.Meta.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `192a9b92912b130a9f9ab5782632889268de615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
