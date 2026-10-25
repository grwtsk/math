# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.MatrixTransformationEquationData.Variant8d520f6664e77f86.UnitIdentityTransformation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c077ba1bcd86f87166ff68c2ede20e4a947eac53` · SHA-256 `e20cbc739c3399e439041c01b4b7faca13e1b4106ccb70d4a46b50ce144059c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact Unit identity transformation and its unchanged identity equation proof
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed
Organized SHA-256: d1f3860cd9eb82142f12c245d9774c595abc0f9427b0683cfcf0170cebf50df4
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.MatrixTransformationEquationData.Variant8d520f6664e77f86.CompleteActionAndShapeEquations

import Folder.Archive.Spin
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.MatrixSymmetry

Radiation role: archive-symmetry
BinaryMatrix spine: This module describes matrix symmetry actions on BinaryMatrix archive atoms.
Ontology: archive.matrix_symmetry
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/

open Folder Folder.Archive

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.MatrixTransformationEquationData.Variant8d520f6664e77f86

def copyAction : MatrixAction where
  Spin := Unit
  decEqSpin := inferInstance
  id := ()
  comp := fun _ _ => ()
  inv := fun _ => ()
  act := fun _ M => M
  id_act := by intro M; rfl
  comp_act := by intro g h M; rfl
  inv_act_left := by intro g M; rfl
  preserves_rows := by intro g M; rfl
  preserves_cols := by intro g M; rfl

theorem copyAction_id_act
    (M : Carrier.BinaryMatrix) :
    copyAction.act copyAction.id M = M :=
  copyAction.id_act M


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.MatrixTransformationEquationData.Variant8d520f6664e77f86
```
