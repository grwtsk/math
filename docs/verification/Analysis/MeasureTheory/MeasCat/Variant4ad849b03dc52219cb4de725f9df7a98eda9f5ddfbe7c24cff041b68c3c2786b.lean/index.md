# Verification target: GRWTSK.Analysis.MeasureTheory.MeasCat.Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b910c45ebd1b53c8fd02ed091dbe841b0f2f0c1a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b910c45ebd1b53c8fd02ed091dbe841b0f2f0c1a`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.GiryMonad` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasCat](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/meascat--eb53211233260221d04615ce.md) | 39 | `declaration-track:eb53211233260221d04615ce8c5131adedd792b415290197e72cbd442e556426` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/instance--1e59b3ca8650a497d25f4b99.md) | 48 | `declaration-track:1e59b3ca8650a497d25f4b99cacaca21445061fc4ec37c3a1fbf982e8e061987` |
| 3 | `abbrev` | [of](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/of--b0add4aa652e8307bcc699a3.md) | 52 | `declaration-track:b0add4aa652e8307bcc699a3afc37bb836b27305edfbd447837852a74124126f` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/coe-of--ace56e8fa1f59ce3ac747c08.md) | 55 | `result-track:ace56e8fa1f59ce3ac747c0867e065b9c668933bc401a3779037412a512325c2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/instance--4bc27eecee84ca0a1c1073d0.md) | 58 | `declaration-track:4bc27eecee84ca0a1c1073d0dc13e9128faa52cf1b99ff3afcbcb15a1bb4726c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/instance--e9655786d7787a1dc4c56acb.md) | 63 | `declaration-track:e9655786d7787a1dc4c56acb945c1fb7dc09c711523b5a4e380246977a52ff09` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/instance--e5d9409ee3bb50d1bdf73c9a.md) | 67 | `declaration-track:e5d9409ee3bb50d1bdf73c9a37b3cd117e68adff9d541f01ef821bc13bbe1091` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/instance--fa70ee1b878eb7badc983a36.md) | 71 | `declaration-track:fa70ee1b878eb7badc983a36715733412e41f262f416b2ea4771f37a1a9a3506` |
| 9 | `def` | [Measure](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/measure--e8f6b69b9ab5541993590212.md) | 83 | `declaration-track:e8f6b69b9ab5541993590212852318608297819392a5889609f95a740e63efb7` |
| 10 | `def` | [Giry](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/giry--9c43822d72ee55141b81d28d.md) | 90 | `declaration-track:9c43822d72ee55141b81d28d67bff41e35fd64ec248743e25169cdbe705c8894` |
| 11 | `def` | [Integral](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/integral--a034f766fc23cac2e9b53646.md) | 104 | `declaration-track:a034f766fc23cac2e9b53646f446d531ce87d2aee05e259b025f7a7ded30989a` |
| 12 | `instance` | [TopCat.hasForgetToMeasCat](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/topcat-hasforgettomeascat--47d56ce08848733605c07794.md) | 115 | `declaration-track:47d56ce08848733605c0779402a32152cc0056639d1c8e0a3cb9d8d983909721` |
| 13 | `abbrev` | [Borel](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/declarations/borel--10a794798ed4674c05196f35.md) | 120 | `declaration-track:10a794798ed4674c05196f359101d23a76b1f619d9b53e08df4f91688c9835b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
