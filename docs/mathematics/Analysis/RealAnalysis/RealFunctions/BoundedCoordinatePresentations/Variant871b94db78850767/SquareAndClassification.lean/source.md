# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.BoundedCoordinatePresentations.Variant871b94db78850767.SquareAndClassification

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9267351b480dbe210a6c6307e41125fde808b2eb` · SHA-256 `3bbfaca3eb3f940afd42a9a439c7856d1151c1958798ff47b24f571e7bdda38a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SquareAndClassification
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 871b94db788507674ebed1f36e241bc1258ac12a9cd930eb57a35578917ab104
Organized SHA-256: 2d8025b0e6834aef4f0bb5295b31daa01d6319120669b325f562a4137244f2e0
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- RhetoricalCoordinate retains all six values/bound fields; origin retains four exact norm_num proof terms. Both finite mode/region datatypes and all deriving clauses stay whole with classify. Classification uses relative coordinate differences and exact nine-way branches; no continuity, coverage theorem or semantic invariance follows merely from a region label. -/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NormNum

/-!
# Rhetorical coordinate semantics

The coordinate, presentation, and semantic layers are distinct.  Classification
changes presentation metadata only; semantic invariance is a separate proof.
-/

namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.BoundedCoordinatePresentations.Variant871b94db78850767

universe u

/-- A point of the closed rhetorical square `[-1,1]²`. -/
structure RhetoricalCoordinate where
  structuralHierarchy : ℝ
  interpreterPrecision : ℝ
  structuralLower : -1 ≤ structuralHierarchy
  structuralUpper : structuralHierarchy ≤ 1
  precisionLower : -1 ≤ interpreterPrecision
  precisionUpper : interpreterPrecision ≤ 1

/-- The neutral reference point of the executable rhetorical frame. -/
def origin : RhetoricalCoordinate where
  structuralHierarchy := 0
  interpreterPrecision := 0
  structuralLower := by norm_num
  structuralUpper := by norm_num
  precisionLower := by norm_num
  precisionUpper := by norm_num

/-- The four open rhetorical modes. -/
inductive RhetoricalMode where
  | formalHypotaxis
  | formalParataxis
  | pragmaticParataxis
  | pragmaticHypotaxis
  deriving DecidableEq, Repr

/-- Four quadrants, four transition rays, and the selected equilibrium. -/
inductive RhetoricalRegion where
  | formalHypotaxis
  | formalParataxis
  | pragmaticParataxis
  | pragmaticHypotaxis
  | positiveStructuralAxis
  | negativeStructuralAxis
  | positivePrecisionAxis
  | negativePrecisionAxis
  | equilibrium
  deriving DecidableEq, Repr

/-- Classify a point relative to a selected reference point. -/
noncomputable def classify
    (reference point : RhetoricalCoordinate) : RhetoricalRegion :=
  let horizontal := point.structuralHierarchy - reference.structuralHierarchy
  let vertical := point.interpreterPrecision - reference.interpreterPrecision
  if horizontal = 0 ∧ vertical = 0 then .equilibrium
  else if horizontal = 0 ∧ 0 < vertical then .positivePrecisionAxis
  else if horizontal = 0 then .negativePrecisionAxis
  else if vertical = 0 ∧ 0 < horizontal then .positiveStructuralAxis
  else if vertical = 0 then .negativeStructuralAxis
  else if 0 < horizontal ∧ 0 < vertical then .formalHypotaxis
  else if horizontal < 0 ∧ 0 < vertical then .formalParataxis
  else if horizontal < 0 ∧ vertical < 0 then .pragmaticParataxis
  else .pragmaticHypotaxis

end GRWTSK.Analysis.RealAnalysis.RealFunctions.BoundedCoordinatePresentations.Variant871b94db78850767
```
