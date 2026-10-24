# Complete source: GRWTSK.Analysis.SpecialFunctions.ClassicalFunctions.GammaFunction.ExplicitLanczosAndSuppliedBounds.Variant03d73452c99c6fd3.FormulaDomainAndInequalityData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `348edb5033dfe80d6fdeab9687b0737959ab7412` · SHA-256 `f0b3a1796d5fb8ffea0a5457303a3f030e757fb826aeff7959b94fdd78eacb32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FormulaDomainAndInequalityData
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.5.120.010.010 gamma function (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Lanczos coefficients/core/reflection formula, gammaDomain, rational pole classifier, explicit error constants, finite magnitude expression and complete supplied inequality certificates retain exact values and fields. There is no theorem identifying lanczosGammaModel with the mathematical Gamma function or establishing any approximation certificate for foreign bytes. Real.rpow domain and nonnegative result stay exact; remaining success/failure/overflow relations and their genuine supplied-certificate proofs remain whole archive text. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- Branch selected by the real Lanczos profile. -/
inductive GammaBranch where
  | reflection
  | core
  | pole
  deriving DecidableEq, Repr

/-- The real Gamma domain excludes nonpositive integers. -/
def gammaDomain (value : ℝ) : Prop :=
  ¬ ∃ n : Nat, value = -(n : ℝ)

/-- Exact real constants corresponding to the runtime's nine decimal Lanczos
coefficients. -/
noncomputable def lanczosCoefficients : Fin 9 → ℝ
  | ⟨0, _⟩ => 99999999999980993 / 100000000000000000
  | ⟨1, _⟩ => 6765203681218851 / 10000000000000
  | ⟨2, _⟩ => -12591392167224028 / 10000000000000
  | ⟨3, _⟩ => 77132342877765313 / 100000000000000
  | ⟨4, _⟩ => -17661502916214059 / 100000000000000
  | ⟨5, _⟩ => 12507343278686905 / 1000000000000000
  | ⟨6, _⟩ => -13857109526572012 / 100000000000000000
  | ⟨7, _⟩ => 99843695780195716 / 10000000000000000000000
  | ⟨8, _⟩ => 15056327351493116 / 100000000000000000000000

/-- The nonreflection branch of the runtime Lanczos formula, over exact reals. -/
noncomputable def lanczosCore (value : ℝ) : ℝ :=
  let shifted := value - 1
  let series := lanczosCoefficients 0 +
    lanczosCoefficients 1 / (shifted + 1) +
    lanczosCoefficients 2 / (shifted + 2) +
    lanczosCoefficients 3 / (shifted + 3) +
    lanczosCoefficients 4 / (shifted + 4) +
    lanczosCoefficients 5 / (shifted + 5) +
    lanczosCoefficients 6 / (shifted + 6) +
    lanczosCoefficients 7 / (shifted + 7) +
    lanczosCoefficients 8 / (shifted + 8)
  let t := shifted + 15 / 2
  Real.sqrt (2 * Real.pi) * Real.rpow t (shifted + 1 / 2) *
    Real.exp (-t) * series

/-- Real-valued specification of the runtime's reflection and core branches. -/
noncomputable def lanczosGammaModel (value : ℝ) : ℝ :=
  if value < 1 / 2 then
    Real.pi / (Real.sin (Real.pi * value) * lanczosCore (1 - value))
  else lanczosCore value

/-- Decidable branch classifier used by shared conformance vectors. -/
def gammaBranch (value : ℚ) : GammaBranch :=
  if value ≤ 0 ∧ value = ((Rat.floor value : ℤ) : ℚ) then .pole
  else if value < 1 / 2 then .reflection else .core

/-- Fixed maximum error admitted by the JavaScript Lanczos profile. -/
noncomputable def gammaProfileMaximumError : ℝ := 1 / 10000000000

theorem gammaProfileMaximumError_nonnegative :
    0 ≤ gammaProfileMaximumError := by
  norm_num [gammaProfileMaximumError]

/-- Fixed maximum error admitted by the JavaScript precession profile. -/
noncomputable def precessionProfileMaximumError : ℝ := 1 / 1000000000000

theorem precessionProfileMaximumError_nonnegative :
    0 ≤ precessionProfileMaximumError := by
  norm_num [precessionProfileMaximumError]

/-- Exact largest finite binary64 magnitude `(2 - 2^-52) * 2^1023`. -/
noncomputable def binary64FiniteMagnitudeLimit : ℝ :=
  (2 - (2 : ℝ)⁻¹ ^ 52) * (2 : ℝ) ^ 1023

theorem binary64FiniteMagnitudeLimit_nonnegative :
    0 ≤ binary64FiniteMagnitudeLimit := by
  unfold binary64FiniteMagnitudeLimit
  positivity

/-- An explicit fixed-profile error certificate is required before a floating
Gamma result is promoted to an approximation statement. -/
structure GammaApproximationCertificate where
  input : ℝ
  runtimeOutput : ℝ
  domain : gammaDomain input
  withinProfileError :
    |runtimeOutput - lanczosGammaModel input| ≤ gammaProfileMaximumError

/-- Evidence that an exact real output lies outside an explicitly modeled
finite floating range.  Merely being in an operation's mathematical domain is
not evidence of executable overflow. -/
structure FloatingRangeFailureCertificate where
  exactOutput : ℝ
  exceedsBinary64FiniteRange :
    binary64FiniteMagnitudeLimit < |exactOutput|

end BitMatrix.Runtime.Semantics
```
