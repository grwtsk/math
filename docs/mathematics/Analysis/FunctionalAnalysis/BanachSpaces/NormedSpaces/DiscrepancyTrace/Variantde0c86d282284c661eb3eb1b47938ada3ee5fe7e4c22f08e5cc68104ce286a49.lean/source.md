# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.DiscrepancyTrace.Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b139de789c489fa15dd0881594b1c165e6988423` · SHA-256 `de0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Tactic
import Mathematics.Prismatic.ArithmeticEnhancement

/-!
# Exact unnormalized discrepancy trace

This module does not infer a trace formula from a name or a schedule.  A trace
formula is an equality field whose left side is the actual unnormalized
discrepancy.  Its invariant part is supplied by an idempotent additive
projection and is removed exactly before spectral estimation.
-/

namespace Mathematics.AbelReynolds

open scoped BigOperators

universe u v w

/-- An additive idempotent projector onto the invariant channel. -/
structure InvariantProjection
    (Carrier : Type w) [AddCommGroup Carrier] where
  project : Carrier →+ Carrier
  idempotent : ∀ value, project (project value) = project value

/-- The three admitted sources of an exact trace identity. -/
inductive TraceFormulaKind
  | cohomological
  | selberg
  | automorphic
  deriving DecidableEq, Repr

/--
Authority for a trace identity.  The automorphic constructor is indexed by the
same arithmetic enhancement carried by the trace.
-/
inductive TraceFormulaAuthority
    (source : Mathematics.Prismatic.ArithmeticEnhancement.{u}) :
    TraceFormulaKind → Type (u + 1)
  | cohomological
      (claim : Prop) (certificate : claim) :
      TraceFormulaAuthority source .cohomological
  | selberg
      (claim : Prop) (certificate : claim) :
      TraceFormulaAuthority source .selberg
  | automorphic
      (claim : Prop)
      (certificate :
        Mathematics.Prismatic.AutomorphicCertificate source claim) :
      TraceFormulaAuthority source .automorphic

/--
An exact finite spectral trace formula for the unnormalized discrepancy.
Finiteness makes multiplicity and Jordan data separately certifiable in the
subsequent spectral-control layer.
-/
structure ExactDiscrepancyTrace
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier] where
  arithmeticSource :
    Mathematics.Prismatic.ArithmeticEnhancement.{u}
  kind : TraceFormulaKind
  authority : TraceFormulaAuthority arithmeticSource kind
  discrepancy : Scale → Carrier
  invariantProjection : InvariantProjection Carrier
  spectralTerm : Scale → Spectrum → Carrier
  remainder : Scale → Carrier
  exact :
    ∀ scale,
      discrepancy scale =
        invariantProjection.project (discrepancy scale) +
          ((∑ spectral : Spectrum, spectralTerm scale spectral) +
            remainder scale)

namespace ExactDiscrepancyTrace

variable {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
  [Fintype Spectrum] [NormedAddCommGroup Carrier]

/-- The projected invariant contribution. -/
def invariantBias
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) : Carrier :=
  trace.invariantProjection.project (trace.discrepancy scale)

/-- The discrepancy after exact removal of the invariant bias. -/
def centeredDiscrepancy
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) : Carrier :=
  trace.discrepancy scale - trace.invariantBias scale

/-- Removing the invariant projection leaves exactly spectrum plus remainder. -/
theorem centered_eq_spectral_sum_add_remainder
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) :
    trace.centeredDiscrepancy scale =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale := by
  change
    trace.discrepancy scale -
        trace.invariantProjection.project (trace.discrepancy scale) =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale
  calc
    trace.discrepancy scale -
          trace.invariantProjection.project (trace.discrepancy scale) =
        (trace.invariantProjection.project (trace.discrepancy scale) +
            ((∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
              trace.remainder scale)) -
          trace.invariantProjection.project (trace.discrepancy scale) :=
      congrArg
        (fun value =>
          value -
            trace.invariantProjection.project (trace.discrepancy scale))
        (trace.exact scale)
    _ =
        (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
          trace.remainder scale := by abel

/-- The centered discrepancy has zero invariant projection. -/
theorem project_centeredDiscrepancy_eq_zero
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) :
    trace.invariantProjection.project
        (trace.centeredDiscrepancy scale) = 0 := by
  rw [centeredDiscrepancy, invariantBias, map_sub,
    trace.invariantProjection.idempotent, sub_self]

end ExactDiscrepancyTrace

end Mathematics.AbelReynolds
```
