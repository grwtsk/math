# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeWangZahlLargeSieve.Variant73cc309becbf8d4b33d342b4a3adcbba7633ad7f8805b9bb176dd91af8c7ce03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `977ba3ad2958658014b6ee6800cd4e2b0699eef1` · SHA-256 `64ac342dd52fa0d8ecc1229b91d76d35f9002d90276b6929e5fa08fced495678`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreePolarizedPacketRoute.Variant9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConductorThreePolarizedPacketRoute.Variant9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1439e052c14caf2214092a52/workspace/lib/Surface/Core/ConductorThreeWangZahlLargeSieve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreePacketUnsmoothing
import Mathlib.Tactic

/-!
# Scale-uniform polarized Wang--Zahl endpoint

This module states the remaining arithmetic--geometric research boundary with
the quantifiers in the non-vacuous order.  A route constructs, for every
scale and every bounded-variation multiplier, an exact polarized packet
configuration and concrete Wang--Zahl geometry.  Its large-sieve estimate
then supplies one constant uniform over all of those configurations.

Neither route existence nor the large-sieve estimate is proved here.  The
checked results only show that their conjunction gives the BV packet bound.
In particular, no per-configuration existential constant can masquerade as a
uniform arithmetic estimate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreePolarizedPacketRoute.Variant9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab

public section

namespace Surface.Core.ConductorThreeWangZahlLargeSieve

noncomputable section

open Surface.Core.ConductorThreeHalfPlusEpsilon
open Surface.Core.ConductorThreePacketUnsmoothing
open Surface.Core.ConductorThreePolarizedPackets

/-- A coefficient-level packet construction for every scale and discrete BV
multiplier.  Exact readout recovery is bookkeeping; `geometry` is the
substantive construction of measurable shaded tubes and their convex Wolff
certificate.  No decay estimate is stored in this structure. -/
structure ConductorThreePolarizedPacketRoute where
  configuration :
    (epsilon : ℝ) → 0 < epsilon →
      ℕ → (ℕ → ℝ) → PolarizedArithmeticPacketConfiguration
  arithmeticScale_eq :
    ∀ (epsilon : ℝ) (hepsilon : 0 < epsilon)
      (N : ℕ) (weight : ℕ → ℝ),
      (configuration epsilon hepsilon N weight).block.arithmeticScale = N
  epsilon_eq :
    ∀ (epsilon : ℝ) (hepsilon : 0 < epsilon)
      (N : ℕ) (weight : ℕ → ℝ),
      (configuration epsilon hepsilon N weight).epsilon = epsilon
  readout_recovers_weightedSum :
    ∀ (epsilon : ℝ) (hepsilon : 0 < epsilon)
      (N : ℕ) (weight : ℕ → ℝ),
      (configuration epsilon hepsilon N weight).signedReadout =
        (conductorThreeDiscreteWeightedSum N weight : ℂ)
  geometry :
    ∀ (epsilon : ℝ) (hepsilon : 0 < epsilon)
      (N : ℕ) (weight : ℕ → ℝ),
      2 ≤ N → DiscretePacketWeightCost N weight ≤ 2 →
        Nonempty (PolarizedPacketGeometry
          (configuration epsilon hepsilon N weight))

/-- Every relevant configuration constructed by a route is genuinely
Wang--Zahl admissible. -/
@[surface_novel, surface_published]
theorem ConductorThreePolarizedPacketRoute.wangZahlAdmissible
    (route : ConductorThreePolarizedPacketRoute)
    {epsilon : ℝ} {N : ℕ} {weight : ℕ → ℝ}
    (hepsilon : 0 < epsilon) (hN : 2 ≤ N)
    (hcost : DiscretePacketWeightCost N weight ≤ 2) :
    (route.configuration epsilon hepsilon N weight).WangZahlAdmissible := by
  constructor
  · rw [route.arithmeticScale_eq]
    omega
  · exact route.geometry epsilon hepsilon N weight hN hcost

/-- The decisive speculative estimate for one explicit route.

For each requested exponent, the constant is selected before the scale,
weight, and packet configuration.  A proof is expected to combine the
unsigned Wang--Zahl union lower bound with the route's polarized `TT*`
overlap calculation and the Vaughan/Heath--Brown coefficient factorization.
-/
@[expose]
def PolarizedWangZahlLargeSieve
    (route : ConductorThreePolarizedPacketRoute) : Prop :=
  ∀ epsilon : ℝ, (hepsilon : 0 < epsilon) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (N : ℕ) (weight : ℕ → ℝ), 2 ≤ N →
        DiscretePacketWeightCost N weight ≤ 2 →
          ‖(route.configuration epsilon hepsilon N weight).signedReadout‖ ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- The complete unresolved packet program: construct one route and prove
its scale-uniform polarized large-sieve estimate. -/
@[expose]
def ConductorThreePolarizedWangZahlProgram : Prop :=
  ∃ route : ConductorThreePolarizedPacketRoute,
    PolarizedWangZahlLargeSieve route

/-- Exact readout recovery turns a route-level large sieve into the discrete
BV packet estimate. -/
@[surface_novel, surface_published]
theorem polarizedWangZahlLargeSieve_implies_bvPacketEstimate
    (route : ConductorThreePolarizedPacketRoute)
    (hLargeSieve : PolarizedWangZahlLargeSieve route) :
    ConductorThreeBVPacketEstimate := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hLargeSieve epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N weight hN hcost
  have h := hbound N weight hN hcost
  rw [route.readout_recovers_weightedSum epsilon hepsilon] at h
  simpa using h

/-- The full unresolved packet program has precisely the arithmetic strength
needed by the already-checked BV unsmoothing theorem. -/
@[surface_novel, surface_published]
theorem polarizedWangZahlProgram_implies_halfPlusEpsilon :
    ConductorThreePolarizedWangZahlProgram →
      TwistedPsiHalfPlusEpsilon := by
  rintro ⟨route, hLargeSieve⟩
  exact bvPacketEstimate_implies_halfPlusEpsilon
    (polarizedWangZahlLargeSieve_implies_bvPacketEstimate
      route hLargeSieve)

end

end Surface.Core.ConductorThreeWangZahlLargeSieve
```
