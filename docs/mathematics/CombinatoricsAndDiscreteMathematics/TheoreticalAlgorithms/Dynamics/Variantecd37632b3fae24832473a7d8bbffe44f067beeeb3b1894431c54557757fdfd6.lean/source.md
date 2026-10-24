# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dynamics.Variantecd37632b3fae24832473a7d8bbffe44f067beeeb3b1894431c54557757fdfd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `932fb716111ab1d28696336490419a28f39f9206` · SHA-256 `02f758d0e683b6f09f49f8c11e4194e8c218d5a576e245793d1ffb91b43344ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BooleanNetworkTrajectory.Variant9e75d871b332dbc823cef7e004655320187c6f37752c51b84c9bbaae5658eb68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e75d871b332dbc823cef7e004655320187c6f37752c51b84c9bbaae5658eb68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BooleanNetworkTrajectory.Variant9e75d871b332dbc823cef7e004655320187c6f37752c51b84c9bbaae5658eb68","mathematical_subject":"Computation.DataStructures","original_sha256":"9e75d871b332dbc823cef7e004655320187c6f37752c51b84c9bbaae5658eb68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/BooleanNetwork/Dynamics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.BooleanNetwork


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BooleanNetworkTrajectory.Variant9e75d871b332dbc823cef7e004655320187c6f37752c51b84c9bbaae5658eb68

namespace Boolean.Cube

/-- A finite prefix of a network orbit. -/
def BooleanNetwork.trajectory {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (horizon : Nat) :
    List (Hypercube.Point n) :=
  (List.range (horizon + 1)).map
    (fun t => BooleanNetwork.iterate N t x)

/-- A state fixed by one network update. -/
def BooleanNetwork.FixedPoint {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n) :
    Prop :=
  N.step x = x

/-- A state returning to itself after a positive period. -/
def BooleanNetwork.PeriodicPoint {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (period : Nat) :
    Prop :=
  period > 0 ∧ BooleanNetwork.iterate N period x = x

/-- State `x` reaches state `y` after finitely many updates. -/
def BooleanNetwork.EventuallyReaches {n : Nat}
    (N : BooleanNetwork.Network n)
    (x y : Hypercube.Point n) :
    Prop :=
  ∃ t : Nat, BooleanNetwork.iterate N t x = y

/-- Basin membership for a predicate describing target states. -/
def BooleanNetwork.Basin {n : Nat}
    (N : BooleanNetwork.Network n)
    (target : Hypercube.Point n → Prop)
    (x : Hypercube.Point n) :
    Prop :=
  ∃ y : Hypercube.Point n, target y ∧ BooleanNetwork.EventuallyReaches N x y

@[simp] theorem BooleanNetwork.iterate_zero {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n) :
    BooleanNetwork.iterate N 0 x = x := rfl

@[simp] theorem BooleanNetwork.iterate_succ {n : Nat}
    (N : BooleanNetwork.Network n)
    (t : Nat)
    (x : Hypercube.Point n) :
    BooleanNetwork.iterate N (t + 1) x =
      BooleanNetwork.iterate N t (N.step x) := rfl

theorem BooleanNetwork.fixedPoint_iterate {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (h : BooleanNetwork.FixedPoint N x)
    (t : Nat) :
    BooleanNetwork.iterate N t x = x := by
  induction t with
  | zero => rfl
  | succ t ih =>
      rw [BooleanNetwork.iterate_succ, h]
      exact ih

theorem BooleanNetwork.fixedPoint_periodic {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (h : BooleanNetwork.FixedPoint N x) :
    BooleanNetwork.PeriodicPoint N x 1 := by
  constructor
  · exact Nat.succ_pos 0
  · simp [BooleanNetwork.FixedPoint] at h
    exact h

end Boolean.Cube
```
