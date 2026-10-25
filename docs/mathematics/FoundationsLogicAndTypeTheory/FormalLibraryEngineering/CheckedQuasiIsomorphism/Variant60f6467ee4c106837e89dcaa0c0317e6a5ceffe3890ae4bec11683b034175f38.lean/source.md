# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedQuasiIsomorphism.Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14f1147c0a3be24ea22545fabd9e82da3b2f5094` · SHA-256 `5616ab04ad2c802a25732ac80ecd0311eb72d0fe9fc605e911abef895ab1cb1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedQuasiIsoShadow.Variantb0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CheckedQuasiIsoShadow.Variantb0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c","mathematical_subject":"Foundations.Unclassified","original_sha256":"b0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Derived/CheckedQuasiIsomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.Derived.TorsionComplex
import Folder.Rebuild.ProofStatus

/-!
# Folder.Rebuild.Derived.CheckedQuasiIsomorphism

Checked quasi-isomorphism shadow relation for finite torsion complexes.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedQuasiIsoShadow.Variantb0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c

namespace Folder
namespace Rebuild
namespace Derived

structure CheckedQuasiIsoShadow
    (A B : FiniteTorsionComplex) where
  euler_eq : eulerShadow A = eulerShadow B
  torsion_mass_eq : torsionMass A = torsionMass B

theorem checkedQuasiIsoShadow_refl
    (A : FiniteTorsionComplex) :
    CheckedQuasiIsoShadow A A where
  euler_eq := rfl
  torsion_mass_eq := rfl

theorem checkedQuasiIsoShadow_symm
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    CheckedQuasiIsoShadow B A where
  euler_eq := h.euler_eq.symm
  torsion_mass_eq := h.torsion_mass_eq.symm

theorem checkedQuasiIsoShadow_trans
    {A B C : FiniteTorsionComplex}
    (hAB : CheckedQuasiIsoShadow A B)
    (hBC : CheckedQuasiIsoShadow B C) :
    CheckedQuasiIsoShadow A C where
  euler_eq := hAB.euler_eq.trans hBC.euler_eq
  torsion_mass_eq := hAB.torsion_mass_eq.trans hBC.torsion_mass_eq

theorem checkedQuasiIsoShadow_preserves_euler
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    eulerShadow A = eulerShadow B :=
  h.euler_eq

theorem checkedQuasiIsoShadow_preserves_torsionMass
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    torsionMass A = torsionMass B :=
  h.torsion_mass_eq

structure LegacyQuasiIsoAnchor where
  sourceLabel : String
  legacyStatement : Prop
  status : RebuildProofStatus := RebuildProofStatus.classicalAnchorOnly

end Derived
end Rebuild
end Folder
```
