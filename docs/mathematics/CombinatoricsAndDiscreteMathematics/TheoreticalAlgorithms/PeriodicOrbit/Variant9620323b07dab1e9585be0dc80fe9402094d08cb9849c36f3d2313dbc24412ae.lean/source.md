# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PeriodicOrbit.Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73c053ac0debf586dd2ec476e29282f99361c936` · SHA-256 `9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Stability.Expansion

/-!
# Periodic-orbit and return-map evidence

`cycleMultiplier` is retained as an exact product for genuinely integral
derivative gains.  General and sub-unit multipliers are represented by
`scaledCycleMultiplier`; periodic-attraction obligations use that scaled form.
-/

namespace Mathematics.Stability

def cycleMultiplier (derivativeGains : List Nat) : Nat :=
  derivativeGains.prod

@[simp] theorem cycleMultiplier_nil :
    cycleMultiplier [] = 1 :=
  rfl

@[simp] theorem cycleMultiplier_cons
    (gain : Nat)
    (rest : List Nat) :
    cycleMultiplier (gain :: rest) =
      gain * cycleMultiplier rest :=
  rfl

theorem cycle_multiplier_is_derivative_product
    (derivativeGains : List Nat) :
    cycleMultiplier derivativeGains =
      derivativeGains.prod :=
  rfl

theorem cycleMultiplier_append
    (left right : List Nat) :
    cycleMultiplier (left ++ right) =
      cycleMultiplier left * cycleMultiplier right := by
  simp [cycleMultiplier, List.prod_append]

def scaledCycleMultiplier :
    List ScaledGain → ScaledGain
  | [] => ScaledGain.one
  | gain :: rest =>
      gain.compose (scaledCycleMultiplier rest)

@[simp] theorem scaledCycleMultiplier_nil :
    scaledCycleMultiplier [] = ScaledGain.one :=
  rfl

@[simp] theorem scaledCycleMultiplier_cons
    (gain : ScaledGain)
    (rest : List ScaledGain) :
    scaledCycleMultiplier (gain :: rest) =
      gain.compose (scaledCycleMultiplier rest) :=
  rfl

theorem scaled_cycle_numerator_is_product
    (derivativeGains : List ScaledGain) :
    (scaledCycleMultiplier derivativeGains).numerator =
      (derivativeGains.map ScaledGain.numerator).prod := by
  induction derivativeGains with
  | nil => rfl
  | cons gain rest inductionHypothesis =>
      simp [scaledCycleMultiplier, inductionHypothesis]

theorem scaled_cycle_scale_is_product
    (derivativeGains : List ScaledGain) :
    (scaledCycleMultiplier derivativeGains).scale =
      (derivativeGains.map ScaledGain.scale).prod := by
  induction derivativeGains with
  | nil => rfl
  | cons gain rest inductionHypothesis =>
      simp [scaledCycleMultiplier, inductionHypothesis]

structure PeriodicOrbitCertificate
    {X : Type}
    (construction : ReflectiveMap X) where
  period : Nat
  positivePeriod : 0 < period
  phasePoint : X
  phaseMember : construction.domain.contains phasePoint
  returnEquation :
    iterate construction.apply period phasePoint = phasePoint
  derivativeGains : List ScaledGain
  gainCount : derivativeGains.length = period
  multiplier : ScaledGain := scaledCycleMultiplier derivativeGains
  multiplierExact :
      multiplier = scaledCycleMultiplier derivativeGains := by
    rfl

structure PeriodicAttractionObligation
    {X : Type}
    {construction : ReflectiveMap X}
    (orbit : PeriodicOrbitCertificate construction) where
  multiplierBelowOne :
    orbit.multiplier.numerator < orbit.multiplier.scale
  localAttractionStatement : Prop
  localAttractionStatus : ProofDisposition
  basinMembershipStatement : X → Prop
  basinStatus : ProofDisposition

end Mathematics.Stability
```
