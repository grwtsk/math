# Verification target: GRWTSK.Analysis.MeasureTheory.Lemmas.Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "372ddf440ef3d4689065dcc80cad2dacd483113e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `372ddf440ef3d4689065dcc80cad2dacd483113e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureComp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.ParallelComp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [parallelComp_comp_copy](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/parallelcomp-comp-copy--d7eaaab593fdcf261c7783ef.md) | 45 | `result-track:d7eaaab593fdcf261c7783ef130be5ad82be1d4b3c83a5f841dcca075eb01b4a` |
| 2 | `lemma` | [swap_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/swap-parallelcomp--08df2e0e6bb3a60611eda763.md) | 57 | `result-track:08df2e0e6bb3a60611eda7639b92ae95f309812081da73c99faa207d806d2e0c` |
| 3 | `lemma` | [deterministic_comp_copy](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/deterministic-comp-copy--01e5afe7f66ce523c47d2830.md) | 75 | `result-track:01e5afe7f66ce523c47d28300a9550893b99e7929adf5020fc1250c251a66c40` |
| 4 | `lemma` | [compProd_eq_parallelComp_comp_copy_comp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/compprod-eq-parallelcomp-comp-copy-comp--d3a000d3695c259c414e8d9e.md) | 84 | `result-track:d3a000d3695c259c414e8d9e58cd88f49c45a8c2cef989aaa52744c1eb080d29` |
| 5 | `lemma` | [prod_comp_right](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/prod-comp-right--f0ddd3a89793cc24b7926ecc.md) | 90 | `result-track:f0ddd3a89793cc24b7926ecca2ad4893cca501b9aa58c09a5b5ca0b9b809ccdb` |
| 6 | `lemma` | [prod_comp_left](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/prod-comp-left--4ac72c8622bd17d30ad64c7d.md) | 102 | `result-track:4ac72c8622bd17d30ad64c7d5bfd55a471c18eabf256e30365c6ba303b5fbf6e` |
| 7 | `lemma` | [parallelComp_id_left_comp_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/parallelcomp-id-left-comp-parallelcomp--cbfaa491d1d38406b0e59444.md) | 124 | `result-track:cbfaa491d1d38406b0e5944414fe30097aa753fa3f07bc17846905358efdd8dd` |
| 8 | `lemma` | [parallelComp_id_right_comp_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/parallelcomp-id-right-comp-parallelcomp--f9f5b99e098ab2feb4dc9fac.md) | 132 | `result-track:f9f5b99e098ab2feb4dc9fac4e0912a2e4a662f5f23ae5fda0678fd02f8db5e5` |
| 9 | `lemma` | [parallelComp_comp_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/parallelcomp-comp-parallelcomp--1391f76651f61c911f476f9c.md) | 140 | `result-track:1391f76651f61c911f476f9cb95e0055710d494fcdcd450af7fa61d337ce1956` |
| 10 | `lemma` | [parallelComp_comp_prod](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/parallelcomp-comp-prod--fd2dcac4d63afcbd863363b1.md) | 146 | `result-track:fd2dcac4d63afcbd863363b16b7fb8ae9296855db339ea85964672bdf5c01399` |
| 11 | `lemma` | [parallelComp_comm](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/parallelcomp-comm--bb7e7ffeb60f571dd0f859d3.md) | 152 | `result-track:bb7e7ffeb60f571dd0f859d34a1ad1cd83b09be3fed6b1f5c7908a6d2c92a592` |
| 12 | `lemma` | [MeasureTheory.Measure.parallelComp_comp_compProd](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant08a72b82aa9589957742222efb0f4400bf2a7fe6bbda0d0fa346806af53982e6.lean/declarations/measuretheory-measure-parallelcomp-comp-compprod--f7ee5e424adb2316004c7038.md) | 163 | `result-track:f7ee5e424adb2316004c7038632eb71b642a34c1abf9cad407c30f122453c47d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
