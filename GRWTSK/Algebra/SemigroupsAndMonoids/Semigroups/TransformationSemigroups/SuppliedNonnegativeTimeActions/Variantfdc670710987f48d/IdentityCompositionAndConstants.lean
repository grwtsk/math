/-
IdentityCompositionAndConstants — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: fdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730
Organized SHA-256: d18e157550ae44a542bc4d59a9822665f9c27353af81626f758037cc6bcf3fcf
PMD: 510.1.020.010.060 transformation semigroups (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole NNReal-indexed family of transformations with exact supplied zero/composition and constant-preservation equations. No continuity, linearity, positivity, generator, heat kernel or constructed action asserted. -/

import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Heat

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.heat
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/


namespace GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.SuppliedNonnegativeTimeActions.Variantfdc670710987f48d

open Folder
open Folder.Spectral

open Carrier

structure GraphHeat (s : GridShape) (k : Nat) where
  heat : NNReal → SpectralTensor s k → SpectralTensor s k
  heat_zero : ∀ X, heat 0 X = X
  heat_add : ∀ t u X, heat (t + u) X = heat t (heat u X)
  preserves_constant :
    ∀ t a, heat t (SpectralTensor.constant s a) =
      SpectralTensor.constant s a

end GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.SuppliedNonnegativeTimeActions.Variantfdc670710987f48d
