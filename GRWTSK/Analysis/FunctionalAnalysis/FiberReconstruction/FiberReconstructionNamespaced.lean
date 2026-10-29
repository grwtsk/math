-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.TransportShell.Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransportShell.Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b","mathematical_subject":"Foundations.Unclassified","original_sha256":"bed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Spectral/FiberReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Torsion
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Theorem.Spectral.FiberReconstruction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.fiber_reconstruction
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.TransportShell.Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b

namespace Folder
namespace Spectral

open Carrier

def transportShell {s : GridShape} {k : Nat}
    (τ : SpectralShellTorsion s k)
    (E : SpectralShellEncoded s k) :
    SpectralShellEncoded s k where
  center := E.center
  shell := SpectralShellTorsion.act τ E.shell

theorem heat_residual_reconstruct {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2 = X :=
  reconstruct_liftedHeat H t X

theorem torsion_inverse_reconstruct {s : GridShape} {k : Nat}
    (τ : SpectralShellTorsion s k)
    (E : SpectralShellEncoded s k) :
    transportShell (SpectralShellTorsion.inverse τ) (transportShell τ E) = E := by
  apply SpectralShellEncoded.ext
  · rfl
  · exact SpectralShellTorsion.act_invertible τ E.shell

theorem shell_decode_encode_reconstruct {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    decodeShell (encodeShell X) = X :=
  decode_encode_shell X

noncomputable def reconstructedLiftedShell {s : GridShape} {k : Nat}
    (H : GraphHeat (Expansion.expandedShape s) k)
    (t : NNReal)
    (τ : SpectralShellTorsion s k)
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    SpectralTensor (Expansion.expandedShape s) k :=
  let lifted := liftedHeat H t X
  decodeShell
    (transportShell (SpectralShellTorsion.inverse τ)
      (transportShell τ
        (encodeShell (reconstructHeat lifted.1 lifted.2))))

theorem spectral_fiber_reconstruction {s : GridShape} {k : Nat}
    (H : GraphHeat (Expansion.expandedShape s) k)
    (t : NNReal)
    (τ : SpectralShellTorsion s k)
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    reconstructedLiftedShell H t τ X = X := by
  unfold reconstructedLiftedShell
  change
    decodeShell
      (transportShell (SpectralShellTorsion.inverse τ)
        (transportShell τ
          (encodeShell
            (reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2)))) = X
  rw [torsion_inverse_reconstruct]
  rw [decode_encode_shell]
  exact reconstruct_liftedHeat H t X

end Spectral
end Folder
