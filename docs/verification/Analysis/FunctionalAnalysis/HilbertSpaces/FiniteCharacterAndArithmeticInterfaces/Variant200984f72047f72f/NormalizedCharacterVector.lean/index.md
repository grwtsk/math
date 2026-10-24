# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.NormalizedCharacterVector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1317b37a014a659f23663a41c763213285c77439",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1317b37a014a659f23663a41c763213285c77439`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 26; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.FiniteCharacterCoordinatesAndRegularAverage`](../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/index.md) — import line 27; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterNormalization](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/characternormalization--d9eb5b2b318d50b1739cd63d.md) | 50 | `declaration-track:d9eb5b2b318d50b1739cd63d984b378ebc4067381a04493b1f2809945de2a4c9` |
| 2 | `theorem` | [characterIndex_card_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/characterindex-card-pos--49cc37bc73d6a4fc27c98487.md) | 53 | `result-track:49cc37bc73d6a4fc27c9848717358293e8e4de0ff2990ea3b95154755e915db4` |
| 3 | `theorem` | [characterNormalization_nonnegative](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/characternormalization-nonnegative--bd8ea3adf661b0f6a382e491.md) | 57 | `result-track:bd8ea3adf661b0f6a382e4910d2699b54f9449027fe87f515591d5968d4e06f4` |
| 4 | `theorem` | [characterNormalization_sq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/characternormalization-sq--e1cd11b154b4575c5d492e6f.md) | 62 | `result-track:e1cd11b154b4575c5d492e6fe175f23f14e13783e6f399c548af7c913a659ed8` |
| 5 | `def` | [characterVector](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/charactervector--5c288b7a67beea609b2d3933.md) | 72 | `declaration-track:5c288b7a67beea609b2d39331fe68b4f3f8f93c9cb3294764166bfbaf60e8d81` |
| 6 | `theorem` | [characterVector_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/charactervector-apply--b458d1b699a587e6910605d1.md) | 78 | `result-track:b458d1b699a587e6910605d169279eb7bf854b07a874ea1273077324394845ed` |
| 7 | `theorem` | [characterVector_norm_sq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/charactervector-norm-sq--c273d6c3adf88bc905d89676.md) | 86 | `result-track:c273d6c3adf88bc905d8967695c3e726f49726fcbe1a3c625ca0dc08dfd71632` |
| 8 | `theorem` | [characterVector_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/NormalizedCharacterVector.lean/declarations/charactervector-norm--cc4633d31f278a052fa5f8e9.md) | 100 | `result-track:cc4633d31f278a052fa5f8e9f29ef0d8912510e771fa2a49ee40153d96c1bb7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
