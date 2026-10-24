# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySectionJetEquiv

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `801e2dbabe8916a3c98f9547a2e3a64de03b8539` · SHA-256 `309ea17902bd3460683f7e7b2e2156ddca4ef73c1057facd3e3cdf14cc9078e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib ideal quotients and coefficient algebras (Apache-2.0).
Formalization assistance: OpenAI.

The finite relative section-ideal isomorphism at each existing Frey anchor,
over its ACTUAL integral coefficient localization. Completion, global section
spaces, inter-anchor curve maps, metrics and conductor/ABC estimates remain
separate. The isomorphism statements are unelaborated source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetCharts

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The actual unshifted curve equation modulo the full section-ideal power,
over S_i=Z[1/d_i]. This is not a quotient at a different marked point. -/
abbrev FreySectionJetRing (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :=
  FreyJetQuotient.Jet (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
    (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) N

/-- The original root remains a root after the coefficient localization. -/
theorem PrimitiveAdditiveTriple.freySectionJet_root (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    let r := algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)
    r * (r - (t.a : FreyJetChart t i)) * (r + (t.b : FreyJetChart t i)) = 0 := by
  simpa using t.freyPort_shifted_cubic i (algebraMap ℤ (FreyJetChart t i)) 0

/-- The derivative in the quotient presentation is the source integer d_i. -/
theorem PrimitiveAdditiveTriple.freySectionJet_derivative
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    FreyJetQuotient.derivative (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
      (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) =
        algebraMap ℤ (FreyJetChart t i) (t.freyPortJacobian i) := by
  fin_cases i <;>
    simp [FreyJetQuotient.derivative, PrimitiveAdditiveTriple.freyPortRootInt,
      PrimitiveAdditiveTriple.freyPortJacobian] <;> ring

/-- The second shifted coefficient also retains its integral source identity. -/
theorem PrimitiveAdditiveTriple.freySectionJet_quadratic
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    FreyJetQuotient.quadratic (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
      (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) =
        algebraMap ℤ (FreyJetChart t i) (t.freyPortQuadraticCoefficientInt i) := by
  fin_cases i <;>
    simp [FreyJetQuotient.quadratic, PrimitiveAdditiveTriple.freyPortRootInt,
      PrimitiveAdditiveTriple.freyPortQuadraticCoefficientInt] <;> ring

/-- The only required inverse is constructed in S_i, not assumed globally in Z. -/
theorem PrimitiveAdditiveTriple.freySectionJet_inverse
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    FreyJetQuotient.derivative (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
      (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) * t.freyChartInverse i = 1 := by
  rw [t.freySectionJet_derivative i]
  exact t.freyChart_mul_inverse i

/-- Full finite coefficient-algebra equivalence:
S_i[X,Y]/((f(X)-Y^2)+(X-r_i,Y)^(N+1)) is S_i[T]/(T^(N+1)).
Both ring maps and both inverse identities are constructed upstream. -/
noncomputable def PrimitiveAdditiveTriple.freySectionJetEquiv
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    FreySectionJetRing t i N ≃ₐ[FreyJetChart t i]
      FreyJetQuotient.Parameter (FreyJetChart t i) N :=
  FreyJetQuotient.algebraEquiv _ _ _ (t.freyChartInverse i)
    (t.freySectionJet_root i) (t.freySectionJet_inverse i) N

/-- The inverse sends the formal parameter to the actual quotient Y coordinate. -/
theorem PrimitiveAdditiveTriple.freySectionJetEquiv_symm_parameter
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    (t.freySectionJetEquiv i N).symm (FreyJetQuotient.parameter (FreyJetChart t i) N) =
      FreyJetQuotient.y (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
        (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) N :=
  FreyJetQuotient.fromParameter_parameter _ _ _ N

/-- The X image is the SAME integral chart polynomial from v0.11, reduced
modulo T^(N+1). No new fitted or rational-only approximant is introduced. -/
theorem PrimitiveAdditiveTriple.freySectionJetEquiv_x
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    t.freySectionJetEquiv i N
      (FreyJetQuotient.x (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
        (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) N) =
      FreyJetQuotient.parameterScalar (FreyJetChart t i) N
        (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) +
      AdjoinRoot.mk ((Polynomial.X : Polynomial (FreyJetChart t i)) ^ (N + 1))
        (t.freyChartApproximant i N) := by
  change FreyJetQuotient.toParameter _ _ _ _ _ _ N _ = _
  rw [FreyJetQuotient.toParameter_x, t.freySectionJet_quadratic i]
  congr 1
  have hm := FreyJetRecursion.map_iterate
    (AdjoinRoot.mk ((Polynomial.X : Polynomial (FreyJetChart t i)) ^ (N + 1)))
    (Polynomial.C (t.freyChartInverse i))
    (Polynomial.C (algebraMap ℤ (FreyJetChart t i) (t.freyPortQuadraticCoefficientInt i)))
    Polynomial.X N
  simpa [PrimitiveAdditiveTriple.freyChartApproximant, FreyJetQuotient.parameterScalar,
    FreyJetQuotient.parameter] using hm.symm

/-- Quotient truncation is independently defined from inclusion of relation ideals. -/
def PrimitiveAdditiveTriple.freySectionJetTruncate (t : PrimitiveAdditiveTriple)
    (i : Fin 3) (M N : ℕ) (hMN : M ≤ N) :
    FreySectionJetRing t i N →+* FreySectionJetRing t i M :=
  FreyJetQuotient.truncate _ _ _ M N hMN

/-- The relative ring isomorphisms commute with the actual truncation maps. -/
theorem PrimitiveAdditiveTriple.freySectionJetEquiv_truncate
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (M N : ℕ) (hMN : M ≤ N)
    (u : FreySectionJetRing t i N) :
    t.freySectionJetEquiv i M (t.freySectionJetTruncate i M N hMN u) =
      FreyJetQuotient.parameterTruncate (FreyJetChart t i) M N hMN
        (t.freySectionJetEquiv i N u) :=
  FreyJetQuotient.toParameter_truncate _ _ _ _
    (t.freySectionJet_root i) (t.freySectionJet_inverse i) M N hMN u

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
