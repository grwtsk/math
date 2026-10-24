/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical comparison with OpenAI, "The Quasi-Riemann Hypothesis:
A Zero-Free Half-Plane Re(s)>7/8" (2026), source snapshot
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean
(blob 46c67f4000906b1391a471d6e6396ac0da3c16a5).
The upstream mathematical declaration is not imported or asserted here.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCompactPatch

set_option autoImplicit false

/-!
# Quasi-Riemann nonvanishing and compact variation certificates

One exact theorem comparison connects the OpenAI-style seven-eighths proposition
to GRWTSK's proof-carrying finite variation covers. A cover of *every* compact
K in the strict right half-plane, excluding the zeta pole at s=1, is equivalent
to the raw seven-eighths nonvanishing claim.

Forward transport uses actual zeta differentiability at every point of K and
the existing compact variation-cover theorem. Reverse transport uses singleton
compact sets and separately handles Mathlib's totalized value at s=1.

The finite covers use classical compactness, not an effective algorithm or
numerical intervals. A single bounded K cannot establish the half-plane
claim. This source proves only an equivalence and a conditional admitted-port
consumer; it does not import the external proof, close the remaining
(1/2, 7/8] strip, or prove RH.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_PORT_BLOCKED.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

/-- Every compact subset of the strict seven-eighths zero-free half-plane,
excluding the pole at 1, admits genuine zeta sample-and-variation certificates.
No effective bound on patch count, centers, or radii is part of the statement. -/
def SevenEighthsCompactPatchCompleteness : Prop :=
  ∀ K : Set ℂ, IsCompact K →
    (∀ s ∈ K, (7 / 8 : ℝ) < s.re ∧ s ≠ 1) →
      Nonempty (FiniteVariationCover riemannZeta K)

/-- The *exact* source-style quasi-RH seven-eighths claim is equivalent to
existential finite variation covers on every compact pole-free subset of its
strict half-plane. This is a comparison theorem, not a proof of either side. -/
theorem openAISevenEighthsClaim_iff_compactPatchCompleteness :
    OpenAISevenEighthsClaim ↔ SevenEighthsCompactPatchCompleteness := by
  constructor
  · intro hsource K hcompact hregion
    apply exists_finiteVariationCover_of_compact hcompact
    · intro s hs
      exact (differentiableAt_riemannZeta (hregion s hs).2).continuousAt
    · intro s hs
      exact hsource s (hregion s hs).1
  · intro hcomplete s hs
    by_cases hpole : s = 1
    · subst s
      exact riemannZeta_one_ne_zero
    · have hcompact : IsCompact ({s} : Set ℂ) := isCompact_singleton
      have hregion : ∀ z ∈ ({s} : Set ℂ),
          (7 / 8 : ℝ) < z.re ∧ z ≠ 1 := by
        intro z hz
        have heq : z = s := by simpa only [Set.mem_singleton_iff] using hz
        subst z
        exact ⟨hs, hpole⟩
      obtain ⟨cover⟩ : Nonempty
          (FiniteVariationCover riemannZeta ({s} : Set ℂ)) :=
        hcomplete {s} hcompact hregion
      exact cover.nonzero (by simp)

/-- A future source-accepted OpenAI seven-eighths port yields genuine finite
variation certificates on each compact pole-free target. The port requires
separate source alignment, local theorem admission and executed checks. -/
theorem AcceptedExternalRawHalfPlanePort.toCompactVariationCover
    (port : AcceptedExternalRawHalfPlanePort (7 / 8 : ℝ))
    (K : Set ℂ) (hcompact : IsCompact K)
    (hregion : ∀ s ∈ K, (7 / 8 : ℝ) < s.re ∧ s ≠ 1) :
    Nonempty (FiniteVariationCover riemannZeta K) :=
  (openAISevenEighthsClaim_iff_compactPatchCompleteness.mp
    port.toOpenAISevenEighthsClaim) K hcompact hregion

end GRWTSK.RiemannHypothesis
