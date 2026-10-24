# Verification target: GRWTSK.Algebra.LinearAlgebra.Supported.Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ea63858f8c97a1316b409a93cde40d5b9da8959",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ea63858f8c97a1316b409a93cde40d5b9da8959`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean.json)

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
| 1 | `def` | [supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported--5748b9c6087bf760f9018043.md) | 42 | `declaration-track:5748b9c6087bf760f90180436e2dcd368d0e52a14ce3ca7a8fd82855d6c7f264` |
| 2 | `theorem` | [mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/mem-supported--502463726ac1ce1295977c32.md) | 56 | `result-track:502463726ac1ce1295977c32bedc8d62afcdd2b26f19e144d009774a0c242bb5` |
| 3 | `theorem` | [mem_supported'](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/mem-supported--21f56123f4a5a22b2750bf0e.md) | 59 | `result-track:21f56123f4a5a22b2750bf0e4ce19638671451653169e9db2ec6f8b301266512` |
| 4 | `theorem` | [mem_supported_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/mem-supported-support--94bf0395b5112da14013903b.md) | 63 | `result-track:94bf0395b5112da14013903b8549fcbe5f89b9988702007b50ea190ef43b2b7c` |
| 5 | `theorem` | [single_mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/single-mem-supported--fc088f0e043c1616adcd4bab.md) | 66 | `result-track:fc088f0e043c1616adcd4babf1e8aeb51eaa381cb8ec37abb0e40c1eb8c4727c` |
| 6 | `theorem` | [supported_eq_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-eq-span-single--35223f3e845dda4dd7306226.md) | 70 | `result-track:35223f3e845dda4dd7306226770083a91a30091dde1c13d58cc77e90ce1c4edb` |
| 7 | `lemma` | [single_mem_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/single-mem-span-single--d70682d2f86be695279cbd36.md) | 80 | `result-track:d70682d2f86be695279cbd3662dce359225d2512de56f04aba6177d78fad80e3` |
| 8 | `theorem` | [span_le_supported_biUnion_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/span-le-supported-biunion-support--a3b759568aebf3018aba4aa6.md) | 87 | `result-track:a3b759568aebf3018aba4aa63311421473d4e63e2659ddf0019ee7bf307e558e` |
| 9 | `def` | [restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/restrictdom--369f65e2c2400d3204bcdd00.md) | 94 | `declaration-track:369f65e2c2400d3204bcdd000030fcf60e03d297823c6bf8541292b578f03fda` |
| 10 | `theorem` | [restrictDom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/restrictdom-apply--dc4a878e2ac7720ea2320a98.md) | 106 | `result-track:dc4a878e2ac7720ea2320a9846760bc1a6942a9cd642f26200cee0a229970075` |
| 11 | `theorem` | [restrictDom_comp_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/restrictdom-comp-subtype--b55df3e76b3f5f79d87a2a9a.md) | 111 | `result-track:b55df3e76b3f5f79d87a2a9a8e05902ecce06b50707bfbca63e6ab8d79814d24` |
| 12 | `theorem` | [range_restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/range-restrictdom--8d382174c5f975339b7be8d2.md) | 118 | `result-track:8d382174c5f975339b7be8d263afba88fcb5f30dc76e7b32d66201ad6e0b37dd` |
| 13 | `theorem` | [supported_mono](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-mono--e166b3b689aad9e92fad916b.md) | 123 | `result-track:e166b3b689aad9e92fad916b9b8a4e2776a3ee218498aa1634336dce33d13d0d` |
| 14 | `theorem` | [supported_empty](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-empty--9c214b6bbf04599167f453e7.md) | 127 | `result-track:9c214b6bbf04599167f453e7fd0b129d488b967f162943765dc4a3cc10985257` |
| 15 | `theorem` | [supported_univ](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-univ--2cbfbd2975b213cbc57d6188.md) | 131 | `result-track:2cbfbd2975b213cbc57d618820e5679a737bea2a866102149ad27204016296a8` |
| 16 | `theorem` | [supported_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-iunion--3ec560c45fac6b68dc87c257.md) | 134 | `result-track:3ec560c45fac6b68dc87c257dc20c629fc299d99875129c692e7c363e0cf895c` |
| 17 | `theorem` | [supported_union](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-union--efba37ba7c42c628e288652b.md) | 155 | `result-track:efba37ba7c42c628e288652b9ff4ab933ebb3c8ecd991446004d07a8fdd805b2` |
| 18 | `theorem` | [supported_iInter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-iinter--c94cf0a8d3c77975543200ab.md) | 159 | `result-track:c94cf0a8d3c77975543200ab5e121952fe83fbac51a5bdce20c19be7cb2c62a6` |
| 19 | `theorem` | [supported_inter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-inter--d3338b97d03c1ef3d21dca6b.md) | 163 | `result-track:d3338b97d03c1ef3d21dca6baad37c899835d4c96636a6b3508b0adc0ba6f993` |
| 20 | `theorem` | [disjoint_supported_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/disjoint-supported-supported--b591a79523dc5048b56ddbf9.md) | 167 | `result-track:b591a79523dc5048b56ddbf9a1cd89f0055106855865c2c21f679fc0e99d2b05` |
| 21 | `theorem` | [disjoint_supported_supported_iff](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/disjoint-supported-supported-iff--873c26c6d68d6dc647a2e798.md) | 171 | `result-track:873c26c6d68d6dc647a2e798e4bc0ceb2604814ae1a3885feced801673a4004a` |
| 22 | `lemma` | [codisjoint_supported_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/codisjoint-supported-supported--11b9340e32fa679344e238f4.md) | 179 | `result-track:11b9340e32fa679344e238f4412ff2d927614812cc057d6a8f11374e914a6272` |
| 23 | `lemma` | [codisjoint_supported_supported_iff](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/codisjoint-supported-supported-iff--9de079f65cf9f996a91b4024.md) | 184 | `result-track:9de079f65cf9f996a91b40247b4939f0def8a3717fa4880d6e45ad60f5d3664d` |
| 24 | `def` | [supportedEquivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supportedequivfinsupp--c29ecf20defd0db9cf2b8b35.md) | 196 | `declaration-track:c29ecf20defd0db9cf2b8b35ada72af25e557cda7c130ad9cfedad8db00d1bbe` |
| 25 | `theorem` | [supportedEquivFinsupp_symm_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supportedequivfinsupp-symm-apply-coe--33f06add61651fbb7ea84c1d.md) | 206 | `result-track:33f06add61651fbb7ea84c1db23755a2ecf9e3e585ba12a72864798f15d059df` |
| 26 | `theorem` | [supportedEquivFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supportedequivfinsupp-symm-single--e7abb5d1e4493b94129c3145.md) | 210 | `result-track:e7abb5d1e4493b94129c3145c643ef7aebeb4dce5562b32dd2d617208960a6bb` |
| 27 | `theorem` | [supported_comap_lmapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/supported-comap-lmapdomain--88c32d05dbf5b73eb698fcd8.md) | 218 | `result-track:88c32d05dbf5b73eb698fcd887c88db4a5cfff8ae00650b58835d08dc0b9f831` |
| 28 | `theorem` | [lmapDomain_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/lmapdomain-supported--98239de14b4fb59e471f1d14.md) | 226 | `result-track:98239de14b4fb59e471f1d145f8324258ccac97162594a2233319901b6c6d38f` |
| 29 | `theorem` | [lmapDomain_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/lmapdomain-disjoint-ker--28bd2f2064e34ab05aad8c49.md) | 245 | `result-track:28bd2f2064e34ab05aad8c497cc14733a6af69de466baa395751efbf553f2735` |
| 30 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/declarations/congr--70bfac00aa989ac8bff8eab1.md) | 269 | `declaration-track:70bfac00aa989ac8bff8eab1420b6315cdde19f6f661b8747410fe4cb0fd29b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
