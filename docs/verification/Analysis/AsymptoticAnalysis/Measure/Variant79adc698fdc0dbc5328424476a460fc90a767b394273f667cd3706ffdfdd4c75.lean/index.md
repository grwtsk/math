# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Measure.Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee8ae8a1fabc0f32cac04892d151119f494417bc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee8ae8a1fabc0f32cac04892d151119f494417bc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Liouville.Residual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Liouville.LiouvilleWith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/declarations/macro-rules--3eb6f78663dd08787c784cb2.md) | 42 | `declaration-track:3eb6f78663dd08787c784cb23d8321ff8c9e9e5da64af67c69e752e15c39ac2b` |
| 2 | `theorem` | [setOf_liouvilleWith_subset_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/declarations/setof-liouvillewith-subset-aux--1793e3988d0968e150f7c422.md) | 44 | `result-track:1793e3988d0968e150f7c42212c107640018a47b29716b42a80e0acb8580e04d` |
| 3 | `theorem` | [volume_iUnion_setOf_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/declarations/volume-iunion-setof-liouvillewith--b98ff076ec565186c6d08b86.md) | 87 | `result-track:b98ff076ec565186c6d08b86201ec8ff7f3e3f2a21b45cd671d33e9367ad16c0` |
| 4 | `theorem` | [ae_not_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/declarations/ae-not-liouvillewith--133573a732ec76b851bc92b3.md) | 119 | `result-track:133573a732ec76b851bc92b3f899a228ccd3f382520578c41abed99ff7158dcd` |
| 5 | `theorem` | [ae_not_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/declarations/ae-not-liouville--343ed4ea83ba55c69e1aee98.md) | 124 | `result-track:343ed4ea83ba55c69e1aee98486d53a1bea6f8c31c5cc91237c6c862bc9d40ab` |
| 6 | `theorem` | [volume_setOf_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/declarations/volume-setof-liouville--b0912dd84d6c9505e9b08762.md) | 130 | `result-track:b0912dd84d6c9505e9b08762643acf792ec9c610318e90334e8a2ed9e43973ab` |
| 7 | `theorem` | [Real.disjoint_residual_ae](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/declarations/real-disjoint-residual-ae--79cd91f9ffef70e0c42490b0.md) | 136 | `result-track:79cd91f9ffef70e0c42490b05a3dad2469c1192dd9ec1df84cf33f65c4da3c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
