# Complete source: GRWTSK.NumberTheory.Cyclotomic.Checks.Negative.ThirdCyclotomicIntegerNorm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a306bcfe194520f1aa5701c87745b1dfbca4e52e` · SHA-256 `6b6c3a2a04073e115804436139074514d7abb337ab0752d688e9e2cddf95d177`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- The accepted positive module proves norm_O((2))=4 and norm_Z((2))=2,
and their genuine inequality; the integer value cannot be assigned to the O ideal. -/
import GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicIdeals
namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
noncomputable section

-- Intended rejection: the actual degree-two ideal norm theorem proves 4, not the integer value 2.
example : Ideal.absNorm (Ideal.span ({(2:O)} : Set O))=2 :=
  principal_two_absNorm

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
```
