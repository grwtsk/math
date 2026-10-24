# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33547e3d7ef774337674a158ce7f7e67b75180af",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33547e3d7ef774337674a158ce7f7e67b75180af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.LocallyFinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dfinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/dfinsupp--9971926fa1919968a2016465.md) | 40 | `declaration-track:9971926fa1919968a20164651f2f756b74f9afe1db1edc2c1a96e2e87586bf26` |
| 2 | `theorem` | [card_dfinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-dfinsupp--73495bef84d6e3b885913408.md) | 49 | `result-track:73495bef84d6e3b885913408c68335e9e9f6483aa6b0811846c3125407c06d1b` |
| 3 | `theorem` | [mem_dfinsupp_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/mem-dfinsupp-iff--2adcfc973de44e04a1061170.md) | 56 | `result-track:2adcfc973de44e04a106117030c78a033bb854a0fd80f92281f55cb79412e536` |
| 4 | `theorem` | [mem_dfinsupp_iff_of_support_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/mem-dfinsupp-iff-of-support-subset--aeeeae3c75da8e9dd09a8856.md) | 72 | `result-track:aeeeae3c75da8e9dd09a88569d1d74deba6cc3355eff712c0a143bf37cfc935b` |
| 5 | `def` | [singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/singleton--50987b1c621f153c84938ad2.md) | 95 | `declaration-track:50987b1c621f153c84938ad22249cd34c10c8e04b505d2aab9b2be56e19d2dbe` |
| 6 | `theorem` | [mem_singleton_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/mem-singleton-apply-iff--61dc5eb8bab0b74eaf15768d.md) | 100 | `result-track:61dc5eb8bab0b74eaf15768dcd895000a12b3d899fcb7db20859f4e10f52a375` |
| 7 | `def` | [rangeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/rangeicc--9790cfec12e8babe204d68ad.md) | 112 | `declaration-track:9790cfec12e8babe204d68ad119721bbd7046a6073e375d16178f75d5bde6b28` |
| 8 | `theorem` | [rangeIcc_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/rangeicc-apply--9cedd63f25ca02d7a2fe049a.md) | 127 | `result-track:9cedd63f25ca02d7a2fe049af25e6601d403af218b80e0dc157ed19afb121618` |
| 9 | `theorem` | [mem_rangeIcc_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/mem-rangeicc-apply-iff--35fd9bd1a9c2707c9c4c4137.md) | 130 | `result-track:35fd9bd1a9c2707c9c4c4137acd42a81de7eb756ab0e910e5f9cc727d310c455` |
| 10 | `theorem` | [support_rangeIcc_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/support-rangeicc-subset--7894cd3509f6aed9a71784cc.md) | 133 | `result-track:7894cd3509f6aed9a71784cc86d40fee3b23e19b8e309721e3d4380dd20e3344` |
| 11 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/pi--528023ab1387eec48f95dca6.md) | 151 | `declaration-track:528023ab1387eec48f95dca632fc8977191be143e6768f4f8cde2affd6dfd43d` |
| 12 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/mem-pi--d45ebaca5a3e5fa75143ef36.md) | 155 | `result-track:d45ebaca5a3e5fa75143ef36b3d366c26d3793015cb437c312398824165d6214` |
| 13 | `theorem` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-pi--f98990600c20007cfafcecc2.md) | 160 | `result-track:f98990600c20007cfafcecc29269158ba93fbcdb863e6752bbc77082ba567b4c` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/instance--20cc3cb835e777c01cf15b6e.md) | 173 | `declaration-track:20cc3cb835e777c01cf15b6e1eb3155c4f9cc7a214406bf2aa7305201f490331` |
| 15 | `theorem` | [Icc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/icc-eq--4c6ca68e10688622ed8d3923.md) | 183 | `result-track:4c6ca68e10688622ed8d3923d942d16ac50cd71744010487f67f38edced20910` |
| 16 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-icc--762963bd195e69c7874ed7ca.md) | 186 | `result-track:762963bd195e69c7874ed7cacd981f48e7dd2db9abd1a2de450c1d73942a5955` |
| 17 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-ico--b650b7df45c7dc1795b4044b.md) | 190 | `result-track:b650b7df45c7dc1795b4044b9d85a84f9e3747dde4af33d0a7bea72add7d14b0` |
| 18 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-ioc--45f2614981d086ad82a1c991.md) | 194 | `result-track:45f2614981d086ad82a1c991056a5234d23f4cf0f953c79df02f6748171d703d` |
| 19 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-ioo--7bea342f6fe87c2cfb8f6a00.md) | 198 | `result-track:7bea342f6fe87c2cfb8f6a000634edc89040f3ea16edbd72e2dd8274bf79f28d` |
| 20 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-uicc--e8c3030ae5512cd121127ec1.md) | 208 | `result-track:e8c3030ae5512cd121127ec152735e41592b57d712175317283d27f05eb7a191` |
| 21 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-iic--3316e052e839c7fa9f4c1b0f.md) | 222 | `result-track:3316e052e839c7fa9f4c1b0fa09298c75858bb56c17555bd6197734985f173fb` |
| 22 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant81af93b6b55e23f76955db84f3b26a887e41a5814a7e7035a0a3a0a84a9281d3.lean/declarations/card-iio--f57b5a320190cb335dcb662a.md) | 227 | `result-track:f57b5a320190cb335dcb662a61c1b45b6fd6a9a4ab2b9935f35ef6abe6935773` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
