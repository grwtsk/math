# Complete source: GRWTSK.Algebra.LinearAlgebra.CurveTorsionGodelLoopCarrier.Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `430021b2b5e5b5537129ec95438080178114db53` · SHA-256 `75274ed0f94837652a932fe35ee15044de6e83c29e5c6c704a93a10b19cd2f3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CurveGroupModel.Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CurveGroupModel.Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d","mathematical_subject":"Foundations.Unclassified","original_sha256":"4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/CurveTorsionGodelLoopCarrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.BSDAlgorithmBitMatrixCarrier


namespace GRWTSK.Algebra.LinearAlgebra.CurveGroupModel.Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d

set_option autoImplicit false

namespace Think.Analysis

universe u v

/-
Curve torsion and closed-loop carrier.

This module relates an abstract curve group model to a torsion witness and then
to a closed finite orbit / transition carrier. The Gödel-style language is used
only for the closed-loop pattern: a finite trajectory returns to its starting
state. No theorem from general relativity is imported or asserted.
-/

/-- Minimal curve group model: a distinguished zero and iterated addition. -/
structure CurveGroupModel (Point : Type u) where
  zero : Point
  nsmul : Nat → Point → Point

/-- A point is torsion when some positive iterate returns to zero. -/
structure CurveTorsionWitness {Point : Type u} (G : CurveGroupModel Point) where
  point : Point
  order : Nat
  order_pos : 0 < order
  nsmul_eq_zero : G.nsmul order point = G.zero

/-- Projection of the torsion equation `mP = O`. -/
theorem curve_torsion_witness_eq_zero
    {Point : Type u} {G : CurveGroupModel Point}
    (T : CurveTorsionWitness G) :
    G.nsmul T.order T.point = G.zero :=
  T.nsmul_eq_zero

/-- Recursive finite transition iterate. -/
def transitionIterate {State : Type v}
    (T : State → State) : Nat → State → State
  | 0, s => s
  | Nat.succ n, s => transitionIterate T n (T s)

/-- A closed finite orbit for a transition map. -/
structure ClosedFiniteOrbit {State : Type v} (T : State → State) where
  start : State
  period : Nat
  period_pos : 0 < period
  closed : transitionIterate T period start = start

/-- Projection of the closed-orbit equation `T^m v = v`. -/
theorem closed_finite_orbit_returns
    {State : Type v} {T : State → State}
    (O : ClosedFiniteOrbit T) :
    transitionIterate T O.period O.start = O.start :=
  O.closed

/-- A finite-indexed transition carrier suitable for bitmatrix-style encodings. -/
structure FiniteTransitionCarrier (N : Nat) where
  transition : Fin N → Fin N

/-- A closed orbit inside a finite-indexed transition carrier. -/
structure FiniteTransitionClosedOrbit (N : Nat) where
  carrier : FiniteTransitionCarrier N
  start : Fin N
  period : Nat
  period_pos : 0 < period
  closed : transitionIterate carrier.transition period start = start

/-- Projection of the finite-indexed closed orbit equation. -/
theorem finite_transition_closed_orbit_returns
    {N : Nat} (O : FiniteTransitionClosedOrbit N) :
    transitionIterate O.carrier.transition O.period O.start = O.start :=
  O.closed

/-- A curve torsion witness interpreted as a closed finite orbit. -/
structure CurveTorsionClosedLoopCarrier
    (Curve : Type u) (Point : Type v) (N : Nat) where
  curve : Curve
  groupModel : CurveGroupModel Point
  torsion : CurveTorsionWitness groupModel
  orbit : FiniteTransitionClosedOrbit N
  order_eq_period : torsion.order = orbit.period

/-- The torsion order equals the closed-loop period in the carrier. -/
theorem curve_torsion_closed_loop_order_eq_period
    {Curve : Type u} {Point : Type v} {N : Nat}
    (C : CurveTorsionClosedLoopCarrier Curve Point N) :
    C.torsion.order = C.orbit.period :=
  C.order_eq_period

/-- The torsion equation remains available from the closed-loop carrier. -/
theorem curve_torsion_closed_loop_torsion_eq_zero
    {Curve : Type u} {Point : Type v} {N : Nat}
    (C : CurveTorsionClosedLoopCarrier Curve Point N) :
    C.groupModel.nsmul C.torsion.order C.torsion.point = C.groupModel.zero :=
  C.torsion.nsmul_eq_zero

/-- The finite orbit equation remains available from the closed-loop carrier. -/
theorem curve_torsion_closed_loop_orbit_returns
    {Curve : Type u} {Point : Type v} {N : Nat}
    (C : CurveTorsionClosedLoopCarrier Curve Point N) :
    transitionIterate C.orbit.carrier.transition C.orbit.period C.orbit.start =
      C.orbit.start :=
  C.orbit.closed

/-- A Gödel-style closed-loop reading of torsion: no GR theorem authority is included. -/
structure GodelStyleClosedLoopReading
    (Curve : Type u) (Point : Type v) (N : Nat) where
  carrier : CurveTorsionClosedLoopCarrier Curve Point N
  closedLoopPattern : ClosedFiniteOrbit carrier.orbit.carrier.transition
  samePeriod : closedLoopPattern.period = carrier.orbit.period
  sameStart : closedLoopPattern.start = carrier.orbit.start

/-- The Gödel-style reading preserves the closed-loop period. -/
theorem godel_style_closed_loop_same_period
    {Curve : Type u} {Point : Type v} {N : Nat}
    (G : GodelStyleClosedLoopReading Curve Point N) :
    G.closedLoopPattern.period = G.carrier.orbit.period :=
  G.samePeriod

/-- The Gödel-style reading preserves the closed-loop start state. -/
theorem godel_style_closed_loop_same_start
    {Curve : Type u} {Point : Type v} {N : Nat}
    (G : GodelStyleClosedLoopReading Curve Point N) :
    G.closedLoopPattern.start = G.carrier.orbit.start :=
  G.sameStart

/-- A BSD bitmatrix witness equipped with an explicit torsion closed-loop carrier. -/
structure BSDTorsionClosedLoopBitMatrix
    (Curve : Type u) (Point : Type v) (n N : Nat) where
  bitmatrix : BSDAlgorithmBitMatrixCarrier Curve n
  torsionLoop : CurveTorsionClosedLoopCarrier Curve Point N
  torsionRowActive : bitmatrix.rowBit BSDWitnessRow.torsionSubgroup = true

/-- The BSD torsion row is active when the torsion closed-loop carrier is attached. -/
theorem bsd_torsion_closed_loop_row_active
    {Curve : Type u} {Point : Type v} {n N : Nat}
    (B : BSDTorsionClosedLoopBitMatrix Curve Point n N) :
    B.bitmatrix.rowBit BSDWitnessRow.torsionSubgroup = true :=
  B.torsionRowActive

/-- The attached BSD torsion loop still satisfies its torsion equation. -/
theorem bsd_torsion_closed_loop_torsion_eq_zero
    {Curve : Type u} {Point : Type v} {n N : Nat}
    (B : BSDTorsionClosedLoopBitMatrix Curve Point n N) :
    B.torsionLoop.groupModel.nsmul
        B.torsionLoop.torsion.order
        B.torsionLoop.torsion.point =
      B.torsionLoop.groupModel.zero :=
  B.torsionLoop.torsion.nsmul_eq_zero

/-- The attached BSD torsion loop still satisfies its closed finite orbit equation. -/
theorem bsd_torsion_closed_loop_orbit_returns
    {Curve : Type u} {Point : Type v} {n N : Nat}
    (B : BSDTorsionClosedLoopBitMatrix Curve Point n N) :
    transitionIterate
        B.torsionLoop.orbit.carrier.transition
        B.torsionLoop.orbit.period
        B.torsionLoop.orbit.start =
      B.torsionLoop.orbit.start :=
  B.torsionLoop.orbit.closed

end Think.Analysis
```
