/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import Init

/-! # Natural scaled gain data on a declared domain
The declarations below are extracted verbatim from these sources at math
`33a3e9dd6a9cc80f91e68d93681245681f62f29d`:
- `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef.lean`, Git blob `d5bdd3d7cf09a14819f112f2d2812a7454de9115`, SHA-256 `56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef`.
- `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80.lean`, Git blob `c8d583f58855c4fc010263f99ef27c2a1e4bc758`, SHA-256 `73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80`.
- `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean`, Git blob `dae85803ea1722edab862b668ed8b9ccebf0e098`, SHA-256 `7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3`.

Distance takes natural-number values and only its self-zero law is supplied;
no symmetry, triangle law or complete metric space is inferred. The gain scale
is positive and all domain-membership hypotheses remain explicit.
ProofDisposition is status data, not a proof of the associated proposition.
No fixed-point existence, uniqueness, basin or convergence theorem is supplied.
Native compilation and axiom verification for this source are NOT_RUN. -/

set_option autoImplicit false
namespace GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.ContractionBoundaries.NaturalGainData

abbrev StableId := String

inductive ProofDisposition
  | proved
  | open
  | refuted
  deriving DecidableEq, Repr

structure DeclaredDomain (X : Type) where
  contains : X → Prop

structure ReflectiveMap (X : Type) where
  mapId : StableId
  apply : X → X
  domain : DeclaredDomain X

def ReflectiveMap.mapsDeclaredDomain
    {X : Type}
    (construction : ReflectiveMap X) : Prop :=
  ∀ x, construction.domain.contains x →
    construction.domain.contains (construction.apply x)

structure ResidualMetric (X : Type) where
  distance : X → X → Nat
  self_zero : ∀ x, distance x x = 0

structure ScaledDerivativeGainCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  numerator : Nat
  scale : Nat
  scalePositive : 0 < scale
  bounds :
    ∀ x y,
      construction.domain.contains x →
      construction.domain.contains y →
      scale *
        metric.distance (construction.apply x)
          (construction.apply y) ≤
        numerator * metric.distance x y

theorem scaled_derivative_gain_bounds_one_step
    {X : Type}
    {construction : ReflectiveMap X}
    {metric : ResidualMetric X}
    (certificate :
      ScaledDerivativeGainCertificate construction metric)
    (x y : X)
    (xMember : construction.domain.contains x)
    (yMember : construction.domain.contains y) :
    certificate.scale *
      metric.distance (construction.apply x)
        (construction.apply y) ≤
      certificate.numerator * metric.distance x y :=
  certificate.bounds x y xMember yMember

end GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.ContractionBoundaries.NaturalGainData
