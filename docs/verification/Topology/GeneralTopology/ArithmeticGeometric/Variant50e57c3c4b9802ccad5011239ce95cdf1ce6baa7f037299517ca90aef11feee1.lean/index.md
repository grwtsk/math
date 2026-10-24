# Verification target: GRWTSK.Topology.GeneralTopology.ArithmeticGeometric.Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49f55a3343dca794a06ab6745084739134e42f09",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49f55a3343dca794a06ab6745084739134e42f09`.

Source path: `GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arithGeom](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom--173e765375a44e69cd6a858f.md) | 51 | `declaration-track:173e765375a44e69cd6a858faa5285db7186de7de9314b775aaf256cf9d3236e` |
| 2 | `lemma` | [arithGeom_zero](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-zero--84ad17c786dd5bd0264b5fc9.md) | 55 | `result-track:84ad17c786dd5bd0264b5fc91e8cc95e8793f1974771b1a94c242539c78a4381` |
| 3 | `lemma` | [arithGeom_succ](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-succ--dfa78fc6ee64ab3ed7ff4548.md) | 57 | `result-track:dfa78fc6ee64ab3ed7ff45480e9b72ec093e8e2786f0bcd2aff4dad6b305f287` |
| 4 | `lemma` | [arithGeom_eq_add_sum](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-eq-add-sum--f31ecfcdc24966817d73e52b.md) | 60 | `result-track:f31ecfcdc24966817d73e52bf019674df604054d842774a4ed60d345981a299a` |
| 5 | `lemma` | [arithGeom_same_eq_sum](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-same-eq-sum--e528028b63e17a4556fda48d.md) | 72 | `result-track:e528028b63e17a4556fda48df76f5fb90dd50ea6c2d7c8517a96b9902c8fb866` |
| 6 | `lemma` | [arithGeom_zero_eq_sum](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-zero-eq-sum--0b656af48a1ac1d75725d94a.md) | 76 | `result-track:0b656af48a1ac1d75725d94ac9b4d64786c31947981728314b6d7af5f2ecdd89` |
| 7 | `lemma` | [arithGeom_eq](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-eq--37c359d42115ca3c86e6dba1.md) | 82 | `result-track:37c359d42115ca3c86e6dba1f937cde0f3926d479461be2a44d7f7d5c8568a0b` |
| 8 | `lemma` | [arithGeom_eq'](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-eq--e0c552d23c58aaa429bd409b.md) | 88 | `result-track:e0c552d23c58aaa429bd409b09fbcfe89e613838fa605ee2298d1010f19c2568` |
| 9 | `lemma` | [arithGeom_same_eq_mul_div'](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-same-eq-mul-div--bb1bacb97f9edf47d9243215.md) | 93 | `result-track:bb1bacb97f9edf47d9243215d2687df20ba66c2c9a36efb545edbea025aa7744` |
| 10 | `lemma` | [arithGeom_same_eq_mul_div](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-same-eq-mul-div--b1f2ec52e83b49e8d48d1e8e.md) | 98 | `result-track:b1f2ec52e83b49e8d48d1e8efa60f68d176efa8e3ee71d54f3575dff0b75e1dd` |
| 11 | `lemma` | [arithGeom_zero_eq_mul_div'](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-zero-eq-mul-div--3d285ea4450844256522979a.md) | 103 | `result-track:3d285ea4450844256522979a7d1fb178f3f4e6aefff20cfc4339cbd686b75f3d` |
| 12 | `lemma` | [arithGeom_zero_eq_mul_div](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-zero-eq-mul-div--c29b063f1a494350299a0a13.md) | 108 | `result-track:c29b063f1a494350299a0a13c370eecb3fb3f3f62ccdd5873f01694d81ce3175` |
| 13 | `lemma` | [div_lt_arithGeom](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/div-lt-arithgeom--fdb639dd114e79898665017b.md) | 115 | `result-track:fdb639dd114e79898665017b0316026e7b05c384cec6b56a98ed9c298ec72db0` |
| 14 | `lemma` | [arithGeom_strictMono](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/arithgeom-strictmono--9d62188d212b084642d60bf3.md) | 124 | `result-track:9d62188d212b084642d60bf30abdbe63edb4e2e4500e9f5d34fcf8400106b0a0` |
| 15 | `lemma` | [tendsto_arithGeom_atTop_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/tendsto-arithgeom-attop-of-one-lt--442910681c2ff76f446c349d.md) | 132 | `result-track:442910681c2ff76f446c349d16370f664f8855c968dc279064d81e0cc066d62e` |
| 16 | `lemma` | [tendsto_arithGeom_nhds_of_lt_one](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/declarations/tendsto-arithgeom-nhds-of-lt-one--fe48ca76c835c98c28f4b55c.md) | 139 | `result-track:fe48ca76c835c98c28f4b55c66eda26bd2409eba561d400f082da5a42d8655aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
