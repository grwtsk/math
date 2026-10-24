# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ConductorThreePolarizedPackets.Variant3649c9e74f36180650469fd33620ff9086bdc5843479bebdfe94a1a6fc05fcc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16bd6d18e96dfce895abaefff03ae9629cac1322` · SHA-256 `6cc3d7ddb70a8276cb724da3ae3b5410e3013d9b39b8514c89b4b684f050c5b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SmoothDyadicWeight.Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.SmoothDyadicWeight.Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"d7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreePolarizedPackets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVonMangoldt
public import Surface.Core.PrimeWalkWangZahlGeometry
public import Mathlib.Analysis.Distribution.SchwartzSpace.Deriv
import Mathlib.Tactic

/-!
# Polarized conductor-three packet theorem surface

This module fixes the arithmetic target and gives the speculative geometric
bridge one unmistakable name.  The input to the bridge is the unsummed
coefficient sequence `chi_3(n) * Lambda(n)`, not its final scalar sum.  Thus a
future proof must obtain cancellation from factorization, polarization, and
packet overlap; it cannot hide the desired estimate in a lossless scalar
encoder or in a calibration field.

This file stops at the coefficient block, packet configuration, and concrete
unsigned geometry.  The older BV-quantified endpoint remains in
`ConductorThreeWangZahlLargeSieve`; the preferred fixed-Vaughan,
coefficient-sensitive Type II target is stated in
`ConductorThreeWangZahlTTStar`.  Neither surface obtains signed cancellation
from unsigned tube volume alone.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.SmoothDyadicWeight.Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6

public section

namespace Surface.Core.ConductorThreePolarizedPackets

noncomputable section

open scoped BigOperators ENNReal
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeVonMangoldt

/-! ## Smooth arithmetic target -/

/-- A Schwartz weight supported in the fixed positive annulus `[1/2, 2]`.
Using a fixed support makes the associated arithmetic sum literally finite,
so its definition does not rely on a silent `tsum` summability convention. -/
structure SmoothDyadicWeight where
  toSchwartz : SchwartzMap ℝ ℝ
  support_subset :
    Function.support toSchwartz ⊆ Set.Icc (1 / 2 : ℝ) 2

instance instCoeFunSmoothDyadicWeight : CoeFun SmoothDyadicWeight (fun _ ↦ ℝ → ℝ) :=
  ⟨fun W ↦ W.toSchwartz⟩

/-- Finite Schwartz-seminorm cost.  Uniform dependence on this quantity is
what makes a later smooth partition-of-unity unsmoothing theorem meaningful. -/
@[expose]
def smoothWeightCost (r : ℕ) (W : SmoothDyadicWeight) : ℝ :=
  ∑ k ∈ Finset.range (r + 1),
    ∑ j ∈ Finset.range (r + 1),
      (SchwartzMap.seminorm ℝ k j) W.toSchwartz

/-- The exact finite, smoothly weighted conductor-three sum at scale `N`. -/
@[expose]
def polarizedSmoothedSum (W : SmoothDyadicWeight) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (2 * N + 1),
    twistedVonMangoldtThree n * W ((n : ℝ) / N)

/-- The half-plus-epsilon smooth target.  Constants may depend on `epsilon`
and on the fixed smooth weight, but not on the arithmetic scale `N`. -/
@[expose]
def ConductorThreePolarizedPacketEstimate : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ r : ℕ, ∃ C : ℝ, 0 ≤ C ∧
      ∀ (W : SmoothDyadicWeight) (N : ℕ), 2 ≤ N →
          |polarizedSmoothedSum W N| ≤
            C * (1 + smoothWeightCost r W) *
              (N : ℝ) ^ (1 / 2 + epsilon)

/-! ## Coefficient-level bilinear blocks -/

/-- A finite unsummed block of the actual twisted von Mangoldt coefficients. -/
@[expose]
def PrimeCoefficientBlock (N : ℕ) := Fin (2 * N + 1) → ℝ

/-- The canonical coefficient block; no cumulative discrepancy has yet been
taken. -/
@[expose]
def actualPrimeCoefficientBlock (N : ℕ) : PrimeCoefficientBlock N :=
  fun n ↦ twistedVonMangoldtThree n

/-- One Type-I/Type-II style factorized block.  The character factors are
part of its definition, so an arbitrary all-positive coefficient array is not
silently rebranded as conductor-three arithmetic. -/
structure TwistedBilinearBlock where
  arithmeticScale : ℕ
  left : Finset ℕ
  right : Finset ℕ
  alpha : ℕ → ℂ
  beta : ℕ → ℂ
  weight : SmoothDyadicWeight

/-- Exact signed value of a twisted bilinear block. -/
@[expose]
def TwistedBilinearBlock.sum (block : TwistedBilinearBlock) : ℂ :=
  ∑ m ∈ block.left, ∑ n ∈ block.right,
    block.alpha m * block.beta n *
      (conductorThreeIntegerValue m : ℂ) *
      (conductorThreeIntegerValue n : ℂ) *
      (block.weight (((m * n : ℕ) : ℝ) / block.arithmeticScale) : ℂ)

/-- The two orthogonal arithmetic polarization channels. -/
inductive CharacterPolarization
  | plus
  | minus
  deriving DecidableEq, Repr

/-- Coefficient sign determines a polarization without coloring or changing
the underlying geometric carrier.  Coefficients equal to zero are absent from
both nontrivial residue channels and are assigned to `plus` only as a total
serialization convention. -/
@[expose]
def coefficientPolarization (coefficient : ℝ) : CharacterPolarization :=
  if coefficient < 0 then .minus else .plus

/-! ## Honest geometric research boundary -/

/-- Data produced by an explicit packet lift of one factorized arithmetic
block.  `signedReadout_eq_block` asks only for exact reconstruction.  It does
not contain a square-root estimate, a GRH predicate, or a target upper bound. -/
structure PolarizedArithmeticPacketConfiguration where
  block : TwistedBilinearBlock
  geometricScale : ℝ
  geometricScale_pos : 0 < geometricScale
  epsilon : ℝ
  epsilon_pos : 0 < epsilon
  signedReadout : ℂ
  signedReadout_eq_block : signedReadout = block.sum

/-- Concrete unsigned Wang--Zahl data attached to a packet configuration.
The family already contains measurable tubes/shadings, essential
distinctness, bounded-region containment, and aggregate density; the extra
field supplies the convex Wolff bound.  No signed estimate is stored here. -/
structure PolarizedPacketGeometry
    (configuration : PolarizedArithmeticPacketConfiguration) where
  Packet : Type
  instDecidableEq : DecidableEq Packet
  family : @Surface.Core.PrimeWalkWangZahlGeometry.EuclideanShadedTubeFamily
    Packet instDecidableEq
  tubes_nonempty : family.tubes.Nonempty
  scale_eq : family.delta = configuration.geometricScale
  wolffConstant : ℝ≥0∞
  convexWolff :
    Surface.Core.PrimeWalkWangZahlGeometry.KatzTaoConvexWolffAtMost
      family wolffConstant

/-- Geometric admissibility means that concrete unsigned Wang--Zahl data have
actually been constructed.  Packet-frame localization, `TT*`, two-scale
grain control, and signed off-diagonal estimates remain theorem obligations
of the large-sieve proof rather than fields of this certificate. -/
@[expose]
def PolarizedArithmeticPacketConfiguration.WangZahlAdmissible
    (configuration : PolarizedArithmeticPacketConfiguration) : Prop :=
  0 < configuration.block.arithmeticScale ∧
    Nonempty (PolarizedPacketGeometry configuration)

end

end Surface.Core.ConductorThreePolarizedPackets
```
