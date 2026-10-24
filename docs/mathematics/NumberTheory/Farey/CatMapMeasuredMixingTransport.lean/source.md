# Complete source: GRWTSK.NumberTheory.Farey.CatMapMeasuredMixingTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `466495b9fb8ffb9c3c55e84c9b73389c69b3531b` · SHA-256 `4d5daf643c6010c3af434608a4ef65b87cb3c2696211227ef4b5f8facd2e0b1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI. External formalizations retain their own authorship.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
The result is conditional on a named measured-mixing supplier and
positive real mass for every nonempty open set; neither is silently
asserted for the locally defined Arnold cat map.
-/
import GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction
import Mathlib.MeasureTheory.Measure.Real
import Mathlib.Tactic

/-!
# Exact transport from REAL set mixing and positive open mass to odd returns

This module resolves an important TYPE-LEVEL intermediate supplier
between Marcel Morgenstern's externally formalized measure-theoretic
cat-map mixing statement and the local Farey torsion phase no-go.

External source, pinned separately:
  ErgodicTheory.CatMapToral.catTorus_mixing
  (A B : Set T2) (hA : MeasurableSet A) (hB : MeasurableSet B):
  Tendsto (fun n => volume.real (A ∩ catTorus^[n] ⁻¹' B))
      atTop (nhds (volume.real A * volume.real B)).

We adopt EXACTLY that real-correlation shape for an arbitrary
measure μ on a Borel topological space X. Under a separately
supplied positive-open-mass property, every pair of nonempty
open U,V intersects under all sufficiently late iterates.
This is the local EventualOpenMixing interface, and supplies
HasOddLocalReturns at the actual Farey-cat torsion point.

No measure-mixing theorem is imported from the external 2026
repository; its different Lean toolchain and torus definitions
need a checked source identification. In particular the
full-support and mixing premises below are EXPLICIT.
The resulting cat no-extension theorem is CONDITIONAL.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.CatMapMeasuredMixingTransport

open Filter MeasureTheory
open GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge
open GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction

universe u
variable {X : Type u} [TopologicalSpace X] [MeasurableSpace X]
  [BorelSpace X]

/-- Positivity for every nonempty OPEN set. This is stronger than
mere nonzero total mass, and is the exact full-support property
used in passing from measure mixing to topological mixing.
The real measure makes finiteness/positive real mass explicit. -/
def HasPositiveOpenRealMass (μ : Measure X) : Prop :=
  ∀ U : Set X, IsOpen U → U.Nonempty → 0 < μ.real U

/-- Exact REAL correlation interface matching the externally
formalized cat-map mixing theorem. This definition does NOT
assert existence of an invariant probability measure or prove
mixing for a specific map. -/
def HasRealSetMixing (T : X → X) (μ : Measure X) : Prop :=
  ∀ (A B : Set X), MeasurableSet A → MeasurableSet B →
    Tendsto
      (fun n : ℕ => μ.real (A ∩ (T^[n]) ⁻¹' B))
      atTop (𝓝 (μ.real A * μ.real B))

/-- With positive real mass for every nonempty open set, the
external-style measured mixing limit yields actual eventual
intersection of ANY two nonempty open sets. All limit and
measure hypotheses are visible; positivity of the limiting
product does the mathematical work. -/
theorem eventualOpenMixing_of_realSetMixing
    (T : X → X) (μ : Measure X)
    (hMix : HasRealSetMixing T μ)
    (hSupport : HasPositiveOpenRealMass μ) :
    EventualOpenMixing T := by
  intro U V hU hV hUNonempty hVNonempty
  have hPos : 0 < μ.real U * μ.real V :=
    mul_pos (hSupport U hU hUNonempty)
      (hSupport V hV hVNonempty)
  have hEventually :
      ∀ᶠ n : ℕ in atTop,
        0 < μ.real (U ∩ (T^[n]) ⁻¹' V) :=
    (hMix U V hU.measurableSet hV.measurableSet).eventually
      (eventually_gt_nhds hPos)
  obtain ⟨N, hN⟩ := Filter.eventually_atTop.1 hEventually
  refine ⟨N, ?_⟩
  intro n hn
  obtain ⟨x, hx⟩ :=
    MeasureTheory.nonempty_of_measureReal_ne_zero
      (ne_of_gt (hN n hn))
  exact ⟨x, hx.1, hx.2⟩

/-- The exact missing local odd-return supplier can be derived
from just the two independently named measure hypotheses.
This conclusion is UNCONDITIONAL given hMix and hSupport,
not an unconditional assertion of either premise. -/
theorem oddLocalReturns_of_realSetMixing
    (T : X → X) (μ : Measure X)
    (hMix : HasRealSetMixing T μ)
    (hSupport : HasPositiveOpenRealMass μ)
    (p : X) :
    HasOddLocalReturns T p :=
  oddLocalReturns_of_eventualOpenMixing T
    (eventualOpenMixing_of_realSetMixing T μ hMix hSupport) p

/-- Actual Farey-cat torus specialization. No imported Haar
probability-measure assertion is supplied: μ and both required
properties remain explicit mathematical parameters. -/
theorem catTorus_oddLocalReturns_of_realSetMixing
    (μ : Measure Torus2)
    (hMix : HasRealSetMixing catTorus μ)
    (hSupport : HasPositiveOpenRealMass μ) :
    HasOddLocalReturns catTorus
      (torsionEmbedding finiteWitness) :=
  oddLocalReturns_of_realSetMixing catTorus μ
    hMix hSupport (torsionEmbedding finiteWitness)

/-- CONDITIONAL finite-torsion-to-global no-extension bridge.
If the chosen actual torus measure is strongly mixing IN THE
EXACT REAL SET-CORRELATION SENSE and has positive real mass
on all nonempty opens, the finite -1 readout cannot extend
to any continuous global cat-map -1 eigenfunction.

The source neither establishes those two hypotheses for volume
nor imports the external Morgenstern mixing theorem. -/
theorem no_continuous_cat_phase_extension_of_realSetMixing
    (μ : Measure Torus2)
    (hMix : HasRealSetMixing catTorus μ)
    (hSupport : HasPositiveOpenRealMass μ) :
    ¬ ∃ F : Torus2 → ℂ,
      Continuous F ∧
      (∀ x : Torus2,
        F (catTorus x) = (-1 : ℂ) * F x) ∧
      (∀ v : Vec3,
        F (torsionEmbedding v) = finiteCatReadout v) :=
  no_continuous_cat_phase_extension_of_eventualOpenMixing
    (eventualOpenMixing_of_realSetMixing catTorus μ hMix hSupport)

end GRWTSK.NumberTheory.Farey.CatMapMeasuredMixingTransport
```
