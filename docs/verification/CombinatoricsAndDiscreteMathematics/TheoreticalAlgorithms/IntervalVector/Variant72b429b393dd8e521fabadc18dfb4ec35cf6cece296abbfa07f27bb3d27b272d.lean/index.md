# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalVector.Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b46dd340c64d5daaa81f7256a942bf8b013b3ff2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b46dd340c64d5daaa81f7256a942bf8b013b3ff2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntervalVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/intervalvector--8552a5c49ee563471b9cf20d.md) | 39 | `declaration-track:8552a5c49ee563471b9cf20da27a8f37ddf38c546d9d2dbe5a7525a11165b981` |
| 2 | `def` | [scalarMulInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/scalarmulinterval--a15e7f7411d63bf78b00d0b6.md) | 47 | `declaration-track:a15e7f7411d63bf78b00d0b6dc25514c30411b15446f0d17976823c7f6d700f1` |
| 3 | `theorem` | [mem_scalarMulInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-scalarmulinterval--b13955ba287a18b6cfacfcee.md) | 52 | `result-track:b13955ba287a18b6cfacfcee5bb9530fb4605cf135d189a0a254c1b56545140b` |
| 4 | `def` | [dotProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/dotproduct--d54f0249fb2de7ced437d1cc.md) | 64 | `declaration-track:d54f0249fb2de7ced437d1cc522e4e2cb016fe3dd05e1b1fb56294692182139c` |
| 5 | `def` | [realDotProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/realdotproduct--29f0c542c0d30f82d8e5a05c.md) | 72 | `declaration-track:29f0c542c0d30f82d8e5a05c77dcab02c72534d676cfc939ea1057973d8f3170` |
| 6 | `theorem` | [mem_zero_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-zero-singleton--421bb0fe37f025eb8f3a996a.md) | 79 | `result-track:421bb0fe37f025eb8f3a996a44cdda663bdb0a39aaf19d93bcb386326c9325d9` |
| 7 | `theorem` | [mem_dotProduct_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-dotproduct-aux--00210f8166fc0e19fd54f357.md) | 85 | `result-track:00210f8166fc0e19fd54f3576e2f13ca0fb29319ddda4caf7c212290ff95a85e` |
| 8 | `theorem` | [mem_dotProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-dotproduct--c777c93f173908d5eb180580.md) | 120 | `result-track:c777c93f173908d5eb1805808473903f19e63aaaa3224786be2d27f4de94b55c` |
| 9 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/add--5030e800e349493bc60d075b.md) | 131 | `declaration-track:5030e800e349493bc60d075bfb780d65aebc0fad7c76a1fbe7bc1998901a1308` |
| 10 | `theorem` | [mem_add_component](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-add-component--af925c89e40fa09aeff98196.md) | 135 | `result-track:af925c89e40fa09aeff9819660243b15c26ad8b09d76fc75cd1f689dc35c89fa` |
| 11 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/zero--80656abee11519b5269bc7e5.md) | 140 | `declaration-track:80656abee11519b5269bc7e555fcf451311dd0e549f2d39be3fa2e54f29c5701` |
| 12 | `theorem` | [mem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-zero--fe41fefece83c6a39b4bfe3d.md) | 143 | `result-track:fe41fefece83c6a39b4bfe3dc6bb32647abd1360a84997502819775393d7bf0d` |
| 13 | `def` | [matVecMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/matvecmul--4038963ede01e7f86687bb6f.md) | 149 | `declaration-track:4038963ede01e7f86687bb6fb996009e9b394a1cb8139c30f1d80f41b38a497e` |
| 14 | `def` | [realMatVecMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/realmatvecmul--2653c7dde0d18348b3ccf6cd.md) | 153 | `declaration-track:2653c7dde0d18348b3ccf6cd4e09481b8815caaa4427eb395392cb42a60fe961` |
| 15 | `theorem` | [mem_matVecMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-matvecmul--175623b3ce8abca3947bd68c.md) | 157 | `result-track:175623b3ce8abca3947bd68cd611bd7b5a717f4bdccdb7e1d83a7ae2d02c28ae` |
| 16 | `def` | [addBias](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/addbias--4771faf26268db3a882184cd.md) | 170 | `declaration-track:4771faf26268db3a882184cdf8744cf9c960147e66c18fdad6c865c58b8bd091` |
| 17 | `def` | [realAddBias](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/realaddbias--f91ce439006306e9cbdcfbaf.md) | 176 | `declaration-track:f91ce439006306e9cbdcfbafa87a2fc249b48e84a69c5faff73930974c130cc1` |
| 18 | `theorem` | [mem_addBias](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/declarations/mem-addbias--5554697533531066f46a28f5.md) | 180 | `result-track:5554697533531066f46a28f5cce924be8d1a61ceed706ad24c8f61d6bdc86798` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
