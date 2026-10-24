# Verification target: GRWTSK.Topology.GeneralTopology.Expansion.Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5642226a22f8e4aed7932e83090b4a56b70167d3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5642226a22f8e4aed7932e83090b4a56b70167d3`.

Source path: `GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Kernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandedSummand](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expandedsummand--6bd25b9727a5f27a2fb553f0.md) | 46 | `declaration-track:6bd25b9727a5f27a2fb553f0a4f93a8242f050941b3343750490f61deb9e0c12` |
| 2 | `theorem` | [shifted_value_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/shifted-value-ne-zero--6c3ed77516ffca97c16f636b.md) | 57 | `result-track:6c3ed77516ffca97c16f636b80a0a0c89029cedadd14e382945bb12b155d9e48` |
| 3 | `theorem` | [actual_scaled_square](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/actual-scaled-square--154891c67cd58b36a6f5ead7.md) | 63 | `result-track:154891c67cd58b36a6f5ead79bbf601d32dde4ef004c236d58fab40e2051102f` |
| 4 | `theorem` | [numerator_square_expansion](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/numerator-square-expansion--25ec677dc5bce045ae2876b8.md) | 88 | `result-track:25ec677dc5bce045ae2876b8b554849ce00b2025fad22f15769e0b0f689517f9` |
| 5 | `theorem` | [expanded_summand_eq](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expanded-summand-eq--5ed57915f57477f72df8850d.md) | 114 | `result-track:5ed57915f57477f72df8850dff52fc63f31e3633ee8d3e87b3bfd2e1536cbaa1` |
| 6 | `theorem` | [equation17](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/equation17--a5c9d567544ae52bb36e7ca7.md) | 127 | `result-track:a5c9d567544ae52bb36e7ca74673d676065d402b4baceaea4e713bf431cc65d1` |
| 7 | `theorem` | [transformPolynomial_norm_le_one_add](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/transformpolynomial-norm-le-one-add--37c3b78b8b6a3689aed58632.md) | 148 | `result-track:37c3b78b8b6a3689aed5863256976b240c3cf01a3d3956d378fd7ec19dfc65e4` |
| 8 | `theorem` | [transformPolynomial_norm_le_scale](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/transformpolynomial-norm-le-scale--ac95f63bffd46fd65da340b9.md) | 188 | `result-track:ac95f63bffd46fd65da340b9f86dff457296010c4914daf6ca8c43ef2286d1bb` |
| 9 | `theorem` | [modeCoefficient_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/modecoefficient-norm-le--c038a03674ae2f19b92bea87.md) | 213 | `result-track:c038a03674ae2f19b92bea8701eee7de8e14db3aef8ac443c2b21a36b20eb598` |
| 10 | `def` | [modeWeight](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/modeweight--562d6b63d0a3508f75b60fa7.md) | 239 | `declaration-track:562d6b63d0a3508f75b60fa762d0ae0899cb42bb150d52d623dd533bbf35e13c` |
| 11 | `theorem` | [modeWeight_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/modeweight-nonneg--46323fb54ba86f498aba6d46.md) | 243 | `result-track:46323fb54ba86f498aba6d4696c4cd88b739efb2b725b0b04b7ad6cc0e2caa00` |
| 12 | `def` | [modeTailConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/modetailconstant--877ea49d80ab4bf814db860b.md) | 249 | `declaration-track:877ea49d80ab4bf814db860bec30b96fc83dbe63d102d6af7e7360903a44d365` |
| 13 | `theorem` | [modeWeight_tail_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/modeweight-tail-le--fd6497efcdc92cdd97342a20.md) | 252 | `result-track:fd6497efcdc92cdd97342a2051237fd5208237c1800fc384e688ce44aaf7b743` |
| 14 | `theorem` | [eventually_one_le_shifted_norm](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/eventually-one-le-shifted-norm--a72fd76bfc41c1b036d54512.md) | 302 | `result-track:a72fd76bfc41c1b036d54512c45c866b76bf71793ae6fb25a9d73cd027f839ce` |
| 15 | `theorem` | [modeWeight_summable](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/modeweight-summable--783c50fbec294f01a53075ca.md) | 318 | `result-track:783c50fbec294f01a53075ca1a91e926e8a7f1d60ad0c61d44b7083defb039a7` |
| 16 | `def` | [growthFactor](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/growthfactor--95ca1e2e7e0def3d0886c869.md) | 327 | `declaration-track:95ca1e2e7e0def3d0886c86983f56b1e06a7b34ddd9df8da491a8ff3b6f0a291` |
| 17 | `theorem` | [growthFactor_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/growthfactor-nonneg--fdf18a7ad6895285173207b9.md) | 330 | `result-track:fdf18a7ad6895285173207b92849d25c8744c7883fa1734d5cdb548861dc3514` |
| 18 | `theorem` | [expandedSummand_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expandedsummand-norm-le--8c0b6e47bbd9ebd5de8741bf.md) | 337 | `result-track:8c0b6e47bbd9ebd5de8741bf15305202526186af540d882c85869266f3366838` |
| 19 | `theorem` | [expandedSummand_norm_le_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expandedsummand-norm-le-on-icc--4b37cb1c22321354f1c4cc65.md) | 440 | `result-track:4b37cb1c22321354f1c4cc6586e7f3a77d60bb91e36a558694ba80e141e9c55e` |
| 20 | `theorem` | [expanded_hasSumUniformlyOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expanded-hassumuniformlyon-icc--34174f891649a5309d22b599.md) | 462 | `result-track:34174f891649a5309d22b599b473ee63ee6dde47b476ae036c672a5d73fdff2d` |
| 21 | `theorem` | [expandedSummand_continuous](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expandedsummand-continuous--c5f7b68cd92b9685110ae141.md) | 476 | `result-track:c5f7b68cd92b9685110ae141e3f45461fb7b1b695658754ce2d9688f74496ba8` |
| 22 | `theorem` | [expanded_sum_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expanded-sum-continuouson-icc--b4a6ae3cbd8d99d0cfdd2e74.md) | 486 | `result-track:b4a6ae3cbd8d99d0cfdd2e7495d59f0124ab8d4699c3b5d876371c2f12bb90c4` |
| 23 | `theorem` | [weightedSource_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/weightedsource-continuouson-icc--b1838d986d3091579f13d1ef.md) | 503 | `result-track:b1838d986d3091579f13d1ef349df6618d8817afed9203de39f2aea4337870db` |
| 24 | `theorem` | [weightedSource_im](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/weightedsource-im--cd1274968fab194b8ccc4d59.md) | 513 | `result-track:cd1274968fab194b8ccc4d590d7f02c495fcc792e579b1d49533ee2c2ebd111d` |
| 25 | `def` | [growthConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/growthconstant--960d63518e86d4cac16a4c16.md) | 519 | `declaration-track:960d63518e86d4cac16a4c167ce871589e6400c035ef9d35d1873d03d080f1a6` |
| 26 | `theorem` | [growthConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/growthconstant-nonneg--aee1c2f31916b5f0bb7dd88e.md) | 522 | `result-track:aee1c2f31916b5f0bb7dd88e9f6a9a47146e32e1b3eb1e123e1b8af3e278f02f` |
| 27 | `theorem` | [expanded_sum_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/expanded-sum-norm-le--7ce4944162645467fee33db1.md) | 529 | `result-track:7ce4944162645467fee33db1d09f2f1b6d62d2c78ea603417b7316daa1cd14e1` |
| 28 | `theorem` | [weightedSource_growth](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/weightedsource-growth--06f7362450115b23053e124e.md) | 568 | `result-track:06f7362450115b23053e124eab0da845c685cf9bee6bf16bdaef1c7b5cae9d7b` |
| 29 | `def` | [Equation17GrowthCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/equation17growthcheckpoint--041461c4421ef3cdeb81be27.md) | 576 | `declaration-track:041461c4421ef3cdeb81be2778b0e517f2373ce17118b8ed67cf4bc23717d464` |
| 30 | `theorem` | [equation17_growth_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/declarations/equation17-growth-checkpoint--9861f7516ee491d59730f492.md) | 601 | `result-track:9861f7516ee491d59730f49245d51ff7a03050264042e70c868b58eea2d7be32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
