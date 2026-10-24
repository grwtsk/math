# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Basic.Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98391cd54219a20fa3b9d5949141d7ecef5de3d2",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98391cd54219a20fa3b9d5949141d7ecef5de3d2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Defs` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_Ioc_mul_apply](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/sum-ioc-mul-apply--f68bcca344711a402eb889cf.md) | 49 | `result-track:f68bcca344711a402eb889cf1fc1a2a52b7b6132abf2349c72ea55a4dd3bb240` |
| 2 | `theorem` | [sum_Ioc_mul_apply'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/sum-ioc-mul-apply--f2c3e8e335a47e8abdbc68d0.md) | 82 | `result-track:f2c3e8e335a47e8abdbc68d002b17fb1a24ebfb39ac43773aaf5a3328d843689` |
| 3 | `structure` | [SubmultWeight](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/submultweight--363cb68320e569025331abff.md) | 93 | `declaration-track:363cb68320e569025331abff899ebdb992f4ffa558579968b9e766898b49f462` |
| 4 | `lemma` | [SubmultWeight.rpow_neg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/submultweight-rpow-neg--a8db4fdda5cbfd191f046c0b.md) | 97 | `result-track:a8db4fdda5cbfd191f046c0b613f0f896d706e06a51604fdd6e0eb79c81d2525` |
| 5 | `theorem` | [sum_Ioc_mul_apply_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/sum-ioc-mul-apply-le--f21d1e99f882e18d861fb482.md) | 102 | `result-track:f21d1e99f882e18d861fb4827bc981430d0b4a4084c3059e26881eff8ec554af` |
| 6 | `lemma` | [mul_apply_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/mul-apply-nonneg--235d69ec386639c64d4c2d47.md) | 119 | `result-track:235d69ec386639c64d4c2d470c692902631e8e8a84936915bc0dadd9cb36526c` |
| 7 | `lemma` | [pow_apply_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/pow-apply-nonneg--6e2a0a44528a6b54333f4e6d.md) | 125 | `result-track:6e2a0a44528a6b54333f4e6db585291f83c6871ad81196530de2d48545b99514` |
| 8 | `theorem` | [sum_Ioc_pow_apply_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/sum-ioc-pow-apply-le--b6d52dd48c20e1d57a15fbee.md) | 134 | `result-track:b6d52dd48c20e1d57a15fbee5d8af20c2eb462bdba2a7e1e175f00755b5ed2f9` |
| 9 | `def` | [lamLog](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlog--a8b93b1f164c827dbfd3425f.md) | 154 | `declaration-track:a8b93b1f164c827dbfd3425f293711106efd7f0187b337ccccc2e9c8ebed7781` |
| 10 | `lemma` | [lamLog_apply](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlog-apply--1e160ebb21f769c51ab455de.md) | 157 | `result-track:1e160ebb21f769c51ab455de00017989e6cdd8c1e0acc44f52c80f4227f4e408` |
| 11 | `lemma` | [lamLogConv_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlogconv-eq--f726a87ccc0efa3ec3f0ef08.md) | 160 | `result-track:f726a87ccc0efa3ec3f0ef0834dd862ac6ff7c9540e2a1a18625c98b21d932c3` |
| 12 | `lemma` | [lamLog_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlog-nonneg--868079153d5c8d0cac5dc9d4.md) | 162 | `result-track:868079153d5c8d0cac5dc9d413354252800d7ba987c571c22bbc79c5eb7dd891` |
| 13 | `lemma` | [vonMangoldt_nonneg'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/vonmangoldt-nonneg--e37a44b607072833748230e4.md) | 166 | `result-track:e37a44b607072833748230e48d8ecc6d8450011c0d6693584c4ee11d86ae7b4b` |
| 14 | `lemma` | [lamPow_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lampow-nonneg--9584e04556580b85faa16878.md) | 168 | `result-track:9584e04556580b85faa16878581863869f912d60ce5d9166b596c3f34201f1f3` |
| 15 | `lemma` | [lamLogConv_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlogconv-nonneg--62e4e6ebe330eaba4c04e3f8.md) | 170 | `result-track:62e4e6ebe330eaba4c04e3f84b4b8eeed809576971c63f7d8c01218d596e5992` |
| 16 | `lemma` | [one_le_cardFactors_of_vonMangoldt_ne_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/one-le-cardfactors-of-vonmangoldt-ne-zero--e34bc0f96e46603ba81ee337.md) | 175 | `result-track:e34bc0f96e46603ba81ee33770812b5fdcf34dc5d5f6f99bf5b46d0cda6c5817` |
| 17 | `lemma` | [cardFactors_of_mem_divisorsAntidiagonal](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/cardfactors-of-mem-divisorsantidiagonal--cf0d5a532445612eca59e3f5.md) | 180 | `result-track:cf0d5a532445612eca59e3f5e02bcdc213643cad8160f857e9b11c6c73b65f74` |
| 18 | `lemma` | [lamPow_eq_zero_of_cardFactors_lt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lampow-eq-zero-of-cardfactors-lt--0a458cb2d8c6b054eeb01b6f.md) | 188 | `result-track:0a458cb2d8c6b054eeb01b6fd6b4bc406ce3d30d54686ef5b2c0c8706e5a149d` |
| 19 | `lemma` | [lamLogConv_eq_zero_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlogconv-eq-zero-of-le--6af34c584a4a96f4e3d4d3d5.md) | 200 | `result-track:6af34c584a4a96f4e3d4d3d529f750ebf59c89ca971ac4b6da40de3e5d0e2649` |
| 20 | `lemma` | [lamPow_le_log_pow](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lampow-le-log-pow--8ed25e12100b3973db1f04a0.md) | 210 | `result-track:8ed25e12100b3973db1f04a0906bc43017cf0fc61b890056d6e881b041057e8e` |
| 21 | `lemma` | [lamLogConv_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlogconv-le--277690e8f566605b4b70f679.md) | 234 | `result-track:277690e8f566605b4b70f6796ed3ab49af1b4a96c9e1f0f77298093e2e96bb52` |
| 22 | `lemma` | [lamLogPow_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlogpow-le--68336df327720caf5a1577be.md) | 249 | `result-track:68336df327720caf5a1577beef6c6656621a542f10cc1ca46e15232f57245171` |
| 23 | `lemma` | [lamLogPow_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/lamlogpow-nonneg--af0f0b3b6d3e518d6e2965b9.md) | 279 | `result-track:af0f0b3b6d3e518d6e2965b9390e6d156d2a0b4f1f7649550f1309e6a2fc94f8` |
| 24 | `lemma` | [xiCoeff_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeff-zero--b2719f84b43b3b37eb061ed2.md) | 283 | `result-track:b2719f84b43b3b37eb061ed2ce90f9a334ac93b1241b2fcaec88bea7faee9b9b` |
| 25 | `lemma` | [xiCoeff_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeff-one--2ed06132d1abe92b37c1690b.md) | 286 | `result-track:2ed06132d1abe92b37c1690b1baee003e119969eea5e367f693e75601263fd6c` |
| 26 | `lemma` | [xiCoeff_eq_sum_range_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeff-eq-sum-range-of-le--23235d76c57258c17c2767b4.md) | 290 | `result-track:23235d76c57258c17c2767b47ae6bcd00519d7fb92caf2614bd7dd591d3b8591` |
| 27 | `lemma` | [xiCoeff_conj](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeff-conj--bdae04066c0062181e01a55e.md) | 300 | `result-track:bdae04066c0062181e01a55e8e62dc44d9e4dd34d393ecd372e48aef517920e6` |
| 28 | `def` | [xiCoeffJ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeffj--3c635534adf98e37466b001f.md) | 306 | `declaration-track:3c635534adf98e37466b001fa88812e15748cf0d491fb35538600cab27037234` |
| 29 | `lemma` | [xiCoeff_eq_neg_add_xiCoeffJ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeff-eq-neg-add-xicoeffj--1a5191874b238c7c2cf734a7.md) | 309 | `result-track:1a5191874b238c7c2cf734a76f17facef2ed8a928ddb94ed8f7225ac3d996b57` |
| 30 | `lemma` | [xiCoeffJ_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeffj-zero--d007a4328c2c69a79c6dbbe9.md) | 312 | `result-track:d007a4328c2c69a79c6dbbe9e6d6c7feee7a923e3989fc5af3bd74227c86401c` |
| 31 | `lemma` | [xiCoeffJ_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeffj-one--f5414166d56c0a045f907b33.md) | 315 | `result-track:f5414166d56c0a045f907b3318f6432435d1dd069eafa7b3bbdc9d7e5726f948` |
| 32 | `lemma` | [xiCoeffJ_eq_sum_range_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeffj-eq-sum-range-of-le--4224d3a13bac4a0e4b9cac19.md) | 318 | `result-track:4224d3a13bac4a0e4b9cac190fa5ed1085747c5d8295dc4da7bd3469ca4087e7` |
| 33 | `lemma` | [xiCoeffJ_conj](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/xicoeffj-conj--5845acec3c4a80a6108e0f70.md) | 325 | `result-track:5845acec3c4a80a6108e0f701fe1f6502c75ea008498685cd36b10f81f6e93aa` |
| 34 | `lemma` | [norm_xiCoeffJ_le_aux](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/norm-xicoeffj-le-aux--6182ce1672d946ed6f9abd6a.md) | 330 | `result-track:6182ce1672d946ed6f9abd6a827b9d45a12cf1f264cbb35345f117bf71eee590` |
| 35 | `def` | [Fmaj](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/fmaj--52146746c123ac03a44dad3f.md) | 339 | `declaration-track:52146746c123ac03a44dad3fa711c6728012b4781e22ea2d2dfd36ba68356fd4` |
| 36 | `lemma` | [Fmaj_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/fmaj-nonneg--ac655ae7bbdba244cbced2e1.md) | 341 | `result-track:ac655ae7bbdba244cbced2e198df3eaff0eae1e7c38513653f63420ef16bfe76` |
| 37 | `lemma` | [Fmaj_eq_sum_range_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/fmaj-eq-sum-range-of-le--e439c51da14c24d9f10ffdd1.md) | 345 | `result-track:e439c51da14c24d9f10ffdd10b21f209ed98f34735e39ca5364213fe5ef41429` |
| 38 | `lemma` | [norm_xiCoeffJ_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/norm-xicoeffj-le--62c579f4bbaad6094045fade.md) | 353 | `result-track:62c579f4bbaad6094045fade38d1b5faeda75ea877c020660c5f3ad356f6f7d1` |
| 39 | `lemma` | [norm_xiCoeff_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/norm-xicoeff-le--b21c3f37558ebb016c5f4d0f.md) | 360 | `result-track:b21c3f37558ebb016c5f4d0fd01f94b67cbe4d0b81fadc06a766f6d7f60a9e4c` |
| 40 | `lemma` | [norm_xiCoeff_sq_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/declarations/norm-xicoeff-sq-le--fd9140a8d276dbced874d644.md) | 375 | `result-track:fd9140a8d276dbced874d6446a886662fe3950daf5722bfc2c7debce966cf21b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
