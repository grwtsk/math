# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeWangZahlLargeSieve.Variantd4ca0a267811da191109fcd2885092f9c8d310816633a6bbba07faa7c40883a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `576226fba0e64e245729bca44cdf223d129de624` · SHA-256 `be32cd1ef13dbac1e781514a6920d807f893300432b9e3f34092a43678ed77c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreePolarizedPacketRoute.Variant28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConductorThreePolarizedPacketRoute.Variant28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:6ecad2282023044166f1ea6c/workspace/lib/Surface/Core/ConductorThreeWangZahlLargeSieve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreePolarizedPacketRoute.Variant28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb

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
    ℝ → ℕ → (ℕ → ℝ) → PolarizedArithmeticPacketConfiguration
  arithmeticScale_eq :
    ∀ (epsilon : ℝ) (N : ℕ) (weight : ℕ → ℝ),
      (configuration epsilon N weight).block.arithmeticScale = N
  epsilon_eq :
    ∀ (epsilon : ℝ) (N : ℕ) (weight : ℕ → ℝ),
      (configuration epsilon N weight).epsilon = epsilon
  readout_recovers_weightedSum :
    ∀ (epsilon : ℝ) (N : ℕ) (weight : ℕ → ℝ),
      (configuration epsilon N weight).signedReadout =
        (conductorThreeDiscreteWeightedSum N weight : ℂ)
  geometry :
    ∀ (epsilon : ℝ) (N : ℕ) (weight : ℕ → ℝ),
      0 < epsilon → 2 ≤ N → DiscretePacketWeightCost N weight ≤ 2 →
        Nonempty (PolarizedPacketGeometry
          (configuration epsilon N weight))

/-- Every relevant configuration constructed by a route is genuinely
Wang--Zahl admissible. -/
@[surface_novel, surface_published]
theorem ConductorThreePolarizedPacketRoute.wangZahlAdmissible
    (route : ConductorThreePolarizedPacketRoute)
    {epsilon : ℝ} {N : ℕ} {weight : ℕ → ℝ}
    (hepsilon : 0 < epsilon) (hN : 2 ≤ N)
    (hcost : DiscretePacketWeightCost N weight ≤ 2) :
    (route.configuration epsilon N weight).WangZahlAdmissible := by
  constructor
  · rw [route.arithmeticScale_eq]
    omega
  · exact route.geometry epsilon N weight hepsilon hN hcost

/-- The decisive speculative estimate for one explicit route.

For each requested exponent, the constant is selected before the scale,
weight, and packet configuration.  A proof is expected to combine the
unsigned Wang--Zahl union lower bound with the route's polarized `TT*`
overlap calculation and the Vaughan/Heath--Brown coefficient factorization.
-/
@[expose]
def PolarizedWangZahlLargeSieve
    (route : ConductorThreePolarizedPacketRoute) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (N : ℕ) (weight : ℕ → ℝ), 2 ≤ N →
        DiscretePacketWeightCost N weight ≤ 2 →
          ‖(route.configuration epsilon N weight).signedReadout‖ ≤
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
  rw [route.readout_recovers_weightedSum] at h
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
