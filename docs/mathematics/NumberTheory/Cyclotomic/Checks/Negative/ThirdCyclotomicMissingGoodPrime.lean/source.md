# Complete source: GRWTSK.NumberTheory.Cyclotomic.Checks.Negative.ThirdCyclotomicMissingGoodPrime

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6894e251ae07ab3988f58b6dec2adf41450aaaf6` · SHA-256 `14527265f71696aa97da8f12239422816bb8ada7f8add5343613dee8426cfb06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- The accepted positive module proves the actual ramified maximal quotient root equals1
and is not primitive3; maximality cannot replace the good-prime exclusion. -/
import GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicReduction
namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction.Checks
noncomputable section

-- Intended rejection: actual maximality is true but does not prove lambda is outside this ideal.
example : IsPrimitiveRoot (Ideal.Quotient.mk ramifiedIdeal omega) 3 :=
  omega_reduced_primitive ramifiedIdeal ramifiedIdeal_isMaximal

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction.Checks
```
