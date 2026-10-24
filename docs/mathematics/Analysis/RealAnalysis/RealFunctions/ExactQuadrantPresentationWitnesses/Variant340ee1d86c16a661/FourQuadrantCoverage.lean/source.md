# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.ExactQuadrantPresentationWitnesses.Variant340ee1d86c16a661.FourQuadrantCoverage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `945984c1be1e749ee412928ea92186133a82c62a` · SHA-256 `22890aa2420dceb4f12ad74a3dc2985ca07a03f4ac5000b1a9e18d0819b05b89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FourQuadrantCoverage
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2
Organized SHA-256: 18356dc1dd59e12b63ed2e97bcce397298e72d7e571d662c22c2b2ce44ce1c43
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Private quadrantCoordinate and both consumer commands fourModePresentation/four_mode_coverage stay together in one file. All four positive/negative one-half coordinates, bounds, mode tags and semantic equalities are exact. Historical documentation saying kernel-checked is retained as source text; no proof was replayed here. The explicit open BitMatrix.Rhetorical restores only the original imported Core short-name lookup; no new414 provider is imported. -/

import BitMatrix.Codec.SequentialPrimeSource
import BitMatrix.Rhetorical.Core
import BitMatrix.Topology.DesignatedCantor

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ExactCarrierRepresentationPackages.Variant340ee1d86c16a661.WholeTheoryAndSymbolicSource

/-!
# One invariant theory in four rhetorical modes

This module is the formal correspondence layer for the four presentations in
`docs/bit/mapping-rhetorical-systems.md`.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661


open BitMatrix.Rhetorical

private def quadrantCoordinate
    (horizontal vertical : ℝ)
    (horizontalLower : -1 ≤ horizontal)
    (horizontalUpper : horizontal ≤ 1)
    (verticalLower : -1 ≤ vertical)
    (verticalUpper : vertical ≤ 1) :
    RhetoricalCoordinate where
  structuralHierarchy := horizontal
  interpreterPrecision := vertical
  structuralLower := horizontalLower
  structuralUpper := horizontalUpper
  precisionLower := verticalLower
  precisionUpper := verticalUpper

/-- Canonical witnesses occupying the four open quadrants. -/
noncomputable def fourModePresentation (theory : InvariantTheory) :
    FourModePresentation InvariantTheory where
  invariant := theory
  formalHypotactic :=
    ⟨.formalHypotaxis,
      quadrantCoordinate (1 / 2) (1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  formalParatactic :=
    ⟨.formalParataxis,
      quadrantCoordinate (-1 / 2) (1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  pragmaticParatactic :=
    ⟨.pragmaticParataxis,
      quadrantCoordinate (-1 / 2) (-1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  pragmaticHypotactic :=
    ⟨.pragmaticHypotaxis,
      quadrantCoordinate (1 / 2) (-1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  formalHypotactic_mode := rfl
  formalParatactic_mode := rfl
  pragmaticParatactic_mode := rfl
  pragmaticHypotactic_mode := rfl
  formalHypotactic_semantic := rfl
  formalParatactic_semantic := rfl
  pragmaticParatactic_semantic := rfl
  pragmaticHypotactic_semantic := rfl

/-- Kernel-checked four-mode coverage and semantic invariance. -/
theorem four_mode_coverage (theory : InvariantTheory) :
    let presentations := fourModePresentation theory
    presentations.formalHypotactic.mode = .formalHypotaxis ∧
    presentations.formalParatactic.mode = .formalParataxis ∧
    presentations.pragmaticParatactic.mode = .pragmaticParataxis ∧
    presentations.pragmaticHypotactic.mode = .pragmaticHypotaxis ∧
    classify origin presentations.formalHypotactic.coordinate =
      .formalHypotaxis ∧
    classify origin presentations.formalParatactic.coordinate =
      .formalParataxis ∧
    classify origin presentations.pragmaticParatactic.coordinate =
      .pragmaticParataxis ∧
    classify origin presentations.pragmaticHypotactic.coordinate =
      .pragmaticHypotaxis ∧
    presentations.formalHypotactic.semanticValue =
      presentations.formalParatactic.semanticValue ∧
    presentations.formalParatactic.semanticValue =
      presentations.pragmaticParatactic.semanticValue ∧
      presentations.pragmaticParatactic.semanticValue =
      presentations.pragmaticHypotactic.semanticValue := by
  norm_num [fourModePresentation, classify, quadrantCoordinate, origin]

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661
```
