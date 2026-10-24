# Complete source: GRWTSK.NumberTheory.Ideal.Checks.Negative.CompactNormMissingZero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67d3ff4db9479697fe293ec8f8ce493c811d66a3` · SHA-256 `b8449700ee581fd5f2f927c9ce7397bff590d56ed504c0fd3cdc1c16f92d02ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- The accepted positive module proves actual infinite integer-ideal support after removing
zero-ideal cancellation, despite the genuine compact-window implication and X=1>0. -/
import GRWTSK.NumberTheory.Ideal.Checks.Positive.CompactNormSupport
namespace GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
noncomputable section

-- Intended rejection: a real reflexive inequality is not the missing zero-ideal cancellation proof.
example : (Function.support zeroFiber).Finite :=
  finite_support_norm_triple integerWindow integerWindow_compact 1 (by norm_num)
    zeroFiber (le_refl (0:ℝ)) zeroFiber_window

end
end GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
```
