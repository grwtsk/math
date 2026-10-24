# Complete source: GRWTSK.Analysis.FunctionalAnalysis.CategoricalSpectrum.Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edb3359c27eb5af99981718be6c91924a5cbe7b1` · SHA-256 `b4c22047580b36a128a51ac0b6263e23a4c91c691be6408dba7a957a02630089`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.DiracSpectrumMorphism.Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DiracSpectrumMorphism.Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7","mathematical_subject":"Foundations.Unclassified","original_sha256":"5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CategoricalSpectrum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.CategoricalSpectrum

Radiation role: spectral-heat
BinaryMatrix spine: This module records categorical Dirac-spectrum contracts, not BinaryMatrix data.
Ontology: spectral.dirac_spectrum_morphism
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.DiracSpectrumMorphism.Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7

namespace Folder
namespace Spectral

/--
A morphism between Dirac spectrum objects.

This is a categorical morphism contract. It records spectrum preservation,
not an actual analytic proof.
-/
structure DiracSpectrumMorphism
    (X Y : DiracSpectrumObject) where
  mapLabel : String
  preservesEigenvalues : Prop
  preservesEigenvalues_certified : preservesEigenvalues
  preservesMultiplicity : Prop
  preservesMultiplicity_certified : preservesMultiplicity
  compatibleWithTensorCarrier : Prop
  compatibleWithTensorCarrier_certified : compatibleWithTensorCarrier

/--
A category-like interface whose objects are Dirac spectrum objects.

This is deliberately contract-level. It avoids forcing Mathlib category
instances into the low-level spectral tensor layer.
-/
structure DiracSpectrumCategory where
  Hom : DiracSpectrumObject → DiracSpectrumObject → Type _
  id : ∀ X, Hom X X
  comp :
    ∀ {X Y Z}, Hom X Y → Hom Y Z → Hom X Z
  id_left : Prop
  id_left_certified : id_left
  id_right : Prop
  id_right_certified : id_right
  assoc : Prop
  assoc_certified : assoc
  sourceLabel : String

theorem dirac_morphism_preserves_eigenvalues
    {X Y : DiracSpectrumObject}
    (f : DiracSpectrumMorphism X Y) :
    f.preservesEigenvalues :=
  f.preservesEigenvalues_certified

theorem dirac_morphism_preserves_multiplicity
    {X Y : DiracSpectrumObject}
    (f : DiracSpectrumMorphism X Y) :
    f.preservesMultiplicity :=
  f.preservesMultiplicity_certified

theorem dirac_spectrum_category_assoc
    (C : DiracSpectrumCategory) :
    C.assoc :=
  C.assoc_certified

end Spectral
end Folder
```
