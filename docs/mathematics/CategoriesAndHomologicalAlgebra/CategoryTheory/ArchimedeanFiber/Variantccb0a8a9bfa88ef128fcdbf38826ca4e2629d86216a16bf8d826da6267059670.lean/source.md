# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArchimedeanFiber.Variantccb0a8a9bfa88ef128fcdbf38826ca4e2629d86216a16bf8d826da6267059670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d559cbafe80326a725b5897918e2ec7cd61bc6b` · SHA-256 `1a182a55c7605eabdc9d30091585c1fe4a26e91bb165ab984e8c1e5e16a7f256`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArchimedeanRodgersTaoFiber.Variantb7d285e72a592544d529257adf437a1857b840f723a10161fc17a940046e4cf3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7d285e72a592544d529257adf437a1857b840f723a10161fc17a940046e4cf3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArchimedeanRodgersTaoFiber.Variantb7d285e72a592544d529257adf437a1857b840f723a10161fc17a940046e4cf3","mathematical_subject":"Foundations.Unclassified","original_sha256":"b7d285e72a592544d529257adf437a1857b840f723a10161fc17a940046e4cf3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/AdelicInfinityTopos/ArchimedeanFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.RodgersTaoHeat
import Folder.ResearchTopos.ZeroFlowODE
import Folder.AdelicInfinityTopos.Place
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.ArchimedeanFiber

Radiation role: research-boundary
BinaryMatrix spine: This module records the Archimedean heat-flow fiber as external analytic contract data.
Ontology: adelic.archimedean_fiber
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: external-witness
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArchimedeanRodgersTaoFiber.Variantb7d285e72a592544d529257adf437a1857b840f723a10161fc17a940046e4cf3

namespace Folder
namespace AdelicInfinityTopos

structure ArchimedeanRodgersTaoFiber where
  place : Place
  place_archimedean : place = Place.archimedean
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  zeroDynamics : ResearchTopos.RodgersTaoZeroDynamics heatFamily
  spectrumObject : SpectrumObject
  heatToSpectrum : Prop
  localEquilibrium : zeroDynamics.localEquilibriumConclusion

theorem archimedean_fiber_place
    (F : ArchimedeanRodgersTaoFiber) :
    F.place = Place.archimedean :=
  F.place_archimedean

theorem archimedean_fiber_local_equilibrium
    (F : ArchimedeanRodgersTaoFiber) :
    F.zeroDynamics.localEquilibriumConclusion :=
  F.localEquilibrium

end AdelicInfinityTopos
end Folder
```
