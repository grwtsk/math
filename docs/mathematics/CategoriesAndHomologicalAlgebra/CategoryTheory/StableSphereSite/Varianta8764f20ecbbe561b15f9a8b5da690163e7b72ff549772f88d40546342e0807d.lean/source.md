# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StableSphereSite.Varianta8764f20ecbbe561b15f9a8b5da690163e7b72ff549772f88d40546342e0807d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83188167864d9538d432ae1076c4ce9baa8a2c2f` · SHA-256 `41b8a19918f44ab065ccfb2e39a10ba6ab6d8f3b8ff65dc19767f2660331b943`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StableSphere.Variantaee9326ae7bf3ccfc01c01b3925ab4d2a669fd163e7b423cc35c150657f51353","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aee9326ae7bf3ccfc01c01b3925ab4d2a669fd163e7b423cc35c150657f51353","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StableSphere.Variantaee9326ae7bf3ccfc01c01b3925ab4d2a669fd163e7b423cc35c150657f51353","mathematical_subject":"Foundations.Unclassified","original_sha256":"aee9326ae7bf3ccfc01c01b3925ab4d2a669fd163e7b423cc35c150657f51353","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/ResearchTopos/StableSphereSite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.TMFFraming

/-!
# Folder.ResearchTopos.StableSphereSite

Radiation role: research-boundary
BinaryMatrix spine: This module names stable-sphere site objects as contract targets downstream of cellular boundary data.
Ontology: research_topos.stable_sphere_site
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: research-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StableSphere.Variantaee9326ae7bf3ccfc01c01b3925ab4d2a669fd163e7b423cc35c150657f51353

namespace Folder
namespace ResearchTopos

structure StableSphere where
  dimension? : Option Nat
  stableStem? : Option Nat
  label : String

structure StableSphereCollapse where
  tmfFraming : TMFTorsionFraming
  sourceCellularBoundary : Type _
  targetSphere : StableSphere
  collapseMap : Prop
  torsionKilled : tmfFraming.trivialized

theorem stable_sphere_collapse_has_target
    (C : StableSphereCollapse) :
    ∃ S : StableSphere, S = C.targetSphere :=
  ⟨C.targetSphere, rfl⟩

theorem stable_sphere_collapse_torsion_killed
    (C : StableSphereCollapse) :
    C.tmfFraming.trivialized :=
  C.torsionKilled

end ResearchTopos
end Folder
```
