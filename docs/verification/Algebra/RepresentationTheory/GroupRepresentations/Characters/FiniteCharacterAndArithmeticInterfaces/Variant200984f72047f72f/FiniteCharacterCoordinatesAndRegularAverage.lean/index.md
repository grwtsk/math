# Verification target: GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.FiniteCharacterCoordinatesAndRegularAverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e9ae6e3b5aa1b38a8e38f114df6c24ca8b67980",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e9ae6e3b5aa1b38a8e38f114df6c24ca8b67980`.

Source path: `GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean.json)

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

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CharacterIndex](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/declarations/characterindex--efb65560d536fd944ea563a5.md) | 46 | `declaration-track:efb65560d536fd944ea563a5b0154020c3fddd0b3958f6d51329950b579dc457` |
| 2 | `instance` | [characterIndexFintype](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/declarations/characterindexfintype--3155cd0fcca31c7ecf67030d.md) | 49 | `declaration-track:3155cd0fcca31c7ecf67030d08c864594c335d299fd026bae0837c54b8ff85ec` |
| 3 | `abbrev` | [CharacterHilbert](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/declarations/characterhilbert--0a5d5a8b486da18eda0c22b3.md) | 53 | `declaration-track:0a5d5a8b486da18eda0c22b331828870d7d54903bd814d1901a842343636d670` |
| 4 | `def` | [rightRegularMatrix](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/declarations/rightregularmatrix--cc0852903cb16cc063f86f91.md) | 58 | `declaration-track:cc0852903cb16cc063f86f915579e8af0b207fa53f107a893bd128e60e332701` |
| 5 | `theorem` | [rightRegularMatrix_apply](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/declarations/rightregularmatrix-apply--f07c19dd69349fc27b732b08.md) | 65 | `result-track:f07c19dd69349fc27b732b081829d993996bca0b132b753186da978d0e4d8f91` |
| 6 | `def` | [characterRegularAverageMatrix](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean/declarations/characterregularaveragematrix--ab7a8be258d2bf0eaf2d2677.md) | 73 | `declaration-track:ab7a8be258d2bf0eaf2d2677067ef651ae7896ce8550cc1a63babef81aabefc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
