# Verification target: GRWTSK.Analysis.MeasureTheory.EmbeddingReal.Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a72519b60d3b85666b29f8b79cdf5a4736015c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a72519b60d3b85666b29f8b79cdf5a4736015c`.

Source path: `GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Cardinality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_nat_measurableEquiv_range_coe_fin_of_finite](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/declarations/exists-nat-measurableequiv-range-coe-fin-of-finite--f89f63d9ed1d483e2fa6581d.md) | 18 | `result-track:f89f63d9ed1d483e2fa6581df0b350a43a938efa605634180b5d7c436e8c0e6a` |
| 2 | `theorem` | [measurableEquiv_range_coe_nat_of_infinite_of_countable](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/declarations/measurableequiv-range-coe-nat-of-infinite-of-countable--a19aa62428a069f5927acf79.md) | 24 | `result-track:a19aa62428a069f5927acf79ea3b5487c81e3efac2d85e7ea90a14aa44c70abc` |
| 3 | `theorem` | [exists_subset_real_measurableEquiv](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/declarations/exists-subset-real-measurableequiv--402c0bd5cc4c80607a38032e.md) | 33 | `result-track:402c0bd5cc4c80607a38032e2062508c2d1ced1c683c345c25c9f77eca9506dc` |
| 4 | `theorem` | [exists_measurableEmbedding_real](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/declarations/exists-measurableembedding-real--34ade6160b7cf4f908746c16.md) | 53 | `result-track:34ade6160b7cf4f908746c168dfc5ed08524fda55dd733b443179e2f29f2bf40` |
| 5 | `def` | [embeddingReal](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/declarations/embeddingreal--da1f51797b8d821e5f2ca548.md) | 59 | `declaration-track:da1f51797b8d821e5f2ca54863018765545348132d393433a63b37819d06e457` |
| 6 | `lemma` | [measurableEmbedding_embeddingReal](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/declarations/measurableembedding-embeddingreal--1b22fced44b645f29ff0858b.md) | 62 | `result-track:1b22fced44b645f29ff0858b19a57920ed086701a018be6a9e4e6ed5afc38eb8` |
| 7 | `lemma` | [measurable_embeddingReal](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908.lean/declarations/measurable-embeddingreal--b9ccd4eb69ebf8f2c60768ae.md) | 67 | `result-track:b9ccd4eb69ebf8f2c60768aed8ee0dba8dbf5a10c03feccbdbfb9c16275b6187` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
