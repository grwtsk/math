import Mathlib.Data.Finset.Basic

/-!
# Certified Abel--Reynolds percolation

Noetherianity is used only after a total, stage-independent transformer has
been supplied.  An arithmetically undetermined next step remains a typed
unknown instead of being searched for indefinitely.
-/

namespace Mathematics.AbelReynolds

universe u v

structure PercolationProfile (Ideal : Type u) [PartialOrder Ideal] where
  step : Ideal → Ideal
  finitePresentation : Ideal → Finset String
  inflationary : ∀ ideal, ideal ≤ step ideal
  monotone : Monotone step
  radicalStable : Ideal → Prop
  orbitStable : Ideal → Prop
  symmetryStable : Ideal → Prop
  stepPreservesRadical :
    ∀ ideal, radicalStable (step ideal)
  stepPreservesOrbit :
    ∀ ideal, orbitStable (step ideal)
  stepPreservesSymmetry :
    ∀ ideal, symmetryStable (step ideal)

def percolate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal) : Nat → Ideal
  | 0 => initial
  | stage + 1 => profile.step (percolate profile initial stage)

theorem percolate_inflationary
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal)
    (stage : Nat) :
    percolate profile initial stage ≤
      percolate profile initial (stage + 1) :=
  profile.inflationary _

inductive EffectiveStep (Ideal : Type u) (Obligation : Type v)
  | determined (next : Ideal)
  | undetermined (obligation : Obligation)
  deriving DecidableEq, Repr

structure StabilizationCertificate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal) where
  terminalStage : Nat
  stable :
    percolate profile initial (terminalStage + 1) =
      percolate profile initial terminalStage
  aboveInitial :
    initial ≤ percolate profile initial terminalStage
  leastClosed :
    ∀ candidate,
      initial ≤ candidate →
      profile.step candidate ≤ candidate →
      percolate profile initial terminalStage ≤ candidate

def terminalIdeal
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial) : Ideal :=
  percolate profile initial certificate.terminalStage

theorem terminalIdeal_closed
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial) :
    profile.step (terminalIdeal certificate) =
      terminalIdeal certificate := by
  simpa [terminalIdeal, percolate] using certificate.stable

theorem terminalIdeal_least
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial)
    {candidate : Ideal}
    (above : initial ≤ candidate)
    (closed : profile.step candidate ≤ candidate) :
    terminalIdeal certificate ≤ candidate :=
  certificate.leastClosed candidate above closed

end Mathematics.AbelReynolds
