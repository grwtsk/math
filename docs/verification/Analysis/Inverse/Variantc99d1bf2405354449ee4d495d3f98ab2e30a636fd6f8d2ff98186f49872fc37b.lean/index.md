# Verification target: GRWTSK.Analysis.Inverse.Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3712926d08b7e064e2b03c061591d6e834aab282",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3712926d08b7e064e2b03c061591d6e834aab282`.

Source path: `GRWTSK/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftInv](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/leftinv--a716e4d419235ff5a163b6ba.md) | 74 | `declaration-track:a716e4d419235ff5a163b6ba76cf902d0063e83298d38f7a905c9f7649f62b96` |
| 2 | `theorem` | [leftInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/leftinv-coeff-zero--91e758f116151135e7b03957.md) | 84 | `result-track:91e758f116151135e7b039571a6b7086e2280ab5d0acde05ed329133f499b238` |
| 3 | `theorem` | [leftInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/leftinv-coeff-one--39178391688ea98bcb47418b.md) | 88 | `result-track:39178391688ea98bcb47418b596680b38e795f36b2e94195c44460a4c11fc2c8` |
| 4 | `theorem` | [leftInv_removeZero](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/leftinv-removezero--997998599719b9ad7c76ab9f.md) | 93 | `result-track:997998599719b9ad7c76ab9f9a3669ca13e30c4b2608137242bdf9dd9d57eccf` |
| 5 | `theorem` | [leftInv_comp](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/leftinv-comp--224b0dd60112e8f98dd33b6a.md) | 109 | `result-track:224b0dd60112e8f98dd33b6ada011ea3a37dff016a7711a29fcc81f8cbdced97` |
| 6 | `def` | [rightInv](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/rightinv--d51a93bff69380410f797485.md) | 177 | `declaration-track:d51a93bff69380410f797485d0d2489493ebde5337cb749a0a99571096a7dd79` |
| 7 | `theorem` | [rightInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/rightinv-coeff-zero--bbcb7fc788b782709723abbd.md) | 186 | `result-track:bbcb7fc788b782709723abbd40fdb2a64d150f3ac68a2244971a874bc11e9f79` |
| 8 | `theorem` | [rightInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/rightinv-coeff-one--4461860ac7f4b044761855aa.md) | 190 | `result-track:4461860ac7f4b044761855aa866c7d6ad5b56f5f568b71a590c02f06fd820390` |
| 9 | `theorem` | [rightInv_removeZero](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/rightinv-removezero--74606e78b5c4e21733417500.md) | 196 | `result-track:74606e78b5c4e217334175001cc7cc3a1ff6277232d1835b14dfbea9615c503e` |
| 10 | `theorem` | [comp_rightInv_aux1](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/comp-rightinv-aux1--89fb8d862528b730c8d0e7d7.md) | 209 | `result-track:89fb8d862528b730c8d0e7d75afa9edab7b546ff7b5b4e0146e9222165a4cca1` |
| 11 | `theorem` | [comp_rightInv_aux2](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/comp-rightinv-aux2--fa9b01a824858d76ba150828.md) | 236 | `result-track:fa9b01a824858d76ba1508281b4e53967e63c6d9d939652ca63b9971dfe1fd60` |
| 12 | `theorem` | [comp_rightInv](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/comp-rightinv--4d3d956f0b17f753a8661b3c.md) | 253 | `result-track:4d3d956f0b17f753a8661b3c7262a3dadd83f14ad7015dea4f9866ad74266611` |
| 13 | `theorem` | [rightInv_coeff](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/rightinv-coeff--12f7d44952826c33016e5b31.md) | 271 | `result-track:12f7d44952826c33016e5b3145e19d67b4ef68338d8d95f7bff75ef2f16376a7` |
| 14 | `theorem` | [leftInv_eq_rightInv](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/leftinv-eq-rightinv--2e8a0f8edf290115c0735003.md) | 291 | `result-track:2e8a0f8edf290115c07350030b43c1abffb22401d80ebe92e1e829d8dfcee0b4` |
| 15 | `theorem` | [radius_right_inv_pos_of_radius_pos_aux1](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/radius-right-inv-pos-of-radius-pos-aux1--59a8fbc7e866ae0b06e9c760.md) | 374 | `result-track:59a8fbc7e866ae0b06e9c7606b6074592474c63eafb700e6f1cfda6bfb699fbf` |
| 16 | `theorem` | [radius_rightInv_pos_of_radius_pos_aux2](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/radius-rightinv-pos-of-radius-pos-aux2--b6c625033c18b95842f8497e.md) | 436 | `result-track:b6c625033c18b95842f8497e7cf29ae52536de8f36248ee20973fabebf4623e5` |
| 17 | `theorem` | [radius_rightInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/radius-rightinv-pos-of-radius-pos--c73de4ab3dab20bcbb3ab44e.md) | 490 | `result-track:c73de4ab3dab20bcbb3ab44eac4139b0dfa139e8557d0f7ee0b3aaeb73578315` |
| 18 | `theorem` | [radius_leftInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/radius-leftinv-pos-of-radius-pos--c07a1673eb31a6ec804e07b5.md) | 561 | `result-track:c07a1673eb31a6ec804e07b552d19ac5085ee4190f52dca024c42c7b68bf9462` |
| 19 | `lemma` | [HasFPowerSeriesAt.tendsto_partialSum_prod_of_comp](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/hasfpowerseriesat-tendsto-partialsum-prod-of-comp--f2345b9a5cbbb01e58f9c680.md) | 576 | `result-track:f2345b9a5cbbb01e58f9c680813d7228add5f572f3eb05c3501ec2d15426fffb` |
| 20 | `lemma` | [HasFPowerSeriesAt.eventually_hasSum_of_comp](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/hasfpowerseriesat-eventually-hassum-of-comp--b87f587131564dbdaafeca36.md) | 623 | `result-track:b87f587131564dbdaafeca36d5bb2365f986d0beaf5e4cc82d40ad7d278ceedc` |
| 21 | `theorem` | [OpenPartialHomeomorph.hasFPowerSeriesAt_symm](../../../../mathematics/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/declarations/openpartialhomeomorph-hasfpowerseriesat-symm--376fec74a08b0e5df23a5ffc.md) | 664 | `result-track:376fec74a08b0e5df23a5ffc047de22b9dcc6487d137db9616f3dbc0668df46a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
