# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant856adc28b06f8cc3bbee333d92a8ae3a12a3cf49c630e404f70bdbd5115ad46c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e17786d355c5a254edd9488742e1ca808066eaf` · SHA-256 `4afcd14c0f803061a7fe988d70eeb05e6f85b7a2765602c94dbadfe433e38188`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantfd972d4e1f97a3c20d797ba374d24920ddeca9522886245d6ca2538e8cf4e427","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd972d4e1f97a3c20d797ba374d24920ddeca9522886245d6ca2538e8cf4e427","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantfd972d4e1f97a3c20d797ba374d24920ddeca9522886245d6ca2538e8cf4e427","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"fd972d4e1f97a3c20d797ba374d24920ddeca9522886245d6ca2538e8cf4e427","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/src/formal/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantfd972d4e1f97a3c20d797ba374d24920ddeca9522886245d6ca2538e8cf4e427

open Lake DSL

package geometry_formal where
  srcDir := "."

@[default_target]
lean_lib Formal where
  roots := #[`Formal]

lean_lib FormalKernel where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.checkedroots_count_80ce23443926]

lean_lib FormalBands where
  roots := #[`Formal.Ast.Blueprint.proof_authority.authorityband_blueprint_cannot_close_57e317be0397]

lean_lib FormalRoot where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.importscorpus_false_3810cb311e0d]

lean_lib FormalChecked where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.modules_count_b62c437365ca]

lean_lib FormalSurface where
  roots := #[`Formal.Ast.Surface.finite_bit_boundary.authoritybands_count_17240d22a9d5]

lean_lib FormalConceptual where
  roots := #[`Formal.Ast.Conceptual.finite_bit_boundary.allbands_count_25afe01d49fd]

lean_lib FormalBoundaryMatriciant where
  roots := #[`Formal.Ast.Checked.finite_bit_boundary.checked_kernel_module_c4a89b6533c9]

lean_lib FormalProgramBoundaries where
  roots := #[
    `Formal.Ast.Surface.proof_authority.blueprint_cannot_close_authority_7adeba310a88,
    `Formal.Ast.Conceptual.finite_bit_boundary.allbands_count_25afe01d49fd,
    `Formal.Ast.Surface.proof_authority.archive_not_imported_by_kernel_56391c38229b,
    `Formal.Ast.Surface.projection_operators.defaultstatus_is_localonly_9fabe884afb2,
    `Formal.Ast.Surface.proof_authority.not_declared_dependency_86c76017d0e8,
    `Formal.Ast.Surface.proof_authority.not_imported_into_kernel_abffe1466148
  ]

lean_exe formal_manifest_check where
  root := `Formal.Ast.Checked.checked_core.main_b4c587ef3997
```
