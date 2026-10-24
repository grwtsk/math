# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExternalBoundary.Variant209764f0bce7ce8be5a61f372f167e22f0bee4e648360c1dfc85b4141a21efa6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `329aa7c5be8cd7070f641b68c01ae08a9e6a7253` · SHA-256 `7fbcf165adce78df9ef4fa4b01ea541062117804f669254a9b7b58b5bb6ab2fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Source.Variant4e3b2139c1903afae6435ed8f4b6bc55ba43c2b765c2ad747b133a4de0f170a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e3b2139c1903afae6435ed8f4b6bc55ba43c2b765c2ad747b133a4de0f170a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Source.Variant4e3b2139c1903afae6435ed8f4b6bc55ba43c2b765c2ad747b133a4de0f170a5","mathematical_subject":"Computation.DataStructures","original_sha256":"4e3b2139c1903afae6435ed8f4b6bc55ba43c2b765c2ad747b133a4de0f170a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Manuscript/ExternalBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kernel.Checked


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Source.Variant4e3b2139c1903afae6435ed8f4b6bc55ba43c2b765c2ad747b133a4de0f170a5

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
```
