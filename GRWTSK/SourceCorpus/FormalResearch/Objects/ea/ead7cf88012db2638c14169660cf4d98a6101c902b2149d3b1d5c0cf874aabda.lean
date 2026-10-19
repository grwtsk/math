import Think.SourceTree.Legacy.ModularWave.Authority

namespace Think.RiemannModularWave

inductive ExternalTheoremId where
  | riemann1859PrimeWave
  | zhang2014BoundedGaps
  | polymath8aZhangDistribution
  | maynard2015SmallGaps
  | polymath8bSelbergIntervals
  | dvir2009FiniteFieldKakeya
  | fefferman2000NavierStokesProblem
  | dusart2010PrimeFunctionEstimates
  | polymath2019XiHeatflow
  deriving DecidableEq

structure ExternalTheoremImport where
  theoremId : ExternalTheoremId
  citationRecorded : Bool
  theoremStatementScoped : Bool
  proofArtifactImported : Bool
  externalHypothesesDischarged : Bool
  finiteWitnessUseOnly : Bool
  repoTheoremAuthorityClaim : Bool
  globalClaimTransferred : Bool
  compactShadowExecutionClaim : Bool

def ExternalTheoremImport.Valid (source : ExternalTheoremImport) : Prop :=
  source.citationRecorded = true /\
  source.theoremStatementScoped = true /\
  source.proofArtifactImported = false /\
  source.externalHypothesesDischarged = false /\
  source.finiteWitnessUseOnly = true /\
  source.repoTheoremAuthorityClaim = false /\
  source.globalClaimTransferred = false /\
  source.compactShadowExecutionClaim = false

def ExternalTheoremImport.claimRecord
    (source : ExternalTheoremImport) : Think.Codex.Authority.ClaimRecord :=
  { status := Think.Codex.Foundation.StatusConstant.externally_theorem_supported,
    checkedProofImported := source.proofArtifactImported,
    externalHypothesesDischarged := source.externalHypothesesDischarged }

theorem external_import_without_discharged_hypotheses_has_no_repo_authority
    (source : ExternalTheoremImport)
    (hDischarged : source.externalHypothesesDischarged = false) :
    Not (Think.Codex.Authority.Authority source.claimRecord) := by
  dsimp [ExternalTheoremImport.claimRecord]
  rw [hDischarged]
  exact Think.Codex.Authority.external_without_discharge_has_no_authority
    source.proofArtifactImported

theorem valid_external_import_has_no_repo_authority
    (source : ExternalTheoremImport)
    (hSource : source.Valid) :
    Not (Think.Codex.Authority.Authority source.claimRecord) := by
  exact external_import_without_discharged_hypotheses_has_no_repo_authority
    source hSource.right.right.right.left

def riemann1859PrimeWaveImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.riemann1859PrimeWave,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def zhang2014BoundedGapsImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.zhang2014BoundedGaps,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def polymath8aZhangDistributionImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.polymath8aZhangDistribution,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def maynard2015SmallGapsImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.maynard2015SmallGaps,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def polymath8bSelbergIntervalsImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.polymath8bSelbergIntervals,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def dvir2009FiniteFieldKakeyaImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.dvir2009FiniteFieldKakeya,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def fefferman2000NavierStokesProblemImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.fefferman2000NavierStokesProblem,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def dusart2010PrimeFunctionEstimatesImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.dusart2010PrimeFunctionEstimates,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

def polymath2019XiHeatflowImport : ExternalTheoremImport :=
  { theoremId := ExternalTheoremId.polymath2019XiHeatflow,
    citationRecorded := true,
    theoremStatementScoped := true,
    proofArtifactImported := false,
    externalHypothesesDischarged := false,
    finiteWitnessUseOnly := true,
    repoTheoremAuthorityClaim := false,
    globalClaimTransferred := false,
    compactShadowExecutionClaim := false }

structure ExternalTheoremSourceCover where
  riemann1859 : ExternalTheoremImport
  zhang2014 : ExternalTheoremImport
  polymath8a : ExternalTheoremImport
  maynard2015 : ExternalTheoremImport
  polymath8b : ExternalTheoremImport
  dvir2009 : ExternalTheoremImport
  fefferman2000 : ExternalTheoremImport
  dusart2010 : ExternalTheoremImport
  polymath2019 : ExternalTheoremImport

def ExternalTheoremSourceCover.Valid
    (cover : ExternalTheoremSourceCover) : Prop :=
  cover.riemann1859.Valid /\
  cover.zhang2014.Valid /\
  cover.polymath8a.Valid /\
  cover.maynard2015.Valid /\
  cover.polymath8b.Valid /\
  cover.dvir2009.Valid /\
  cover.fefferman2000.Valid /\
  cover.dusart2010.Valid /\
  cover.polymath2019.Valid

def canonicalExternalTheoremSourceCover : ExternalTheoremSourceCover :=
  { riemann1859 := riemann1859PrimeWaveImport,
    zhang2014 := zhang2014BoundedGapsImport,
    polymath8a := polymath8aZhangDistributionImport,
    maynard2015 := maynard2015SmallGapsImport,
    polymath8b := polymath8bSelbergIntervalsImport,
    dvir2009 := dvir2009FiniteFieldKakeyaImport,
    fefferman2000 := fefferman2000NavierStokesProblemImport,
    dusart2010 := dusart2010PrimeFunctionEstimatesImport,
    polymath2019 := polymath2019XiHeatflowImport }

theorem canonical_external_theorem_source_cover_valid :
    canonicalExternalTheoremSourceCover.Valid := by
  simp [
    ExternalTheoremSourceCover.Valid,
    ExternalTheoremImport.Valid,
    canonicalExternalTheoremSourceCover,
    riemann1859PrimeWaveImport,
    zhang2014BoundedGapsImport,
    polymath8aZhangDistributionImport,
    maynard2015SmallGapsImport,
    polymath8bSelbergIntervalsImport,
    dvir2009FiniteFieldKakeyaImport,
    fefferman2000NavierStokesProblemImport,
    dusart2010PrimeFunctionEstimatesImport,
    polymath2019XiHeatflowImport
  ]

theorem riemann1859_prime_wave_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      riemann1859PrimeWaveImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    riemann1859PrimeWaveImport
    canonical_external_theorem_source_cover_valid.left

theorem zhang2014_bounded_gaps_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      zhang2014BoundedGapsImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    zhang2014BoundedGapsImport
    canonical_external_theorem_source_cover_valid.right.left

theorem polymath8a_distribution_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      polymath8aZhangDistributionImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    polymath8aZhangDistributionImport
    canonical_external_theorem_source_cover_valid.right.right.left

theorem maynard2015_small_gaps_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      maynard2015SmallGapsImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    maynard2015SmallGapsImport
    canonical_external_theorem_source_cover_valid.right.right.right.left

theorem polymath8b_selberg_intervals_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      polymath8bSelbergIntervalsImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    polymath8bSelbergIntervalsImport
    canonical_external_theorem_source_cover_valid.right.right.right.right.left

theorem dvir2009_finite_field_kakeya_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      dvir2009FiniteFieldKakeyaImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    dvir2009FiniteFieldKakeyaImport
    canonical_external_theorem_source_cover_valid.right.right.right.right.right.left

theorem fefferman2000_navier_stokes_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      fefferman2000NavierStokesProblemImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    fefferman2000NavierStokesProblemImport
    canonical_external_theorem_source_cover_valid.right.right.right.right.right.right.left

theorem dusart2010_prime_estimates_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      dusart2010PrimeFunctionEstimatesImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    dusart2010PrimeFunctionEstimatesImport
    canonical_external_theorem_source_cover_valid.right.right.right.right.right.right.right.left

theorem polymath2019_xi_heatflow_import_has_no_repo_authority :
    Not (Think.Codex.Authority.Authority
      polymath2019XiHeatflowImport.claimRecord) := by
  exact valid_external_import_has_no_repo_authority
    polymath2019XiHeatflowImport
    canonical_external_theorem_source_cover_valid.right.right.right.right.right.right.right.right

end Think.RiemannModularWave
