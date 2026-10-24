# Complete source: GRWTSK.Topology.GeneralTopology.SoundFilter.Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0170bf816fbd8da85c232114b1978ae5c0e2c1a` · SHA-256 `788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Prime.Basic

namespace Noeoueue.Modular.SoundFilter

def Accepts (r n : Nat) : Prop := n = r ∨ ¬ r ∣ n

theorem prime_or_not_dvd {p r : Nat} (hp : p.Prime) (hr : r.Prime) : p = r ∨ ¬ r ∣ p := by
  by_cases equal : p = r
  · exact Or.inl equal
  · right
    intro divides
    have cases := (Nat.dvd_prime hp).mp divides
    cases cases with
    | inl one => exact hr.ne_one one
    | inr same => exact equal same.symm

theorem sound_filter_retains_prime {p r : Nat} (hp : p.Prime) (hr : r.Prime) : Accepts r p := by
  simpa [Accepts, eq_comm] using prime_or_not_dvd hp hr

theorem filter_retains_own_prime (r : Nat) : Accepts r r := Or.inl rfl

end Noeoueue.Modular.SoundFilter
```
