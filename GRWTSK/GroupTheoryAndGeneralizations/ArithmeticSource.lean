import Mathematics.AbelReynolds.DiscrepancyTrace
import Mathematics.Prismatic.ArithmeticEnhancement

/-!
# Canonical arithmetic source and reduced channel

Arithmetic quotient, level, Hecke, and local--global data are present before
any automorphic claim.  The reduced source is obtained from an explicit
idempotent invariant projector.
-/

namespace Mathematics.MobiusOntology

universe u v w

abbrev ArithmeticEnhancement :=
  Mathematics.Prismatic.ArithmeticEnhancement

structure ArithmeticSource
    (Object : Type u) (Embedding : Type v) (Coefficient : Type w) where
  object : Object
  embeddings : Finset Embedding
  permutationValue : Embedding → Coefficient
  enhancement : ArithmeticEnhancement
  constructionLaw : Prop
  constructionLawProof : constructionLaw

structure ReducedArithmeticSource
    (Carrier : Type u) [AddCommGroup Carrier] where
  carrier : Carrier
  invariantProjection :
    Mathematics.AbelReynolds.InvariantProjection Carrier

namespace ReducedArithmeticSource

def invariant
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) : Carrier :=
  source.invariantProjection.project source.carrier

def reduced
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) : Carrier :=
  source.carrier - source.invariant

theorem invariant_reduced_eq_zero
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) :
    source.invariantProjection.project source.reduced = 0 := by
  rw [reduced, invariant, map_sub,
    source.invariantProjection.idempotent, sub_self]

end ReducedArithmeticSource

end Mathematics.MobiusOntology
