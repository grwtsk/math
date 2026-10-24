-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ToHomologicalLift.Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ToHomologicalLift.Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/FilesystemHomology/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FilesystemHomology.EditComplex
import FilesystemDynamics.FirstReturn
import DAF.Homology.HomologicalLift

/-!
# Conditional homological transport for filesystem first return

The finite first-return construction produces a permutation of every value of
the explicitly declared `Snapshot` model.  It does **not** automatically act
on a separately chosen edit topology.  Homology preservation in this module is
therefore conditional on a `DAF.Homology.HomologicalLift`: an actual integral
chain-complex automorphism whose degree-zero action agrees with the snapshot
permutation.  `FilesystemEditPresentation.Action` is one concrete adapter that
supplies that generic lift.

Applying Mathlib's homology functor to the chain isomorphism gives an
isomorphism in every degree.  Its underlying additive equivalence preserves
both additive order and the integral torsion subgroup.  “Torsion
preservation” is not a claim that homology is torsionless; free and torsion
parts are both transported by the same integral isomorphism.

These results make no SAC, differential-uniformity, propagation-weight,
correlation, branch-number, or cryptographic-diffusion claim.  Cycle structure
likewise does not imply avalanche behavior.  First return proves bijectivity,
not efficiency: an ambient orbit may be long before it next reaches the valid
image.  The construction acts on the lossless valid-packet representation and
does not invert a fixed-width commitment.  Finally, “all filesystems” here
means all values of the selected `Snapshot` model, not unmodeled host operating
system semantics.
-/


namespace GRWTSK.Algebra.ToHomologicalLift.Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d

namespace FilesystemHomology

open CategoryTheory
open DAF.Homology

universe u v

/-! ## Edit-presentation actions supply homological lifts -/

namespace FilesystemEditPresentation.Action

variable {Snapshot : Type u}
variable {M : FilesystemEditPresentation Snapshot}
variable {H : Equiv.Perm Snapshot}

/-- A compatible edit action supplies the generic chain-lift interface. -/
noncomputable def toHomologicalLift (A : M.Action H) :
    HomologicalLift Snapshot H M.toChainComplex where
  vertex snapshot := Finsupp.single snapshot 1
  chainIso := A.toChainIso
  degreeZero_agrees := A.toChainIso_vertex

end FilesystemEditPresentation.Action

/-! ## The filesystem first-return headline theorem -/

open FilesystemCodec

/--
A compatible action of filesystem first return on an edit presentation induces
an integral homology automorphism in every degree.
-/
noncomputable def filesystemFirstReturn_induces_homologyIso
    {Snapshot : Type u}
    {F : Type v}
    [Field F] [Fintype F] [Algebra BinMatGalois.GF2 F]
    {r : Nat}
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (M : FilesystemEditPresentation Snapshot)
    (A : M.Action (filesystemFirstReturnPerm C E rowPerm))
    (q : Nat) :
    M.toChainComplex.homology q ≅ M.toChainComplex.homology q :=
  (A.toHomologicalLift).homologyIso q

/--
The induced filesystem first-return homology automorphism preserves and
reflects integral torsion classes.
-/
theorem filesystemFirstReturn_preserves_torsion
    {Snapshot : Type u}
    {F : Type v}
    [Field F] [Fintype F] [Algebra BinMatGalois.GF2 F]
    {r : Nat}
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (M : FilesystemEditPresentation Snapshot)
    (A : M.Action (filesystemFirstReturnPerm C E rowPerm))
    (q : Nat)
    (x : M.toChainComplex.homology q) :
    IsOfFinAddOrder
        ((A.toHomologicalLift).homologyAddEquiv q x) ↔
      IsOfFinAddOrder x :=
  (A.toHomologicalLift).homologyIso_isOfFinAddOrder_iff q x

end FilesystemHomology
