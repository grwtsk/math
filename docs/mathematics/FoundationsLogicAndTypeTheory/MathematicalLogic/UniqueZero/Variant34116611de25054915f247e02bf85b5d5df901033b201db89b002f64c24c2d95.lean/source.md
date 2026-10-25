# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UniqueZero.Variant34116611de25054915f247e02bf85b5d5df901033b201db89b002f64c24c2d95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69c684cebb2237ff2561a287e284d0f140607e7f` · SHA-256 `34116611de25054915f247e02bf85b5d5df901033b201db89b002f64c24c2d95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.ArgumentPrinciple

/-!
# Count-one zero isolation

Uniqueness and simplicity are consequences of a multiplicity-sensitive count
of one.  They are not separately supplied numerical assertions.
-/

namespace Mathematics.RHIsolation

def HasSimpleZero
    (xi : ℂ → ℂ)
    (multiplicity : ℂ → Nat)
    (z : ℂ) : Prop :=
  xi z = 0 ∧ multiplicity z = 1

structure UniqueZeroCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cell : AnalyticCell) where
  countCertificate :
    ArgumentPrincipleCertificate authority cell
  count_eq_one :
    countCertificate.count = 1

namespace UniqueZeroCertificate

noncomputable def zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell) : ℂ :=
  Classical.choose <| by
    apply
      (authority.divisor cell).exists_zero_of_count_pos
    rw [certificate.countCertificate.countSound,
      certificate.count_eq_one]
    exact Nat.zero_lt_one

theorem zero_spec
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell) :
    certificate.zero ∈ cell.interior ∧
      xi certificate.zero = 0 :=
  Classical.choose_spec <| by
    apply
      (authority.divisor cell).exists_zero_of_count_pos
    rw [certificate.countCertificate.countSound,
      certificate.count_eq_one]
    exact Nat.zero_lt_one

theorem zero_mem
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell) :
    certificate.zero ∈ cell.interior :=
  certificate.zero_spec.1

theorem xi_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell) :
    xi certificate.zero = 0 :=
  certificate.zero_spec.2

theorem unique
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell)
    (z : ℂ)
    (z_mem : z ∈ cell.interior)
    (z_zero : xi z = 0) :
    z = certificate.zero := by
  let divisor := authority.divisor cell
  have divisorCount :
      divisor.count = 1 := by
    rw [certificate.countCertificate.countSound,
      certificate.count_eq_one]
  have cardAtMostOne :
      divisor.points.card ≤ 1 := by
    exact divisor.card_le_count.trans_eq divisorCount
  have zDivisor : z ∈ divisor.points :=
    (divisor.mem_iff z).mpr ⟨z_mem, z_zero⟩
  have selectedDivisor :
      certificate.zero ∈ divisor.points :=
    (divisor.mem_iff certificate.zero).mpr
      certificate.zero_spec
  exact
    (Finset.card_le_one.mp cardAtMostOne)
      z zDivisor certificate.zero selectedDivisor

theorem multiplicity_eq_one
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell) :
    (authority.divisor cell).multiplicity
        certificate.zero = 1 := by
  let divisor := authority.divisor cell
  have selectedDivisor :
      certificate.zero ∈ divisor.points :=
    (divisor.mem_iff certificate.zero).mpr
      certificate.zero_spec
  have points_eq :
      divisor.points = {certificate.zero} := by
    ext z
    constructor
    · intro hz
      have equality :
          z = certificate.zero :=
        certificate.unique z
          ((divisor.mem_iff z).mp hz).1
          ((divisor.mem_iff z).mp hz).2
      simp [equality]
    · intro hz
      have equality :
          z = certificate.zero := by
        simpa using hz
      simpa [equality] using selectedDivisor
  have divisorCount :
      divisor.count = 1 := by
    rw [certificate.countCertificate.countSound,
      certificate.count_eq_one]
  simpa [AnalyticZeroDivisor.count, points_eq]
    using divisorCount

theorem simple
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell) :
    HasSimpleZero
      xi
      (authority.divisor cell).multiplicity
      certificate.zero :=
  ⟨certificate.xi_zero,
    certificate.multiplicity_eq_one⟩

end UniqueZeroCertificate

theorem countOne_implies_unique_simple_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (count :
      ArgumentPrincipleCertificate authority cell)
    (countOne : count.count = 1) :
    ∃! z,
      z ∈ cell.interior ∧
      HasSimpleZero
        xi
        (authority.divisor cell).multiplicity
        z := by
  let certificate :
      UniqueZeroCertificate authority cell :=
    {
      countCertificate := count
      count_eq_one := countOne
    }
  refine
    ⟨certificate.zero,
      ⟨certificate.zero_mem, certificate.simple⟩,
      ?_⟩
  intro z hz
  exact certificate.unique z hz.1 hz.2.1

theorem uniqueZero_simple
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      UniqueZeroCertificate authority cell) :
    HasSimpleZero
      xi
      (authority.divisor cell).multiplicity
      certificate.zero :=
  certificate.simple

end Mathematics.RHIsolation
```
