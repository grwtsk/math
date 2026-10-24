# Complete source: GRWTSK.Algebra.LinearAlgebra.PositiveAtlasFeshbachReconstruction.Variant143ae462cba5ca569bf00432001e2f57bfe3ba4a92fea9a58f3803a00020d43a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd195c9c2f1c6513b141863c3e670b02614c4729` · SHA-256 `5dd7117a9b1d9d34a214ebe2bac2c71798f3781f1e418e70b442af392eb3254b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Two.Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Two.Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/feshbach_review/pr267-source/tests/positive_atlas_feshbach_reconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FeshbachReconstruction

/-!
Exact rational fixtures with nonzero cross coupling. The full rank-one packet
has a nontrivial kernel and a zero Schur center, so these examples check the
minus sign and reconstruction coordinates rather than only diagonal packets.
AI attribution: Codex authored these fixtures.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Two.Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331

namespace FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures

open Matrix
open scoped Matrix

private def two : Matrix Unit Unit ℚ := fun _ _ => 2

private instance : Invertible two where
  invOf := fun _ _ => 1 / 2
  invOf_mul_self := by
    ext i j
    change (∑ _ : Unit, (1 / 2 : ℚ) * 2) = if i = j then 1 else 0
    norm_num
  mul_invOf_self := by
    ext i j
    change (∑ _ : Unit, (2 : ℚ) * (1 / 2)) = if i = j then 1 else 0
    norm_num

private theorem inverse_two : ⅟two = (fun _ _ => (1 / 2 : ℚ)) := rfl

/-- Nonzero cross coupling reconstructs the eliminated coordinate with a minus sign. -/
theorem nonzero_cross_lift : lift two two (fun _ => 3) = (fun _ => 3, fun _ => -3) := by
  ext <;> norm_num [lift_apply, inverse_two, two, Matrix.mulVec, dotProduct]

/-- The coupled full packet annihilates a nonzero reconstructed vector. -/
theorem nonzero_cross_kernel :
    blockMap two two two two (fun _ => 3, fun _ => -3) = 0 := by
  ext <;> norm_num [blockMap_apply, two, Matrix.mulVec, dotProduct]

/-- The Schur center is exactly zero, without discarding the cross correction. -/
theorem nonzero_cross_schur : schur two two two two = 0 := by
  ext i j
  norm_num [schur, inverse_two, two, Matrix.mul_apply]

/-- Reconstruction fixes the first coordinate and replaces an unrelated second coordinate. -/
theorem nonzero_cross_projection :
    project two two (fun _ => 3, fun _ => 7) = (fun _ => 3, fun _ => -3) := by
  exact nonzero_cross_lift

end FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures
```
