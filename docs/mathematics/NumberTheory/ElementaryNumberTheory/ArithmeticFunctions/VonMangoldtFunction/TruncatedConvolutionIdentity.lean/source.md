# Complete source: GRWTSK.NumberTheory.VonMangoldt.TruncatedConvolutionIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a22874615d3717a8dea25a68aa9d634a8442a2b` · SHA-256 `b388bd707a3704f56b17894d7da553526a9057b4ee89c885eeaf90625026c233`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formal-source assistance: ChatGPT.
Classical Vaughan convolution algebra; no novelty claim for the identity.
Candidate source, NOT compiled. This ring lemma is not yet its complete
ArithmeticFunction / source-measure adapter.
-/
import Mathlib
set_option autoImplicit false
namespace GRWTSK.NumberTheory.VonMangoldt.TruncatedConvolutionIdentity

variable {R : Type*} [CommRing R]

/-- The complete small/large convolution decomposition. -/
theorem exact_split (mu oneSource lambda logSource muLo lambdaLo : R)
    (hInv : mu * oneSource = 1)
    (hLog : logSource = oneSource * lambda) :
    lambda = lambdaLo + muLo * logSource - muLo * oneSource * lambdaLo +
      (mu - muLo) * oneSource * (lambda - lambdaLo) := by
  symm
  calc
    _ = (mu * oneSource) * lambda +
        (1 - mu * oneSource) * lambdaLo := by rw [hLog]; ring
    _ = lambda := by rw [hInv]; ring

/-- The large factor is the complementary truncated divisor field. -/
theorem large_factor (mu oneSource muLo lambda lambdaLo : R)
    (hInv : mu * oneSource = 1) :
    (mu-muLo)*oneSource*(lambda-lambdaLo) =
      (1-muLo*oneSource)*(lambda-lambdaLo) := by
  calc
    _ = (mu*oneSource-muLo*oneSource)*(lambda-lambdaLo) := by ring
    _ = _ := by rw [hInv]

/-- The large-source window may drop the small Lambda term only after this fact. -/
theorem split_on_large_window (mu oneSource lambda logSource muLo lambdaLo : R)
    (hInv : mu*oneSource=1) (hLog : logSource=oneSource*lambda)
    (hSmall : lambdaLo=0) :
    lambda = muLo*logSource + (mu-muLo)*oneSource*lambda := by
  simpa [hSmall] using exact_split mu oneSource lambda logSource muLo lambdaLo hInv hLog

/-- Both continuous main profiles return exactly to the original -1. -/
theorem continuous_centering (a b z : R) :
    (-a*z-b)+(a*z+b-1) = -1 := by ring

/-- The product density has both the logarithmic coefficient and its constant. -/
theorem main_profile_rewrite (a l x e v : R) :
    a*(l+x)-e-a*v = a*l+(a*x-e-a*v) := by ring

end GRWTSK.NumberTheory.VonMangoldt.TruncatedConvolutionIdentity
```
