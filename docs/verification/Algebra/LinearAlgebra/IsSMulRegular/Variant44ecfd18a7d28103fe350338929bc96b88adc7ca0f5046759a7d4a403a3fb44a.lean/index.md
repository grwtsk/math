# Verification target: GRWTSK.Algebra.LinearAlgebra.IsSMulRegular.Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4e58cc607f1f0537851c0ab53f029b3c73e4a58",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4e58cc607f1f0537851c0ab53f029b3c73e4a58`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean.json)

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
| 1 | `lemma` | [LinearEquiv.isSMulRegular_congr'](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/linearequiv-issmulregular-congr--64041ec1d09a3470217ef5b2.md) | 37 | `result-track:64041ec1d09a3470217ef5b2a07fd28c192f99e2bd6f5dc79121a8491af7ee10` |
| 2 | `lemma` | [LinearEquiv.isSMulRegular_congr](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/linearequiv-issmulregular-congr--a30f2493d73551ac25653e85.md) | 41 | `result-track:a30f2493d73551ac25653e856b72abc811667f8ea0026a6b4b1ea184481af694` |
| 3 | `lemma` | [IsSMulRegular.submodule](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-submodule--73f39f4603d2bbb358411be5.md) | 49 | `result-track:73f39f4603d2bbb358411be56893808b732dc381f60c31f04937548461a897a1` |
| 4 | `lemma` | [IsSMulRegular.lTensor](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-ltensor--0c0b35bfe88d0902a34ded4a.md) | 62 | `result-track:0c0b35bfe88d0902a34ded4ac813311a363d3f1242282df595a6f467d271421b` |
| 5 | `lemma` | [IsSMulRegular.rTensor](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-rtensor--7ed3daabbf4ea1f521ef674c.md) | 66 | `result-track:7ed3daabbf4ea1f521ef674c2a569862a6c9986b29f1fe139b084b8b94cb2aeb` |
| 6 | `lemma` | [isSMulRegular_submodule_iff_right_eq_zero_of_smul](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-submodule-iff-right-eq-zero-of-smul--526feff8a64ea78887b8dd4f.md) | 78 | `result-track:526feff8a64ea78887b8dd4f4311268a128eebd4460ff97b0b0ce8b9128af474` |
| 7 | `lemma` | [isSMulRegular_quotient_iff_mem_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-quotient-iff-mem-of-smul-mem--ac5d9e9eb58fbc297b43d3b6.md) | 84 | `result-track:ac5d9e9eb58fbc297b43d3b63b9283b5b22043b545a4ff34702659653d53c7bf` |
| 8 | `lemma` | [mem_of_isSMulRegular_quotient_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/mem-of-issmulregular-quotient-of-smul-mem--1bf640c88a200ea7ce48a834.md) | 92 | `result-track:1bf640c88a200ea7ce48a834ab012d127a54aee4ddfd0168947612fe465af863` |
| 9 | `lemma` | [isSMulRegular_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-of-range-eq-ker--dd86fd9994600b4afbb54bd8.md) | 98 | `result-track:dd86fd9994600b4afbb54bd8d716037c348102808a9748660c21341586848e4b` |
| 10 | `lemma` | [isSMulRegular_of_isSMulRegular_on_submodule_on_quotient](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-of-issmulregular-on-submodule-on-quotient--f508520e1b6e944d6e5c52d6.md) | 109 | `result-track:f508520e1b6e944d6e5c52d6cf72138b40463dd0c5b5146861f5e3b6ef587a5a` |
| 11 | `lemma` | [biUnion_associatedPrimes_eq_compl_regular](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/biunion-associatedprimes-eq-compl-regular--b06a30ee6f995f6c92b05f5c.md) | 125 | `result-track:b06a30ee6f995f6c92b05f5cec9aa627fb4a40fe7d79e3b8ff1cae70f049f972` |
| 12 | `lemma` | [isSMulRegular_iff_ker_lsmul_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-iff-ker-lsmul-eq-bot--958decf0a2e82fdbd8538495.md) | 131 | `result-track:958decf0a2e82fdbd8538495d2eff2a2a8ef3f0ccce2e79302398838502cfa2b` |
| 13 | `lemma` | [isSMulRegular_on_submodule_iff_disjoint_ker_lsmul_submodule](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-on-submodule-iff-disjoint-ker-lsmul-submodule--c5e6c60087a96e0ac48a7dcd.md) | 137 | `result-track:c5e6c60087a96e0ac48a7dcd9bea65bc9885b75e96e6fa1baac48b69c8595aed` |
| 14 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_le](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-le--7bb519dedabcc2ec396dcaaf.md) | 142 | `result-track:7bb519dedabcc2ec396dcaaf048f3e81c3c82b5f1bb2b81fe4226bb6988f6a2e` |
| 15 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-eq--2a28c4432930a6e93a0aff22.md) | 146 | `result-track:2a28c4432930a6e93a0aff22d566c43c0cf59f4ec86811e57bb9523440685fe2` |
| 16 | `lemma` | [IsSMulRegular.isSMulRegular_on_quot_iff_smul_top_inf_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-issmulregular-on-quot-iff-smul-top-inf-eq-smul--3913d6a4d9e66407f3955766.md) | 153 | `result-track:3913d6a4d9e66407f39557669fec82059f47f684d3ff8083aa66426e14af8bd8` |
| 17 | `lemma` | [isSMulRegular_of_ker_lsmul_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/issmulregular-of-ker-lsmul-eq-bot--47b83fce0f1b34d94dddb49b.md) | 160 | `result-track:47b83fce0f1b34d94dddb49bb3cd9e56f852162462821bc744ea63638429baa8` |
| 18 | `lemma` | [smul_top_inf_eq_smul_of_isSMulRegular_on_quot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/smul-top-inf-eq-smul-of-issmulregular-on-quot--d532049bae0acb5864e9817a.md) | 166 | `result-track:d532049bae0acb5864e9817a19d2fa13757898f3b98c2857a53c7fcde8d20b30` |
| 19 | `lemma` | [QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a.lean/declarations/quotsmultop-map-first-exact-on-four-term-exact-of-issmulregular-last--8941db5bf4b5f1a95029378b.md) | 174 | `result-track:8941db5bf4b5f1a95029378bc4a67d6e2804a53b3098dbc8c9b386227a9e6df8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
