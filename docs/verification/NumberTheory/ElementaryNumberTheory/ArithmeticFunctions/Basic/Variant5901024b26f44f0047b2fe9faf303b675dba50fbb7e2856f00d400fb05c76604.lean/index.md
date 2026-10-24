# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Basic.Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "318c9dc92fadb0531bd6a623ef3c4a4a5e82d439",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `318c9dc92fadb0531bd6a623ef3c4a4a5e82d439`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.SelbergSieve` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.AuxResults` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/selbergterms--4ff5ea4aed8a3304043997b6.md) | 30 | `declaration-track:4ff5ea4aed8a3304043997b6bde7ddd72988399630569820d4158b57119d528c` |
| 2 | `theorem` | [selbergTerms_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/selbergterms-apply--6a061f427c49c55f8e99a919.md) | 35 | `result-track:6a061f427c49c55f8e99a91920c793853d21549c649fb54ef744d358fdb4d588` |
| 3 | `structure` | [UpperBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/upperboundsieve--2c1b53e3d7d8f1370ed16c39.md) | 44 | `declaration-track:2c1b53e3d7d8f1370ed16c393e0cec37173fb3f8407c034b7279ceb78bdef84b` |
| 4 | `instance` | [ubToμPlus](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/ubto-plus--e88049751861001b6ee52b11.md) | 48 | `declaration-track:e88049751861001b6ee52b119a8cdfb04743aa61e5c704c4dbdf6b08f54ed53c` |
| 5 | `def` | [IsLowerMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/islowermoebius--f50c6b9b31f831b22f921d0f.md) | 50 | `declaration-track:f50c6b9b31f831b22f921d0ff03127a14ac31803f786099dd871074ece8f1fe2` |
| 6 | `structure` | [LowerBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/lowerboundsieve--133e9f67a728dad12c0278a0.md) | 53 | `declaration-track:133e9f67a728dad12c0278a057e7b7f5f6c37431fc12b7219546b1a36589da55` |
| 7 | `instance` | [lbToμMinus](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/lbto-minus--4a89605384fc627c7c8df833.md) | 57 | `declaration-track:4a89605384fc627c7c8df833adbe7b7887fc055679738d5ceeb611e185fff524` |
| 8 | `theorem` | [nu_ne_zero_of_mem_divisors_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/nu-ne-zero-of-mem-divisors-prodprimes--8f8f363501b0f5fa35a93b6c.md) | 63 | `result-track:8f8f363501b0f5fa35a93b6c602690d178e25a0ad9c2c1883a62805e6c002fef` |
| 9 | `def` | [delta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/delta--e5d6e1670f703d57fbfd01b7.md) | 68 | `declaration-track:e5d6e1670f703d57fbfd01b7d2bafef33df31bb6d93efb7018a0bb2029351ef0` |
| 10 | `theorem` | [siftedSum_as_delta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/siftedsum-as-delta--b00bf11447ddea554c3a891b.md) | 72 | `result-track:b00bf11447ddea554c3a891b0c8786e34fddeb9b8e1fdbaaa948f8c37a247dc6` |
| 11 | `theorem` | [nu_lt_self_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/nu-lt-self-of-dvd-prodprimes--f15ef253775f40fdd89be260.md) | 78 | `result-track:f15ef253775f40fdd89be260f407f99376c58121006883b7745d011a64ea63fe` |
| 12 | `theorem` | [selbergTerms_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/selbergterms-pos--d467847236dc35d8401bc3fd.md) | 83 | `result-track:d467847236dc35d8401bc3fdddabd8bbafb2d676c3acc6a454aa588dc503e708` |
| 13 | `theorem` | [selbergTerms_mult](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/selbergterms-mult--48a3fc8045f51756a0edff9a.md) | 94 | `result-track:48a3fc8045f51756a0edff9a5e16f2f0e65ba6dfd17677552dfd44504ba857b4` |
| 14 | `theorem` | [one_div_selbergTerms_eq_conv_moebius_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/one-div-selbergterms-eq-conv-moebius-nu--75e79e4ca0539d05d83b2a6c.md) | 98 | `result-track:75e79e4ca0539d05d83b2a6cba2acf77966dbeeca5377f3caa093a637baa3616` |
| 15 | `theorem` | [nu_eq_conv_one_div_selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/nu-eq-conv-one-div-selbergterms--8ba398d8ed64d5893975e2b3.md) | 115 | `result-track:8ba398d8ed64d5893975e2b3f0c4b9b64a98df3935cf46d64a68472a376fe7b9` |
| 16 | `theorem` | [conv_selbergTerms_eq_selbergTerms_mul_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/conv-selbergterms-eq-selbergterms-mul-nu--8ab7b5eea77d9b6b9b95c0e7.md) | 129 | `result-track:8ab7b5eea77d9b6b9b95c0e70103dd00e0d2a1df839c48ad075a977ea8f57133` |
| 17 | `theorem` | [upper_bound_of_UpperBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/upper-bound-of-upperboundsieve--11a96dd6423fb1f860109c5b.md) | 146 | `result-track:11a96dd6423fb1f860109c5b9f6b44224d8b7d93263a49ca2925ea06185b510b` |
| 18 | `theorem` | [siftedSum_le_mainSum_errSum_of_UpperBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/siftedsum-le-mainsum-errsum-of-upperboundsieve--d660b89d048bf6bd54582fcf.md) | 150 | `result-track:d660b89d048bf6bd54582fcf767280ec889ecdbc8a1a1dd86a0fff499061c80d` |
| 19 | `def` | [lambdaSquared](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/lambdasquared--9de86d1cbe9fdce9f3e0dd3c.md) | 159 | `declaration-track:9de86d1cbe9fdce9f3e0dd3c282dedb9c5e01ea25d58cc84999245e13b30b762` |
| 20 | `theorem` | [lambdaSquared_eq_zero_of_support_wlog](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/lambdasquared-eq-zero-of-support-wlog--f91ea986699efad615c48b2b.md) | 163 | `result-track:f91ea986699efad615c48b2b8d840f4d542fe416741723491cca5523357382ff` |
| 21 | `theorem` | [lambdaSquared_eq_zero_of_support](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/lambdasquared-eq-zero-of-support--2678e926447439f0b191d39c.md) | 176 | `result-track:2678e926447439f0b191d39cf6115c0154b05a35de1454923ef6b36d93fcd8b6` |
| 22 | `theorem` | [upperMoebius_of_lambda_sq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/uppermoebius-of-lambda-sq--032cd075c313ae629ab1bee5.md) | 202 | `result-track:032cd075c313ae629ab1bee534e3aacd4041d451d9c84a4fbde0b422a1f98a89` |
| 23 | `theorem` | [lambdaSquared_mainSum_eq_quad_form](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/lambdasquared-mainsum-eq-quad-form--8ccad2fe5ef6fc39e17bc15f.md) | 233 | `result-track:8ccad2fe5ef6fc39e17bc15fc29d5f1abbba06d5cd407b5be81f735706293a0a` |
| 24 | `theorem` | [lambdaSquared_mainSum_eq_diag_quad_form](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/declarations/lambdasquared-mainsum-eq-diag-quad-form--696370f822f799ac181d3687.md) | 260 | `result-track:696370f822f799ac181d3687018b396f8b74cf87b684d1f39e522bcae31a44de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
