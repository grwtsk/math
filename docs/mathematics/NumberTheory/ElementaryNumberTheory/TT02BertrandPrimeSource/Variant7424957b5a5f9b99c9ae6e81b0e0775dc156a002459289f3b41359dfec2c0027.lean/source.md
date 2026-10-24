# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.TT02BertrandPrimeSource.Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbeb47acd62e1e6c3281dfb390ef412cfd58020e` · SHA-256 `7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Theorems.TT01_Bertrand

namespace FCRS.Transport.Theorems

/-- Prime-source domain restriction, explicitly invoking full Bertrand. -/
theorem tt02_bertrandPrimeSource :
    ∀ p : Nat, Nat.Prime p ∧ 1 < p →
      ∃ q : Nat, Nat.Prime q ∧ p < q ∧ q < 2 * p := by
  intro p hp
  have fullClaim : IntervalClaim bertrandProfile := by
    intro n hn
    obtain ⟨q, hPrime, hnq, hqUpper⟩ := tt01_bertrand n hn
    exact ⟨q, bertrandAdmissible hn hPrime hnq hqUpper⟩
  obtain ⟨q, hAdmissible⟩ :=
    bertrandPrimeSourceRefines.transportClaim fullClaim p hp
  exact ⟨q, hAdmissible.2.2, hAdmissible.2.1.1,
    hAdmissible.2.1.2⟩

end FCRS.Transport.Theorems
```
