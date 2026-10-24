/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formal-source assistance: ChatGPT.
Classical Vaughan convolution algebra; no novelty claim for the identity.
Candidate source, NOT compiled. This ring lemma is not yet its complete
ArithmeticFunction / source-measure adapter.
-/
import Mathlib
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.TruncatedConvolutionIdentity

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

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.TruncatedConvolutionIdentity
