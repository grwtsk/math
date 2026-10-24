# Verification target: GRWTSK.Algebra.LinearAlgebra.IsSMulRegular.Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "491be4a3d2f560a627bcb43c167291d60fc49ef8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `491be4a3d2f560a627bcb43c167291d60fc49ef8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean.json)

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
| 1 | `lemma` | [LinearEquiv.isSMulRegular_congr'](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/linearequiv-issmulregular-congr--085aa7f91a39c76408c02152.md) | 45 | `result-track:085aa7f91a39c76408c02152dbd39e191005ea9f65d0965e52ffadd9f81c2e50` |
| 2 | `lemma` | [LinearEquiv.isSMulRegular_congr](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/linearequiv-issmulregular-congr--c0f7debe49102f270f235276.md) | 49 | `result-track:c0f7debe49102f270f2352762afdd8ee5cf9f5f5275b23ac68a10eaaa93486af` |
| 3 | `lemma` | [IsSMulRegular.submodule](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-submodule--e59d95adc37370bd0c7ce246.md) | 57 | `result-track:e59d95adc37370bd0c7ce2468de49c368564b1269a8c34a8073e658bcac63e7c` |
| 4 | `lemma` | [IsSMulRegular.lTensor](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-ltensor--25e26007ac72764c61242d50.md) | 70 | `result-track:25e26007ac72764c61242d5005015e09cda52e6bfbe2375105e47c2242dcc267` |
| 5 | `lemma` | [IsSMulRegular.rTensor](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-rtensor--bbd9ec4d2696111892391188.md) | 74 | `result-track:bbd9ec4d26961118923911886d3c29aa066266ca6adc0b3ee1baf8274b2f1321` |
| 6 | `lemma` | [isSMulRegular_submodule_iff_right_eq_zero_of_smul](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-submodule-iff-right-eq-zero-of-smul--e76c94317f99488e2fe50fb3.md) | 86 | `result-track:e76c94317f99488e2fe50fb36eeea28485f6d14030f362ad65fd161a1b368105` |
| 7 | `lemma` | [isSMulRegular_quotient_iff_mem_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-quotient-iff-mem-of-smul-mem--ceb1f3c1272411536f783485.md) | 92 | `result-track:ceb1f3c1272411536f7834852a1589a1b3a217e7b92062aae1183755016bcbd1` |
| 8 | `lemma` | [mem_of_isSMulRegular_quotient_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/mem-of-issmulregular-quotient-of-smul-mem--f046eca67e33eda2580de17c.md) | 100 | `result-track:f046eca67e33eda2580de17c9451d38aa6d6caf11fe76dd8863d02e8f465bb27` |
| 9 | `lemma` | [isSMulRegular_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-of-range-eq-ker--0afb0184a84a16da8ee4faf7.md) | 106 | `result-track:0afb0184a84a16da8ee4faf7b99cefc326b73d8b2ccff86fefa7b2df6dea0951` |
| 10 | `lemma` | [isSMulRegular_of_isSMulRegular_on_submodule_on_quotient](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-of-issmulregular-on-submodule-on-quotient--a010124b28781f2c2c1b2f94.md) | 117 | `result-track:a010124b28781f2c2c1b2f948e37cf1526eb5a68f0b7e28758173e2204d6ec0b` |
| 11 | `lemma` | [biUnion_associatedPrimes_eq_compl_regular](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/biunion-associatedprimes-eq-compl-regular--bf203e61db4f0a82fb955c82.md) | 133 | `result-track:bf203e61db4f0a82fb955c8214b46014bafc42c7e6ecadffc767b09307715f2c` |
| 12 | `lemma` | [isSMulRegular_iff_ker_lsmul_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-iff-ker-lsmul-eq-bot--1bc1fb63ace9a572078761ee.md) | 139 | `result-track:1bc1fb63ace9a572078761ee607d47beeca3ef1a7d62dbe9bd74f10f99dbc397` |
| 13 | `lemma` | [isSMulRegular_on_submodule_iff_disjoint_ker_lsmul_submodule](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-on-submodule-iff-disjoint-ker-lsmul-submodule--ae09b12b6bf1c9fe6db46b06.md) | 145 | `result-track:ae09b12b6bf1c9fe6db46b069b33f8fc2fdfa49c45eb8132f18b2f5ce137857e` |
| 14 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_le](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-le--def57e6ae613b5b0d0522278.md) | 150 | `result-track:def57e6ae613b5b0d05222783a1fa4fc639b6222f1a49d7a7b32ec40f648cdb5` |
| 15 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-eq--bed92d788f46853e50b8ab8d.md) | 154 | `result-track:bed92d788f46853e50b8ab8d07cf1fd16df251c7827d45f058872f062ab670f1` |
| 16 | `lemma` | [IsSMulRegular.isSMulRegular_on_quot_iff_smul_top_inf_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-issmulregular-on-quot-iff-smul-top-inf-eq-smul--05158a9521a85c3e5c5ff862.md) | 161 | `result-track:05158a9521a85c3e5c5ff862415cea33a4dde92551fb0d3053f25223c3a60ec2` |
| 17 | `lemma` | [isSMulRegular_of_ker_lsmul_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/issmulregular-of-ker-lsmul-eq-bot--834361421a3ac9023c11a4be.md) | 168 | `result-track:834361421a3ac9023c11a4be09e298e6e92abf7be7300e7885a47faaf6417626` |
| 18 | `lemma` | [smul_top_inf_eq_smul_of_isSMulRegular_on_quot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/smul-top-inf-eq-smul-of-issmulregular-on-quot--df09b81dfd447ed93b280f70.md) | 174 | `result-track:df09b81dfd447ed93b280f70a5fab0663d07357a7519d4e96691ce3cc32eaf1d` |
| 19 | `lemma` | [QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129.lean/declarations/quotsmultop-map-first-exact-on-four-term-exact-of-issmulregular-last--0d951314ae029b7ae25d680e.md) | 182 | `result-track:0d951314ae029b7ae25d680e9ea1908c219663fa25db36ae92edf5dbe892b186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
