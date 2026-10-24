# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Sum.Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f305aa968dd02324258f4eb2633069180a5e8e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f305aa968dd02324258f4eb2633069180a5e8e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Maps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/sum--ca9f1606ba6534de7ce190dd.md) | 40 | `declaration-track:ca9f1606ba6534de7ce190dd1dd29e4c5589dd5685320322b9d8bc46c154c2a2` |
| 2 | `def` | [Iso.sumComm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/iso-sumcomm--ab8def91b9178eb38eb36d5b.md) | 57 | `declaration-track:ab8def91b9178eb38eb36d5b2fe40491b97774f53eb5bee94e18f89cc585db05` |
| 3 | `def` | [Iso.sumAssoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/iso-sumassoc--6d26714078b4c62ba393eeba.md) | 62 | `declaration-track:6d26714078b4c62ba393eebae38643ec6a5aa870181f041f1dad386961975ed6` |
| 4 | `def` | [Embedding.sumInl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/embedding-suminl--ec47dc8f9bb00d75e0eba245.md) | 67 | `declaration-track:ec47dc8f9bb00d75e0eba245d8dac0aed439622063bb8ca3ea154d32e2fd54d0` |
| 5 | `def` | [Embedding.sumInr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/embedding-suminr--2e11351bdf288696307a2416.md) | 74 | `declaration-track:2e11351bdf288696307a2416e9952e84fa247ab396510750303ad6de80013c00` |
| 6 | `def` | [Coloring.sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sum--82b80a99c1ca6cb0f9808b0c.md) | 80 | `declaration-track:82b80a99c1ca6cb0f9808b0c12b39a361beb47043d4e2eecf89e95927be1cf9f` |
| 7 | `def` | [Coloring.sumLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sumleft--d3c24c72b16aedb1e0df1b9b.md) | 85 | `declaration-track:d3c24c72b16aedb1e0df1b9b0311c4028483b6173b64b2b3312d2264302c72fd` |
| 8 | `def` | [Coloring.sumRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sumright--cb7f5c1e85c9f9d063a0df60.md) | 88 | `declaration-track:cb7f5c1e85c9f9d063a0df60be4af95447111f1607ab3d9a37c2362390af8b81` |
| 9 | `theorem` | [Coloring.sumLeft_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sumleft-sum--b87c557b808406d6257b15b5.md) | 91 | `result-track:b87c557b808406d6257b15b553e0ef05bab44efe2f9ab9a76444387954dd966c` |
| 10 | `theorem` | [Coloring.sumRight_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sumright-sum--b55d24668510a46848e2e79e.md) | 95 | `result-track:b55d24668510a46848e2e79eacf337e1322f6c67629aaa0ee7cc18e56ae054ed` |
| 11 | `theorem` | [Coloring.sum_sumLeft_sumRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sum-sumleft-sumright--a1f02101dfd95d96e1a3a815.md) | 99 | `result-track:a1f02101dfd95d96e1a3a8152c7fd27d2348f0bb62335510959122c244bd3932` |
| 12 | `def` | [Coloring.sumEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sumequiv--7e3cdb6f4ba0706c989bac61.md) | 103 | `declaration-track:7e3cdb6f4ba0706c989bac61d1eb3712d14500a41627c9e6f53fe793dd78dc17` |
| 13 | `def` | [Coloring.sumFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/coloring-sumfin--7544226714732a933ef9f3ac.md) | 111 | `declaration-track:7544226714732a933ef9f3aca4fc647fe83594963eb8280802780da2d381d528` |
| 14 | `theorem` | [Colorable.sum_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/colorable-sum-max--953d04d2a81d0a9b7a55184c.md) | 116 | `result-track:953d04d2a81d0a9b7a55184cbf4f5f0c1cd3ef1940ebfc44e4b83dda6c71615f` |
| 15 | `theorem` | [Colorable.of_sum_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/colorable-of-sum-left--4e79eac88e19609d8b002f80.md) | 119 | `result-track:4e79eac88e19609d8b002f8064752c6be02fedbf5c810bdc2440b74a0f9d26d6` |
| 16 | `theorem` | [Colorable.of_sum_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/colorable-of-sum-right--96cd8164c3ca9ea1f9826be2.md) | 122 | `result-track:96cd8164c3ca9ea1f9826be2c8d220708327776354a47dffe73bd907344eda54` |
| 17 | `theorem` | [colorable_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/colorable-sum--60dc3e2bb8c45bf3a08b6cbe.md) | 126 | `result-track:60dc3e2bb8c45bf3a08b6cbe7273179825d155c3062acbbf5f20e97d58d64f08` |
| 18 | `theorem` | [chromaticNumber_le_sum_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/chromaticnumber-le-sum-left--6ae0f07b007276dc97a24fb0.md) | 130 | `result-track:6ae0f07b007276dc97a24fb09712801aa1d8cb7bf144fe1708698302de4e1835` |
| 19 | `theorem` | [chromaticNumber_le_sum_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/chromaticnumber-le-sum-right--4bbaeb6a70661a43d2d32a6f.md) | 133 | `result-track:4bbaeb6a70661a43d2d32a6ff389747290784dfa3cd1c56421a1bab0d3e41be3` |
| 20 | `theorem` | [chromaticNumber_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantcc8e38933058d99da1141206ed450e52458281a8fae5bcfd2ab3b01b9104301b.lean/declarations/chromaticnumber-sum--21f1a23f75b61e4022317437.md) | 137 | `result-track:21f1a23f75b61e4022317437f54da6fc4f1788bd95583a43a916e9decfb42250` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
