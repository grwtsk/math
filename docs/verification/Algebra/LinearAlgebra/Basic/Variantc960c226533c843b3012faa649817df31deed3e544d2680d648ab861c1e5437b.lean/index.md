# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c31632f323f38a612b7802ddf8fbdb5145c8cc5",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c31632f323f38a612b7802ddf8fbdb5145c8cc5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean.json)

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
| 1 | `theorem` | [repr_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/repr-range--43064418efa90ff60bc701e6.md) | 55 | `result-track:43064418efa90ff60bc701e6df104d329ba38d5bc919f690fc763659d9b17a90` |
| 2 | `theorem` | [mem_span_repr_support](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mem-span-repr-support--5be16e317c3b51be6b1953b1.md) | 58 | `result-track:5be16e317c3b51be6b1953b1df11f8dedd213215b2bd5d0224ec78fa288a7b69` |
| 3 | `theorem` | [repr_support_subset_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/repr-support-subset-of-mem-span--e5edf2a5aa629aee40c4aa3f.md) | 62 | `result-track:e5edf2a5aa629aee40c4aa3f10cbb2ddf409523a9f8b18a388cedbcd9b21af0e` |
| 4 | `theorem` | [mem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mem-span-image--a8cff990eb9c98bacc7e2051.md) | 67 | `result-track:a8cff990eb9c98bacc7e2051ff10a1a25942ca8b6fe848e216a6fb786dfe3386` |
| 5 | `theorem` | [self_mem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/self-mem-span-image--3e505fe4b7e66fb906b014b5.md) | 72 | `result-track:3e505fe4b7e66fb906b014b5f1af1812791710253b4459a52e10a98df0c78a89` |
| 6 | `theorem` | [mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mem-span--cb88f380c5baf3afe37c5544.md) | 76 | `result-track:cb88f380c5baf3afe37c55441bf4907ec979d5bf6daddf354ab0b705de37f441` |
| 7 | `theorem` | [span_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/span-eq--35325973961e35a3b580bc29.md) | 80 | `result-track:35325973961e35a3b580bc297dff8257bbd024d997c5147303f97283396ed847` |
| 8 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ReprRange.Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.Submodule.eq_top_iff_forall_basis_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/root-grwtsk-algebra-linearalgebra-reprrange-variantec768078f1436a647d8ff--04c21b25f446e8a3596f1ca1.md) | 83 | `result-track:04c21b25f446e8a3596f1ca1de27daf697669d4f983ecc997431cd35b5a087aa` |
| 9 | `theorem` | [index_nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/index-nonempty--f9164f06aac3cb8ad64a9469.md) | 89 | `result-track:f9164f06aac3cb8ad64a9469f0dfc95409598c565af10eae573c2521dedce493` |
| 10 | `theorem` | [linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/linearindependent--51019042a61f268f4747bc86.md) | 94 | `result-track:51019042a61f268f4747bc8625adc816ca550fb75ce87bacabbb9ea9ae769a8f` |
| 11 | `lemma` | [linearIndepOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/linearindepon--b1a571c409d41aaa589c7628.md) | 98 | `result-track:b1a571c409d41aaa589c7628b397c68f41b23ba1a2ccbde8c6b9f2872e7e08f8` |
| 12 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/ne-zero--66ea6507b55744ab61233c25.md) | 101 | `result-track:66ea6507b55744ab61233c252971135d49a554308869f851aebe4f3bfc0517a4` |
| 13 | `theorem` | [injective_constr_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/injective-constr-of-linearindependent--ebe041bcfb4f7ccc8fa40b0f.md) | 104 | `result-track:ebe041bcfb4f7ccc8fa40b0f9d5508421645eb634869172afcdde05d8580a9a9` |
| 14 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mk--db24f4fdabb41dda0976f346.md) | 119 | `declaration-track:db24f4fdabb41dda0976f346e1271dc2ca1b9e6a9690d77b5988a892d70fdb49` |
| 15 | `theorem` | [mk_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mk-repr--3cf823ae7cf8fb08a5eb0c4b.md) | 127 | `result-track:3cf823ae7cf8fb08a5eb0c4b3e489c42a84a48bfbd524c9953a7b86ceb514244` |
| 16 | `theorem` | [mk_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mk-apply--86364890cde02ada81bb07f1.md) | 130 | `result-track:86364890cde02ada81bb07f10b90fdff4728dd2ff486a405c760d47d51d6b767` |
| 17 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/coe-mk--cf493131bc9f85df0247a0bf.md) | 134 | `result-track:cf493131bc9f85df0247a0bfa2b815dd809e909870a38c3359984c24592acf3a` |
| 18 | `theorem` | [linearIndependent_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/linearindependent-coord--db57af58a04ea1f31d3c65db.md) | 142 | `result-track:db57af58a04ea1f31d3c65db6763d4c1426336d817ed9b4140fa111b248e16f0` |
| 19 | `theorem` | [mk_coord_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mk-coord-apply-eq--98a6a097a17f17da11a67b97.md) | 154 | `result-track:98a6a097a17f17da11a67b97fbef8847ce093a0941a1811c3b8f64129383b691` |
| 20 | `theorem` | [mk_coord_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mk-coord-apply-ne--c1723d192d03f892b5d800e7.md) | 159 | `result-track:c1723d192d03f892b5d800e7d2494b80c1f4d781f5384a8fe3873b2a7289e7d3` |
| 21 | `theorem` | [mk_coord_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/mk-coord-apply--864edc4dd192082fc98ed343.md) | 165 | `result-track:864edc4dd192082fc98ed34348bd6cc29ede61b3db57679fd8fac7a48642f03b` |
| 22 | `def` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/span--f0e17b9e14930f089dbe2bdc.md) | 178 | `declaration-track:f0e17b9e14930f089dbe2bdc554910bd55a15df153561bbcc12fad24d57865ee` |
| 23 | `theorem` | [span_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/span-apply--1b59a2b2f5b822455c1ceeb8.md) | 199 | `result-track:1b59a2b2f5b822455c1ceeb8c4480f72b750deb230d4a97dac925be04301f750` |
| 24 | `theorem` | [coe_span_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/coe-span-apply--bda9d61348893f97e8067815.md) | 204 | `result-track:bda9d61348893f97e80678151449c58c4dea0a3a7164e2c67c49a3071da90e00` |
| 25 | `theorem` | [span_repr_eq_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/span-repr-eq-single--a7ffbc82272582a2feefc4a9.md) | 207 | `result-track:a7ffbc82272582a2feefc4a9364c1f728a9394e6f24596660989e21f104756c4` |
| 26 | `lemma` | [span_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/span-neg--c1e63b5d94c84806a2a1a57a.md) | 213 | `result-track:c1e63b5d94c84806a2a1a57ab90fcb68f19292448db9f9ea498cc217585aa985` |
| 27 | `theorem` | [maximal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/maximal--3ad7e3a285c8bd4d428f0453.md) | 224 | `result-track:3ad7e3a285c8bd4d428f0453ff139fe1006039fc398da1f1cc6642cdfae666c6` |
| 28 | `instance` | [uniqueBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/uniquebasis--6486250bab03cbd6ac197c94.md) | 248 | `declaration-track:6486250bab03cbd6ac197c9446096bbeb521c784e34be5e1db151db114e983de` |
| 29 | `def` | [singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/singleton--5a67304002ddce460895842d.md) | 256 | `declaration-track:5a67304002ddce460895842d49d3f34e53b6bcd03faf5f63daa9f234d606a97a` |
| 30 | `theorem` | [singleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/singleton-apply--5fb03e11405f7c3be92f5d67.md) | 266 | `result-track:5fb03e11405f7c3be92f5d678cc8ebe9ac0be39fdaf5ecad97a1a9364c4bc209` |
| 31 | `theorem` | [singleton_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/singleton-repr--ec2b2f154a197677d0a2f2e7.md) | 270 | `result-track:ec2b2f154a197677d0a2f2e7b7475a678fa122e42fba4a5af7bc2622ee8fb22b` |
| 32 | `theorem` | [coe_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/coe-singleton--aa1340bdf1ed760b4fe50a27.md) | 274 | `result-track:aa1340bdf1ed760b4fe50a272a61d90f783067b4f7bb1568ff7b06ed2dd746f2` |
| 33 | `def` | [empty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/empty--0d1053e02a2ee01d4580c782.md) | 285 | `declaration-track:0d1053e02a2ee01d4580c78268b1e0e102c8b4fb70885ccf1ff0f355c9700cb0` |
| 34 | `instance` | [emptyUnique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/emptyunique--9e48fabba993258849b1778e.md) | 288 | `declaration-track:9e48fabba993258849b1778ec020d78f21a869bf77b64d7150cccdc1d86db2c8` |
| 35 | `lemma` | [isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/istorsionfree--9db399efbadb37a799c3e2cd.md) | 297 | `result-track:9db399efbadb37a799c3e2cd3a09c5ded2d02d1ee3071c547dd43c99c29cb49a` |
| 36 | `theorem` | [smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/smul-eq-zero--908bc49fb4472dc388fc3e46.md) | 300 | `result-track:908bc49fb4472dc388fc3e4676e560b49f6a0dbb11d53f67e6598c1b3632ac3d` |
| 37 | `theorem` | [basis_singleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/basis-singleton-iff--15e93ab8aba201a579d6dd6b.md) | 307 | `result-track:15e93ab8aba201a579d6dd6b901febdeb82df3fe1e08eb63760ae0c4663f64a6` |
| 38 | `lemma` | [card_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/declarations/card-fintype--2f7f36479d7903f24958f1a2.md) | 335 | `result-track:2f7f36479d7903f24958f1a2b11ff68b28b83afc59716fa90bdbb153e23efaef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
