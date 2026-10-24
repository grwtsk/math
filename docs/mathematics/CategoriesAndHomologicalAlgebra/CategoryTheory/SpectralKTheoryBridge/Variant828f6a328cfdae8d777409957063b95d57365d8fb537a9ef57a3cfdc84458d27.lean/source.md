# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralKTheoryBridge.Variant828f6a328cfdae8d777409957063b95d57365d8fb537a9ef57a3cfdc84458d27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b2cfd001e8e01140bf8b3690a110c50c9d69b88` · SHA-256 `cd450ee44981fa0d1be272210bc6d3c2c7730b99d406a3498207099939a942f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DiracSpectrumSelfAdjointLike.Variant52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.DiracSpectrumSelfAdjointLike.Variant52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/SpectralKTheoryBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.SpectralKTheoryBridge

/-!
# Folder.Theorem.DerivedSheaf.SpectralKTheoryBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-to-K-theory bridge facts, not BinaryMatrix data.
Ontology: derived.spectral_k_theory_bridge
Pivot role: spectral
Zero typology: k_zero
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DiracSpectrumSelfAdjointLike.Variant52dc81fa38e8fbb0b4e219c3a2351b83b92456c0b710774583bd713929e2341f

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem dirac_spectrum_self_adjoint_like
    (S : Folder.Spectral.DiracSpectrum) :
    S.selfAdjointLike :=
  Folder.Spectral.dirac_spectrum_self_adjoint_like S

theorem dirac_spectrum_discrete
    (S : Folder.Spectral.DiracSpectrum) :
    S.discreteSpectrum :=
  Folder.Spectral.dirac_spectrum_discrete S

theorem dirac_spectrum_compact_resolvent_like
    (S : Folder.Spectral.DiracSpectrum) :
    S.compactResolventLike :=
  Folder.Spectral.dirac_spectrum_compact_resolvent_like S

theorem dirac_spectrum_object_is_categorical
    (X : Folder.Spectral.DiracSpectrumObject) :
    X.categoricalObject :=
  Folder.Spectral.dirac_spectrum_object_is_categorical X

theorem dirac_morphism_preserves_eigenvalues
    {X Y : Folder.Spectral.DiracSpectrumObject}
    (f : Folder.Spectral.DiracSpectrumMorphism X Y) :
    f.preservesEigenvalues :=
  Folder.Spectral.dirac_morphism_preserves_eigenvalues f

theorem dirac_morphism_preserves_multiplicity
    {X Y : Folder.Spectral.DiracSpectrumObject}
    (f : Folder.Spectral.DiracSpectrumMorphism X Y) :
    f.preservesMultiplicity :=
  Folder.Spectral.dirac_morphism_preserves_multiplicity f

theorem dirac_spectrum_category_assoc
    (C : Folder.Spectral.DiracSpectrumCategory) :
    C.assoc :=
  Folder.Spectral.dirac_spectrum_category_assoc C

theorem dirac_spectrum_maps_to_k_class
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.DiracSpectrumToKTheoryClass M) :
    B.mapsSpectrumToKClass :=
  Folder.DerivedSheaf.dirac_spectrum_maps_to_k_class B

theorem dirac_spectrum_k_class_compatible_with_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.DiracSpectrumToKTheoryClass M) :
    B.compatibleWithIndex :=
  Folder.DerivedSheaf.dirac_spectrum_k_class_compatible_with_index B

theorem dirac_spectrum_k_functor_morphism_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    (F : Folder.DerivedSheaf.DiracSpectrumKTheoryFunctor M) :
    F.morphismCompatible :=
  Folder.DerivedSheaf.dirac_spectrum_k_functor_morphism_compatible F

theorem dirac_spectrum_realizes_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (R : Folder.DerivedSheaf.DiracSpectrumRealizesKTheoryIndex M I) :
    R.spectralObjectRepresentsIndex :=
  Folder.DerivedSheaf.dirac_spectrum_realizes_k_index R

theorem dirac_spectrum_k_index_same_class
    {M : Folder.DerivedSheaf.MellKTheory}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (R : Folder.DerivedSheaf.DiracSpectrumRealizesKTheoryIndex M I) :
    R.bridge.target.value = I.indexClass.value :=
  Folder.DerivedSheaf.dirac_spectrum_k_index_same_class R

end DerivedSheaf
end Theorem
end Folder
```
