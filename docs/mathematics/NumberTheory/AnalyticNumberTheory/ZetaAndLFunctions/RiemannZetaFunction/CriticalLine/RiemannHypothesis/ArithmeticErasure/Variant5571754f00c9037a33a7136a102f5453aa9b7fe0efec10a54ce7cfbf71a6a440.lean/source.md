# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ArithmeticErasure.Variant5571754f00c9037a33a7136a102f5453aa9b7fe0efec10a54ce7cfbf71a6a440

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6dca1448ba576df1b542960104bad9d73096d9a` · SHA-256 `5571754f00c9037a33a7136a102f5453aa9b7fe0efec10a54ce7cfbf71a6a440`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.StructuralCoupling
import Mathematics.Prismatic.ConstructionProvenance

/-!
# Arithmetic erasure and nonfactorization
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev ArithmeticEssentialityCertificate :=
  Mathematics.Prismatic.ArithmeticEssentialityCertificate

abbrev ArithmeticErasureCertificate :=
  Mathematics.Prismatic.ArithmeticEssentialityCertificate

abbrev NonfactorizationCertificate :=
  Mathematics.Prismatic.NonfactorizationWitness

theorem arithmetic_source_changes_isomorphism_invariant
    {Realization : Type u} {Invariant : Type v}
    [DecidableEq Invariant]
    (certificate :
      ArithmeticEssentialityCertificate Realization Invariant) :
    certificate.detector certificate.full ≠
      certificate.detector certificate.arithmeticErased :=
  certificate.changes_invariant

theorem realization_does_not_factor_through_erasure
    {Source : Type u} {Erased : Type v}
    {Realization : Type w} {Invariant : Type x}
    (certificate :
      NonfactorizationCertificate
        Source Erased Realization Invariant) :
    ¬ ∃ factor : Erased → Realization,
        ∀ source,
          certificate.realize source =
            factor (certificate.erase source) :=
  certificate.no_erased_factorization

end Mathematics.MobiusOntology
```
