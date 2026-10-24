# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ExternalSevenEighthsBand

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b74b3146f9365cbe4dd42df1c43897f3d9b0be6d` · SHA-256 `d43b7c0186a991337a1ad4f5c3904b41aa65d66c114e65aaf4bce6486fa6b10c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External theorem candidate:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry

/-!
# Seven-eighths zero-free premise to a symmetric nontrivial-zero band

This file does not import or assert the external OpenAI theorem. It defines the
exact local premise corresponding to that theorem and proves the source-local
consequence obtained by the already formalized zeta reflection symmetry.

If zeta has no zeros with real part greater than 7/8, then every GRWTSK
nontrivial zeta zero lies in the closed band 1/8 <= Re(s) <= 7/8.

This remains far weaker than RH.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis

/-- Exact local proposition matching the strict right-half-plane conclusion of
the selected external OpenAI theorem. -/
def SevenEighthsZeroFree : Prop :=
  ∀ s : ℂ, (7 / 8 : ℝ) < s.re → riemannZeta s ≠ 0

/-- A nontrivial zero cannot lie to the right of 7/8 under the selected
zero-free premise. -/
theorem NontrivialZetaZero.re_le_seven_eighths
    (hseven : SevenEighthsZeroFree)
    {s : ℂ} (hs : NontrivialZetaZero s) :
    s.re ≤ (7 / 8 : ℝ) := by
  by_contra h
  have hgt : (7 / 8 : ℝ) < s.re := lt_of_not_ge h
  exact (hseven s hgt) hs.1

/-- Reflection of the same strict right-half-plane theorem excludes real parts
below 1/8. The reflection theorem is already local and does not assume RH. -/
theorem NontrivialZetaZero.one_eighth_le_re
    (hseven : SevenEighthsZeroFree)
    {s : ℂ} (hs : NontrivialZetaZero s) :
    (1 / 8 : ℝ) ≤ s.re := by
  have hreflect := hs.reflect
  have hright : (zeroReflect s).re ≤ (7 / 8 : ℝ) :=
    hreflect.re_le_seven_eighths hseven
  simp only [zeroReflect, Complex.sub_re, Complex.one_re] at hright
  linarith

/-- Exact symmetric band consequence of the external-style 7/8 premise. -/
theorem NontrivialZetaZero.mem_closed_seven_eighths_band
    (hseven : SevenEighthsZeroFree)
    {s : ℂ} (hs : NontrivialZetaZero s) :
    (1 / 8 : ℝ) ≤ s.re ∧ s.re ≤ (7 / 8 : ℝ) :=
  ⟨hs.one_eighth_le_re hseven, hs.re_le_seven_eighths hseven⟩

/-- The band theorem is explicitly only a localization result. It leaves the
critical-line equation as an independent proposition. -/
theorem seven_eighths_band_does_not_discharge_line
    (hseven : SevenEighthsZeroFree)
    {s : ℂ} (hs : NontrivialZetaZero s) :
    ((1 / 8 : ℝ) ≤ s.re ∧ s.re ≤ (7 / 8 : ℝ)) :=
  hs.mem_closed_seven_eighths_band hseven

end GRWTSK.RiemannHypothesis
```
