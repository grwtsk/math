import Think.Kernel.Checked

set_option autoImplicit false

namespace FWR.Manuscript.ExternalBoundary

/-
This file records the external-source boundary for the manuscript context.
Historical theorems and papers may motivate finite modules, but they do not
transfer theorem authority into the finite BitMatrix, scheduler, or clustering
formalization.
-/

inductive Source where
  | Riemann1859
  | ClayRH
  | Wiles
  | TaylorWiles
  | Zhang
  | Polymath8a
  | Maynard
  | Polymath8b
  | TaoAveragedNavierStokes
  | WangZahlKakeya
  | GuthWangZahlKakeya
deriving DecidableEq, Repr

inductive UseKind where
  | motivicTemplate
  | externalArtifact
  | boundaryWarning
deriving DecidableEq, Repr

structure SourceUse where
  source : Source
  useKind : UseKind
  importedAuthority : Bool
deriving DecidableEq, Repr

def authorityTransferBlocked (u : SourceUse) : Prop :=
  u.importedAuthority = false

def noAuthorityTransfer (uses : List SourceUse) : Prop :=
  ∀ u : SourceUse, u ∈ uses -> authorityTransferBlocked u

def sourceResidue (s : Source) : Residue :=
  { target := Target.ExternalAuthorityBoundary
    atomId := reprStr s
    kind := ResidueKind.externalTheoremNotImported
    blocks := "transfer of external theorem authority into the finite witness model"
    clearsBy := "a formal proof artifact in the local finite model, not analogy" }

def allSources : List Source := [
  Source.Riemann1859,
  Source.ClayRH,
  Source.Wiles,
  Source.TaylorWiles,
  Source.Zhang,
  Source.Polymath8a,
  Source.Maynard,
  Source.Polymath8b,
  Source.TaoAveragedNavierStokes,
  Source.WangZahlKakeya,
  Source.GuthWangZahlKakeya
]

def authorityOverclaimResidues : List Residue :=
  allSources.map sourceResidue

def forbiddenAuthorityClaim (uses : List SourceUse) : Prop :=
  noAuthorityTransfer uses

def forbiddenAuthorityWitness (uses : List SourceUse) :
    Checked (forbiddenAuthorityClaim uses) :=
  Checked.residue authorityOverclaimResidues

theorem forbiddenAuthorityWitness_hasResidue (uses : List SourceUse) :
    (forbiddenAuthorityWitness uses).hasResidue = true := by
  rfl

theorem authorityOverclaimResidue_count :
    authorityOverclaimResidues.length = 11 := by
  rfl

theorem allSources_complete (s : Source) :
    s ∈ allSources := by
  cases s <;> simp [allSources]

theorem allSources_nodup :
    allSources.Nodup := by
  decide

theorem authorityOverclaimResidues_targets_correct :
    ∀ r ∈ authorityOverclaimResidues,
      r.target = Target.ExternalAuthorityBoundary := by
  intro r hr
  rw [authorityOverclaimResidues] at hr
  rcases List.mem_map.mp hr with ⟨s, _hs, rfl⟩
  rfl

end FWR.Manuscript.ExternalBoundary
