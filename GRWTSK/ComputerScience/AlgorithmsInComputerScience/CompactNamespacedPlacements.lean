-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SrcLibSurfaceClass.Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SrcLibSurfaceClass.Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5","mathematical_subject":"Computation.DataStructures","original_sha256":"6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Compact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SrcLibSurfaceClass.Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5

set_option autoImplicit false

namespace Think.Poles.Compact

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.compact

theorem placements_count :
    placements.length = 8 :=
  Think.SourceTree.compactPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

inductive SrcLibSurfaceClass where
  | compactShell
  | poleStream
  | finiteBoundary
deriving DecidableEq, Repr

inductive SrcLibBoundaryStatus where
  | contained
  | cleared
  | residue
deriving DecidableEq, Repr

structure SrcLibCompactShell where
  surface : SrcLibSurfaceClass
  frameCount : Nat
  boundaryStatus : SrcLibBoundaryStatus
deriving Repr

def SrcLibCompactShell.hasFiniteBoundary (shell : SrcLibCompactShell) : Prop :=
  shell.frameCount > 0 ∧ shell.boundaryStatus ≠ SrcLibBoundaryStatus.cleared

def srcLibDefaultCompactShell : SrcLibCompactShell where
  surface := SrcLibSurfaceClass.compactShell
  frameCount := placements.length
  boundaryStatus := SrcLibBoundaryStatus.residue

theorem srcLibDefaultCompactShell_frameCount :
    srcLibDefaultCompactShell.frameCount = 8 := by
  rfl

theorem srcLibDefaultCompactShell_hasFiniteBoundary :
    srcLibDefaultCompactShell.hasFiniteBoundary := by
  constructor
  · rw [srcLibDefaultCompactShell_frameCount]
    decide
  · intro h
    cases h

end Think.Poles.Compact
