# Complete source: GRWTSK.Algebra.InductiveLimit.Variantc60aba791de2afd540b87c1e16fa4cc2dd5c023809ba55bcb4719bd71689030e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f2bb40cf9b461ac2c6f2ed9fe188893b1d6f0a5` · SHA-256 `c60aba791de2afd540b87c1e16fa4cc2dd5c023809ba55bcb4719bd71689030e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.CylinderTrace

/-!
# Algebraic inductive-limit trace

The state spaces form an inverse system; observables form an injective direct
system.  The quotient by equality at a common later stage is the algebraic
inductive limit.  A C-star completion and trace extension require additional
boundedness certificates.
-/

namespace Mathematics.StratifiedBoundary.Trace

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

abbrev AlgebraicInductiveLimitObservable
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem) :=
  CylinderObservable equivalence

noncomputable def includeFiniteObservable
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem)
    (stage : Nat)
    (observable :
      (boundary.cut stage).Algebra) :
    AlgebraicInductiveLimitObservable equivalence :=
  Quotient.mk equivalence.setoid
    ⟨stage, observable⟩

structure InductiveLimitAlgebraCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem) where
  laws :
    CylinderTraceLawCertificate equivalence
  finiteInclusionsInjective :
    ∀ stage,
      Function.Injective
        (includeFiniteObservable
          equivalence stage)
  generatedByFiniteStages :
    ∀ observable :
        AlgebraicInductiveLimitObservable equivalence,
      ∃ (stage : Nat)
        (finiteObservable :
          (boundary.cut stage).Algebra),
        observable =
          includeFiniteObservable
            equivalence stage finiteObservable
  universalForCompatibleAlgebraMaps : Prop
  universalPropertyProof :
    universalForCompatibleAlgebraMaps

structure CompatibleTraceBoundednessCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem) where
  norm :
    AlgebraicInductiveLimitObservable equivalence →
      ℝ
  normNonnegative :
    ∀ observable,
      0 ≤ norm observable
  traceBound : ℝ
  traceBoundNonnegative :
    0 ≤ traceBound
  bounded :
    ∀ observable,
      Complex.abs
          (limitTrace equivalence observable) ≤
        traceBound * norm observable

structure CStarTraceExtensionCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    {equivalence :
      CylinderEquivalenceCertificate traceSystem}
    (boundedness :
      CompatibleTraceBoundednessCertificate
        equivalence) where
  Completion : Type*
  embed :
    AlgebraicInductiveLimitObservable equivalence →
      Completion
  embedDense : Prop
  densityProof :
    embedDense
  completedTrace :
    Completion → ℂ
  extendsCylinderTrace :
    ∀ observable,
      completedTrace (embed observable) =
        limitTrace equivalence observable
  continuous : Prop
  continuityProof :
    continuous

end Mathematics.StratifiedBoundary.Trace
```
