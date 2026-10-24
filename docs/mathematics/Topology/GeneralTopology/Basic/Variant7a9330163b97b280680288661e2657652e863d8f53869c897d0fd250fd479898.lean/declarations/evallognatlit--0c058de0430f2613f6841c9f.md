# evalLogNatLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e671530a4fec2234905f7aeb50efe743eaac03e172a42e424e3e8d8c0bbc837",
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
  "slug": "evallognatlit--0c058de0430f2613f6841c9f",
  "source": {
    "blob": "5fe4380a167ceb6b20db4664740c8c4689c3eec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 555,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c058de0430f2613f6841c9f3ef427cbf9431e6be2d8933ea79a65906f11d287",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e671530a4fec2234905f7aeb50efe743eaac03e172a42e424e3e8d8c0bbc837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalLogNatLit : PositivityExt where eval {u α} _ _ e := do
  match u, α, e with
  | 0, ~q(ℝ), ~q(Real.log $a) =>
    match ← NormNum.derive a with
    | .isNat (_ : Q(AddMonoidWithOne ℝ)) lit p =>
      assumeInstancesCommute
      have p : Q(NormNum.IsNat $a $lit) := p
      if 1 < lit.natLit! then
        let p' : Q(Nat.blt 1 $lit = true) := (q(Eq.refl true) : Lean.Expr)
        pure (.positive q(log_pos_of_isNat $p $p'))
      else
        pure (.nonnegative q(log_nonneg_of_isNat $p))
    | .isNegNat _ lit p =>
      assumeInstancesCommute
      have p : Q(NormNum.IsInt $a (Int.negOfNat $lit)) := p
      if 1 < lit.natLit! then
        let p' : Q(Nat.blt 1 $lit = true) := (q(Eq.refl true) : Lean.Expr)
        pure (.positive q(log_pos_of_isNegNat $p $p'))
      else
        pure (.nonnegative q(log_nonneg_of_isNegNat $p))
    | .isRat (i : Q(DivisionRing ℝ)) q n d p =>
      assumeInstancesCommute
      have p : Q(by clear! «$i»; exact NormNum.IsRat $a $n $d) := p
      if 0 < q ∧ q < 1 then
        let w₁ : Q(decide ((0 : ℚ) < $n / $d) = true) := (q(Eq.refl true) : Lean.Expr)
        let w₂ : Q(decide ($n / $d < (1 : ℚ)) = true) := (q(Eq.refl true) : Lean.Expr)
        pure (.nonzero q(log_nz_of_isRat $p $w₁ $w₂))
      else if 1 < q then
        let w : Q(decide ((1 : ℚ) < $n / $d) = true) := (q(Eq.refl true) : Lean.Expr)
        pure (.positive q(log_pos_of_isRat $p $w))
      else if -1 < q ∧ q < 0 then
        let w₁ : Q(decide ($n / $d < (0 : ℚ)) = true) := (q(Eq.refl true) : Lean.Expr)
        let w₂ : Q(decide ((-1 : ℚ) < $n / $d) = true) := (q(Eq.refl true) : Lean.Expr)
        pure (.nonzero q(log_nz_of_isRat_neg $p $w₁ $w₂))
      else if q < -1 then
        let w : Q(decide ($n / $d < (-1 : ℚ)) = true) := (q(Eq.refl true) : Lean.Expr)
        pure (.positive q(log_pos_of_isRat_neg $p $w))
      else
        failure
    | _ => failure
  | _, _, _ => throwError "not Real.log"

end Mathlib.Meta.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe4380a167ceb6b20db4664740c8c4689c3eec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
