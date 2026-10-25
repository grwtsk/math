# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedPartialRuleResolution.Variant6c83d94156be4acd.CompositionAndCopyEquations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cdd3995e18e2ac2d48d3de29f3ffe202431794c` · SHA-256 `6cdfd815e0301b543c573b164bec2835ed23b2805a284164c1ab93179b916a0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Option composition and conditional copy-realization equations
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372
Organized SHA-256: 165ae0e8c1fb148a2fa0e3dac41cc5b841eaf09aaabd6185e0453f977363e174
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Entire two-option success/failure match and both original conditional proofs with full A/E/D/r/M/hget. No totality, uniqueness, new action law or proof-step packaging claim. -/

import Folder.Archive.IndexSpinRef
import Folder.Archive.PresentationRule
import Folder.Carrier.BinaryMatrixStream

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedPartialRuleResolution.Variant6c83d94156be4acd.ResolverAndRecipe

/-!
# Folder.Archive.RuleEngine

Radiation role: archive-rule-engine
BinaryMatrix spine: This module applies presentation rules after index-spin atom realization to materialize BinaryMatrix layers.
Ontology: archive.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

open Folder
open Folder.Archive

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedPartialRuleResolution.Variant6c83d94156be4acd

def realizeLayerRecipe?
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : LayerRecipe A E) :
    Option Carrier.BinaryMatrix :=
  match realizeIndexSpin? A D r.ref, E.resolve r.rule with
  | some M, some R => some (R.apply M)
  | _, _ => none

theorem realize_copy_recipe
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef A)
    (M : Carrier.BinaryMatrix)
    (hget : realizeIndexSpin? A D r = some M) :
    realizeLayerRecipe? A E D { ref := r, rule := E.copyId } = some M := by
  simp [realizeLayerRecipe?, hget, E.copy_resolves, copyRule]

theorem copyRuleEngine_realize
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef copyAction)
    (M : Carrier.BinaryMatrix)
    (hget : realizeIndexSpin? copyAction D r = some M) :
    realizeLayerRecipe? copyAction copyRuleEngine D
      { ref := r, rule := copyRuleEngine.copyId } = some M := by
  exact realize_copy_recipe copyAction copyRuleEngine D r M hget

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedPartialRuleResolution.Variant6c83d94156be4acd
```
