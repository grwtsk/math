# Verification target: GRWTSK.Analysis.MeasureTheory.FactorsThrough.Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f4041188e7c8e88681f031058a7c70c7cc75b55",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f4041188e7c8e88681f031058a7c70c7cc75b55`.

Source path: `GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Polish.StronglyMeasurable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Process.Filtration` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.Measurable.factorsThrough](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/root-measurable-factorsthrough--18e7acd78ddd2a2723484d6b.md) | 33 | `result-track:18e7acd78ddd2a2723484d6b8ddf9fdfb4445ea2d8ec24178a6568922353f0b8` |
| 2 | `theorem` | [StronglyMeasurable.factorsThrough](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/stronglymeasurable-factorsthrough--f67c4b1bfda9d53a8f109033.md) | 45 | `result-track:f67c4b1bfda9d53a8f10903373029bf9c54e3cb0c2736d6bcbaab8d70d2db6d4` |
| 3 | `theorem` | [StronglyMeasurable.exists_eq_measurable_comp](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/stronglymeasurable-exists-eq-measurable-comp--ea6c5ab6755b8f091afcace7.md) | 53 | `result-track:ea6c5ab6755b8f091afcace7507dc4b4e0674cd1e1e37cfabe2b8e7020cf4f5c` |
| 4 | `theorem` | [_root_.Measurable.exists_eq_measurable_comp](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/root-measurable-exists-eq-measurable-comp--4da93fb38d84a2f71f803d4d.md) | 74 | `result-track:4da93fb38d84a2f71f803d4df9af30fde75e7828bafa5df98dd82b0e9c5d25e4` |
| 5 | `theorem` | [_root_.Measurable.dependsOn_of_piLE](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/root-measurable-dependson-of-pile--5591289f33e68f8b5fee2f5c.md) | 91 | `result-track:5591289f33e68f8b5fee2f5cba60776f73f5e977c447f736841cfe98cabc8c85` |
| 6 | `theorem` | [StronglyMeasurable.dependsOn_of_piLE](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/stronglymeasurable-dependson-of-pile--7c2fdb966b180d9482462b8c.md) | 97 | `result-track:7c2fdb966b180d9482462b8c5fe90467809963122d5f0cc334a2320108e5068b` |
| 7 | `theorem` | [_root_.Measurable.dependsOn_of_piFinset](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/root-measurable-dependson-of-pifinset--0efd724823cbff0a8aab4a03.md) | 109 | `result-track:0efd724823cbff0a8aab4a033ea32ae98ee1b371eae8bd7226d6de13b6880ee9` |
| 8 | `theorem` | [StronglyMeasurable.dependsOn_of_piFinset](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.lean/declarations/stronglymeasurable-dependson-of-pifinset--3eef98c236b9dbd33d049af2.md) | 115 | `result-track:3eef98c236b9dbd33d049af2827fd5198bbad32886c82721e0d2944a1374979d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
