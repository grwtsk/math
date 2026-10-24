# Verification target: GRWTSK.Algebra.WellKnown.Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "621186610eef2265a477fd605ae59a534368a044",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/index.md) · [Full source](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `621186610eef2265a477fd605ae59a534368a044`.

Source path: `GRWTSK/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean.json)

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
| 1 | `def` | [invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invunitssub--9ed640a5ef2a4317c102c556.md) | 38 | `declaration-track:9ed640a5ef2a4317c102c5569ebb32ef8c3f198779b81d77fdc4c25ca1a0d4af` |
| 2 | `theorem` | [coeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/coeff-invunitssub--731f5a45b867a54e138a064a.md) | 42 | `result-track:731f5a45b867a54e138a064a908065c7d57238b670a9d6bfe17ecd2d497a3901` |
| 3 | `theorem` | [constantCoeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/constantcoeff-invunitssub--97ec85b3501468f78f70186e.md) | 46 | `result-track:97ec85b3501468f78f70186ed9f4c05deebca3bd66535d4850f5679cf5d5db62` |
| 4 | `theorem` | [invUnitsSub_mul_X](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invunitssub-mul-x--ffc198aba17e776ddef89186.md) | 50 | `result-track:ffc198aba17e776ddef89186a52012232ade2a737099df6b8f38730a8a70b992` |
| 5 | `theorem` | [invUnitsSub_mul_sub](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invunitssub-mul-sub--4312a4b26b337d7408c18caa.md) | 56 | `result-track:4312a4b26b337d7408c18caaa25bab3e7b0a79aeb175b3d57c68990e6fa05060` |
| 6 | `theorem` | [map_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/map-invunitssub--d7e6000733e1e4bada48a023.md) | 59 | `result-track:d7e6000733e1e4bada48a023c67614fd21627c32f3d2fac3e705b901b9557ae3` |
| 7 | `theorem` | [mk_one_mul_one_sub_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/mk-one-mul-one-sub-eq-one--dc2ecfb738c1a8396763a4a5.md) | 77 | `result-track:dc2ecfb738c1a8396763a4a584d697417526fe23ea695d35b28c0b516796b053` |
| 8 | `theorem` | [mk_neg_one_pow_mul_one_add_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/mk-neg-one-pow-mul-one-add-eq-one--dd0b7c88ed533101bde37b0a.md) | 89 | `result-track:dd0b7c88ed533101bde37b0a731d5b706078620cab00c3232115a9b19154327f` |
| 9 | `theorem` | [mk_one_pow_eq_mk_choose_add](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/mk-one-pow-eq-mk-choose-add--bdae9ef5a710383ae9c2198a.md) | 98 | `result-track:bdae9ef5a710383ae9c2198af873f5f49d51dbbd0750b03f711135f07873f104` |
| 10 | `def` | [invOneSubPow](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow--0f30081027bf0ffe39fe7e8c.md) | 115 | `declaration-track:0f30081027bf0ffe39fe7e8c90bac0e7b3f578cca9f83ba99ba291bcf7783f6a` |
| 11 | `theorem` | [invOneSubPow_zero](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-zero--cd98798b140eabf37fe8dd45.md) | 126 | `result-track:cd98798b140eabf37fe8dd45a26e647391188000bc1a4286483066ccb34fba62` |
| 12 | `theorem` | [invOneSubPow_val_eq_mk_sub_one_add_choose_of_pos](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-val-eq-mk-sub-one-add-choose-of-pos--c50e6d61bb36f63ffd21d5d9.md) | 130 | `result-track:c50e6d61bb36f63ffd21d5d9782d8903f8834bdfdc4ef3b80fba1f3ca2ca49af` |
| 13 | `theorem` | [invOneSubPow_val_succ_eq_mk_add_choose](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-val-succ-eq-mk-add-choose--47566d6284fb6306aad86b8c.md) | 134 | `result-track:47566d6284fb6306aad86b8ce0b01949fa09dc88ed72dc8c6a9812be28933f14` |
| 14 | `theorem` | [invOneSubPow_val_one_eq_invUnitSub_one](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-val-one-eq-invunitsub-one--0d9d10fe9b9a4d4f06ddafa6.md) | 137 | `result-track:0d9d10fe9b9a4d4f06ddafa64f0cff21885900e944aac3e83f40210eca64b0f6` |
| 15 | `theorem` | [invOneSubPow_eq_inv_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-eq-inv-one-sub-pow--b645d35e0fab83a9a03f2a03.md) | 146 | `result-track:b645d35e0fab83a9a03f2a03e9d53948ff654ef874edfaa0883aa2a6a1cf6331` |
| 16 | `theorem` | [invOneSubPow_inv_eq_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-inv-eq-one-sub-pow--1d977a655e2aaddcdb4ccd66.md) | 158 | `result-track:1d977a655e2aaddcdb4ccd66023076a8ea52518b88db0f8b97f0f2a76384f3ad` |
| 17 | `theorem` | [invOneSubPow_inv_zero_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-inv-zero-eq-one--f8162e6cc3864af51738633d.md) | 164 | `result-track:f8162e6cc3864af51738633dca4288e3c549796ce7bcee01c7490eddca3e45d9` |
| 18 | `theorem` | [mk_add_choose_mul_one_sub_pow_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/mk-add-choose-mul-one-sub-pow-eq-one--090c35192895bb6bab733694.md) | 168 | `result-track:090c35192895bb6bab733694f9915f175062feda49ec462cfd33fb10ceeb55bf` |
| 19 | `theorem` | [invOneSubPow_add](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/invonesubpow-add--23030178797feee93589cb22.md) | 172 | `result-track:23030178797feee93589cb22360aa133c66e612d6094386e5dd439090a0a2c9d` |
| 20 | `theorem` | [one_sub_pow_mul_invOneSubPow_val_add_eq_invOneSubPow_val](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/one-sub-pow-mul-invonesubpow-val-add-eq-invonesubpow-val--de07b746a66f60ca58309abc.md) | 176 | `result-track:de07b746a66f60ca58309abc1a57f90265cfc147c2b45a01614e973fb206bd3d` |
| 21 | `theorem` | [one_sub_pow_add_mul_invOneSubPow_val_eq_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/one-sub-pow-add-mul-invonesubpow-val-eq-one-sub-pow--e3334b2e57d8159356729f88.md) | 180 | `result-track:e3334b2e57d8159356729f88cb8c7a8d7e01976259ea47652313c6a6ec61f6a5` |
| 22 | `def` | [sin](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/sin--3dd610212e94508989d094f0.md) | 193 | `declaration-track:3dd610212e94508989d094f0346cdfa4f33122693816822c75cf53b8a38f46b7` |
| 23 | `def` | [cos](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/cos--49376bc61d89461e4d955963.md) | 197 | `declaration-track:49376bc61d89461e4d955963208e6b54df198ef9db635906183f6c6e27746fb8` |
| 24 | `theorem` | [map_sin](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/map-sin--ccb000df529581caba387dee.md) | 203 | `result-track:ccb000df529581caba387dee9744c338e2acfb86ddb72085f45c54106a1ca4c7` |
| 25 | `theorem` | [map_cos](../../../../mathematics/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/declarations/map-cos--72134167daa8f65937ba0597.md) | 208 | `result-track:72134167daa8f65937ba0597f4f754c532a87c08e204ef2bc6ffb0e9550a4d51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
