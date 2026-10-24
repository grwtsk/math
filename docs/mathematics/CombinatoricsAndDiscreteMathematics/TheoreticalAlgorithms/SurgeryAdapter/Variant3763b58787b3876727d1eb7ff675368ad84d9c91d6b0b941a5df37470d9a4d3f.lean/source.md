# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryAdapter.Variant3763b58787b3876727d1eb7ff675368ad84d9c91d6b0b941a5df37470d9a4d3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31a201a9e4bde74e5c8ecb92d599abab14c4b571` · SHA-256 `f3993f0de27a0f0dd2398674bd7db28398defed6b985869018c2ff8855c84bcf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgicalPatchAdapter.Variant3e5431a564a96bc63977a669a1497d4789041a4ae7ec87951ea294e00e2d04c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e5431a564a96bc63977a669a1497d4789041a4ae7ec87951ea294e00e2d04c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DistributedSystems.SourceCorpus.SurgicalPatchAdapter.Variant3e5431a564a96bc63977a669a1497d4789041a4ae7ec87951ea294e00e2d04c0","mathematical_subject":"Computation.DistributedSystems","original_sha256":"3e5431a564a96bc63977a669a1497d4789041a4ae7ec87951ea294e00e2d04c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/SurgeryAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Patch

/-!
# Globally located fabric surgery adapters

This module does not introduce a second patch or filler language.  It attaches
an arbitrary, typed global-locus value to the existing `LocalPatch` selected at
one fabric cell, and retains the existing strict boundary equations.  The
meaning of the locus is supplied by the integration layer that owns the global
state; the generic fabric project therefore remains independent of terrain,
matrix, and prismatic representations.

An adapter is only a checked local candidate.  Global extension still requires
an existing `LocalPatch.Extension` or an explicit
`CompatiblePatchExtensionCapability`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgicalPatchAdapter.Variant3e5431a564a96bc63977a669a1497d4789041a4ae7ec87951ea294e00e2d04c0

namespace DAF.Fabric

universe uL

/--
A typed global locus attached to one existing fabric-local patch.

`selected` records the surrounding subfabric in which the cell is being
changed.  It does not assert that the patch extends outside that subfabric.
-/
structure SurgicalPatchAdapter
    (GlobalLocus : Type uL)
    (F : Fabric) where
  dimension : Nat
  cell : F.Cell dimension
  globalLocus : GlobalLocus
  selected : Subfabric F
  cell_selected : selected.selected dimension cell
  patch : LocalPatch F cell
  boundaryCompatible : patch.BoundaryCompatible

namespace SurgicalPatchAdapter

/-- The adapter exposes exactly the existing local patch boundary predicate. -/
theorem boundary_compatible
    {GlobalLocus : Type uL}
    {F : Fabric}
    (adapter : SurgicalPatchAdapter GlobalLocus F) :
    adapter.patch.BoundaryCompatible :=
  adapter.boundaryCompatible

/--
With an explicit compatible patch-extension capability, a located patch has a genuine
global fabric extension.  The global-locus label itself supplies no filler.
-/
def extension
    {GlobalLocus : Type uL}
    {F : Fabric}
    (fillers : CompatiblePatchExtensionCapability F)
    (adapter : SurgicalPatchAdapter GlobalLocus F) :
    adapter.patch.Extension :=
  fillers.fill adapter.patch adapter.boundaryCompatible

/-- A located patch therefore extends only through the supplied capability. -/
theorem extendsTo
    {GlobalLocus : Type uL}
    {F : Fabric}
    (fillers : CompatiblePatchExtensionCapability F)
    (adapter : SurgicalPatchAdapter GlobalLocus F) :
    adapter.patch.ExtendsTo :=
  ⟨adapter.extension fillers⟩

end SurgicalPatchAdapter

end DAF.Fabric
```
