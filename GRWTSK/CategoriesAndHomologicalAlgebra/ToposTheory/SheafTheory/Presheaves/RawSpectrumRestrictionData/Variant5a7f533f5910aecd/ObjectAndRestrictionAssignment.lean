/-
Raw object and restriction assignments to the original spectrum-record interface
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75
Organized SHA-256: 0464b59c2e9235ba6a577440903f18fde73a3d038f6bd0e8d5fe67259fde9308
PMD: 510.9.060.010.010 presheaves (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole exact obj/restrict record under the original C/SpectrumObject/SpectrumMorphism providers. No identity/composition/descent/coherence laws, category/spectrum construction, existence or arithmetic interpretation is supplied. Mixed local sheaf contracts and their genuine chosen-Prop proofs stay exact archives. -/

import Folder.ResearchTopos.GrothendieckTopology
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.SheafOfSpectra

Radiation role: research-boundary
BinaryMatrix spine: This module records sheaves of spectra as contract data over a site.
Ontology: adelic.sheaf_of_spectra
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

open Folder
open Folder.AdelicInfinityTopos

namespace GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.RawSpectrumRestrictionData.Variant5a7f533f5910aecd

open ResearchTopos

structure PresheafOfSpectra
    (C : SiteCategory) where
  obj : C.Obj → SpectrumObject
  restrict :
    ∀ {X Y : C.Obj}, C.Hom Y X →
      SpectrumMorphism (obj X) (obj Y)

end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.RawSpectrumRestrictionData.Variant5a7f533f5910aecd
