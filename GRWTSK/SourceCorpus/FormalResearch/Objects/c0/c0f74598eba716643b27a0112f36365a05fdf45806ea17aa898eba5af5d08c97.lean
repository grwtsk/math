import Think.SourceTree.Legacy.ResearchSurvey.Basic
import Think.Targets.Statements

set_option autoImplicit false

namespace Think.ResearchSurvey.OuterFrontier

inductive FrontierStatus where
  | openConjecture
  | knownExternalTheorem
  | partialExternalTheorem
  | boundaryProblemStatement
deriving DecidableEq, Repr

inductive OuterTarget where
  | riemannHypothesis
  | navierStokesRegularity
  | euclideanKakeya
  | finiteFieldKakeya
  | boundedPrimeGaps
  | twinPrimeBoundary
  | modularityOverQ
deriving DecidableEq, Repr

structure FrontierRecord where
  target : OuterTarget
  status : FrontierStatus
  sourceLabel : String
  sourceUrl : String
  repoLeanBoundary : String
  repoAuthorityTransferred : Bool
deriving DecidableEq, Repr

def rhClayFrontier : FrontierRecord :=
  { target := OuterTarget.riemannHypothesis
    status := FrontierStatus.openConjecture
    sourceLabel := "Clay Mathematics Institute: Riemann Hypothesis"
    sourceUrl := "https://www.claymath.org/riemann/"
    repoLeanBoundary := "Think.Targets.rhStatement"
    repoAuthorityTransferred := false }

def navierStokesClayFrontier : FrontierRecord :=
  { target := OuterTarget.navierStokesRegularity
    status := FrontierStatus.boundaryProblemStatement
    sourceLabel :=
      "Clay Mathematics Institute: Navier-Stokes existence and smoothness"
    sourceUrl :=
      "https://www.claymath.org/millennium/navier-stokes-equation/"
    repoLeanBoundary := "Think.Targets.navierStokesStatement"
    repoAuthorityTransferred := false }

def euclideanKakeyaFrontier : FrontierRecord :=
  { target := OuterTarget.euclideanKakeya
    status := FrontierStatus.openConjecture
    sourceLabel := "Euclidean Kakeya remains a target-boundary frontier"
    sourceUrl := "https://arxiv.org/abs/0803.2336"
    repoLeanBoundary := "Think.Targets.kakeyaStatement"
    repoAuthorityTransferred := false }

def finiteFieldKakeyaFrontier : FrontierRecord :=
  { target := OuterTarget.finiteFieldKakeya
    status := FrontierStatus.knownExternalTheorem
    sourceLabel := "Dvir: On the size of Kakeya sets in finite fields"
    sourceUrl := "https://arxiv.org/abs/0803.2336"
    repoLeanBoundary := "Think.ModularWave.TheoremSources.dvir2009"
    repoAuthorityTransferred := false }

def boundedPrimeGapsFrontier : FrontierRecord :=
  { target := OuterTarget.boundedPrimeGaps
    status := FrontierStatus.knownExternalTheorem
    sourceLabel :=
      "Zhang/Maynard: bounded and small gaps between primes"
    sourceUrl :=
      "https://annals.math.princeton.edu/articles/keyword/gaps-between-primes"
    repoLeanBoundary := "Think.ModularWave.TheoremSources.zhang2014/maynard2015"
    repoAuthorityTransferred := false }

def twinPrimeFrontier : FrontierRecord :=
  { target := OuterTarget.twinPrimeBoundary
    status := FrontierStatus.openConjecture
    sourceLabel := "Twin prime conjecture boundary"
    sourceUrl := "https://mathworld.wolfram.com/TwinPrimeConjecture.html"
    repoLeanBoundary := "Think.Targets.primeGapsStatement"
    repoAuthorityTransferred := false }

def modularityOverQFrontier : FrontierRecord :=
  { target := OuterTarget.modularityOverQ
    status := FrontierStatus.knownExternalTheorem
    sourceLabel :=
      "Wiles; Breuil-Conrad-Diamond-Taylor modularity over Q"
    sourceUrl := "https://annals.math.princeton.edu/1995/141-3/p01"
    repoLeanBoundary := "Think.Targets.modularityStatement"
    repoAuthorityTransferred := false }

def allOuterFrontiers : List FrontierRecord :=
  [ rhClayFrontier
  , navierStokesClayFrontier
  , euclideanKakeyaFrontier
  , finiteFieldKakeyaFrontier
  , boundedPrimeGapsFrontier
  , twinPrimeFrontier
  , modularityOverQFrontier
  ]

theorem allOuterFrontiers_count :
    allOuterFrontiers.length = 7 := by
  rfl

theorem allOuterFrontiers_no_repo_authority
    (r : FrontierRecord)
    (h : r ∈ allOuterFrontiers) :
    r.repoAuthorityTransferred = false := by
  simp [allOuterFrontiers] at h
  rcases h with h | h | h | h | h | h | h <;>
    subst r <;>
    rfl

def closestFrontierFor (target : OuterTarget) : Option FrontierRecord :=
  match target with
  | .riemannHypothesis => some rhClayFrontier
  | .navierStokesRegularity => some navierStokesClayFrontier
  | .euclideanKakeya => some euclideanKakeyaFrontier
  | .finiteFieldKakeya => some finiteFieldKakeyaFrontier
  | .boundedPrimeGaps => some boundedPrimeGapsFrontier
  | .twinPrimeBoundary => some twinPrimeFrontier
  | .modularityOverQ => some modularityOverQFrontier

theorem closest_frontier_never_transfers_authority
    (target : OuterTarget)
    (r : FrontierRecord)
    (h : closestFrontierFor target = some r) :
    r.repoAuthorityTransferred = false := by
  cases target <;>
    simp [closestFrontierFor] at h <;>
    subst r <;>
    rfl

def frontierResidue (r : FrontierRecord) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := r.sourceLabel
    kind := FWR.ResidueKind.conjecturalAtom
    blocks :=
      "outer-frontier source is advisory boundary research, not repo theorem authority"
    clearsBy :=
      "exact Lean formalization plus imported proof artifact and discharged hypotheses" }

def frontierChecked (r : FrontierRecord) :
    Think.Checked (r.repoAuthorityTransferred = false) :=
  FWR.Checked.residue [frontierResidue r]

theorem frontierChecked_hasResidue
    (r : FrontierRecord) :
    (frontierChecked r).hasResidue = true := by
  rfl

end Think.ResearchSurvey.OuterFrontier
