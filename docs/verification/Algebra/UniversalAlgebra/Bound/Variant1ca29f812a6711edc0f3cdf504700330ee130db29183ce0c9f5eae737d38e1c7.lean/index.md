# Verification target: GRWTSK.Algebra.UniversalAlgebra.Bound.Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d36548dd598897a3246046d35d5e3a3d9ffb5a6",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d36548dd598897a3246046d35d5e3a3d9ffb5a6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean.json)

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
| 1 | `def` | [stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/stepbound--88ff2dc459d805e1b6f2be85.md) | 42 | `declaration-track:88ff2dc459d805e1b6f2be856dd946e555500368c525cdcd27ce462e96c8df49` |
| 2 | `theorem` | [le_stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/le-stepbound--dc9b5637b61cb6986c8029da.md) | 45 | `result-track:dc9b5637b61cb6986c8029da537d1f12e9b6008ead7a24bb95d071546c3dc941` |
| 3 | `theorem` | [stepBound_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/stepbound-mono--d43ec0aa0316ae2635a40c7a.md) | 48 | `result-track:d43ec0aa0316ae2635a40c7a456003248825ccad189514a81746966af1edb4d6` |
| 4 | `theorem` | [stepBound_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/stepbound-pos-iff--8f9b15d7d4cdc338dda90498.md) | 50 | `result-track:8f9b15d7d4cdc338dda904985a917f0d591be920261c8231a24bea6978fd7795` |
| 5 | `lemma` | [coe_stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/coe-stepbound--c9f802885c87a37b222b2cab.md) | 55 | `result-track:c9f802885c87a37b222b2cabcc5fe9138c9306a41d4af53a4675b187a4589d45` |
| 6 | `theorem` | [eps_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/eps-pos--6ebb74e8508aee0a5b23637c.md) | 72 | `result-track:6ebb74e8508aee0a5b23637c5ad0fe1630cd37575400424f34ce79f450baa73a` |
| 7 | `theorem` | [m_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/m-pos--cab6c2b8758f4a1cf5a3fe63.md) | 77 | `result-track:cab6c2b8758f4a1cf5a3fe63a708ffab7bac612159f3504d4f1a2edbce489334` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/macro--98fe07b8754c691bff9ebfbb.md) | 83 | `declaration-track:98fe07b8754c691bff9ebfbb69675738d42000e39b46934f4659acf6fe06f09e` |
| 9 | `theorem` | [m_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/m-pos--719318d7d45277f8bd078770.md) | 108 | `result-track:719318d7d45277f8bd07877067c41fb44e865e82aa7bd2250045b167f074c7be` |
| 10 | `theorem` | [coe_m_add_one_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/coe-m-add-one-pos--548088e13b2a6cb72986d647.md) | 111 | `result-track:548088e13b2a6cb72986d6472d90aee0683aa21b312e3fcebd954df9a63cba06` |
| 11 | `theorem` | [one_le_m_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/one-le-m-coe--431d567c19db50baefb33ad0.md) | 113 | `result-track:431d567c19db50baefb33ad01e21274596d4e62c7bd546aca834a8208c8a4b59` |
| 12 | `theorem` | [eps_pow_five_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/eps-pow-five-pos--d8aa822f915e48a47136f3f2.md) | 116 | `result-track:d8aa822f915e48a47136f3f271acfcb08ef916711793b0cf32b8c12a51898450` |
| 13 | `theorem` | [eps_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/eps-pos--b6d3b672a5604cfd7a012e73.md) | 119 | `result-track:b6d3b672a5604cfd7a012e7322bb54fcf5b87f008a99cf3972f48b78b58fbfd2` |
| 14 | `theorem` | [hundred_div_ε_pow_five_le_m](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/hundred-div-pow-five-le-m--10364bf753cc39e46464558f.md) | 122 | `result-track:10364bf753cc39e46464558ff1c6e621227279afa6f050ca4efa60f51d363e33` |
| 15 | `theorem` | [hundred_le_m](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/hundred-le-m--d9e71163d70073d5d869316d.md) | 129 | `result-track:d9e71163d70073d5d869316d10fef691229a068314c9d0722213f4faf642a193` |
| 16 | `theorem` | [a_add_one_le_four_pow_parts_card](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/a-add-one-le-four-pow-parts-card--3d6a4b3ce5bca9aa81db93e1.md) | 135 | `result-track:3d6a4b3ce5bca9aa81db93e1eef27ebb6299eeebfedbef4a93d45996e819e027` |
| 17 | `theorem` | [card_aux₁](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/card-aux--12db33460f114fdbc9b46f77.md) | 142 | `result-track:12db33460f114fdbc9b46f7768f05bb9fef98526967bd34fc2ed83fd28fa5584` |
| 18 | `theorem` | [card_aux₂](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/card-aux--894b09f9f7c31e7b93a9d77c.md) | 147 | `result-track:894b09f9f7c31e7b93a9d77c6ba5f3572ea29fcc58655c924a0a40c701e3fadf` |
| 19 | `theorem` | [pow_mul_m_le_card_part](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/pow-mul-m-le-card-part--e045cbf5ed0cbe0e007b7896.md) | 157 | `result-track:e045cbf5ed0cbe0e007b789689fad39a9e8b5e7ef7aa8eb3c92080f34cea0ee5` |
| 20 | `def` | [initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/initialbound--2c970553e0a4d42ce733d7b2.md) | 167 | `declaration-track:2c970553e0a4d42ce733d7b294f4bf6c09dcf06b4755cf174d531a4b13d833de` |
| 21 | `theorem` | [le_initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/le-initialbound--65f629e4685972507c44ef67.md) | 170 | `result-track:65f629e4685972507c44ef6783ba6d45fb223f9ad88c5902729d8bad7b383bce` |
| 22 | `theorem` | [seven_le_initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/seven-le-initialbound--df466c7a46df115e5376c005.md) | 173 | `result-track:df466c7a46df115e5376c0059187c642f62a72158270f5abcc4556db25bacd67` |
| 23 | `theorem` | [initialBound_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/initialbound-pos--e2fe39568a80e96547296ac6.md) | 176 | `result-track:e2fe39568a80e96547296ac6c6140bdc88d660291bd190ea93252c54d92e8227` |
| 24 | `theorem` | [hundred_lt_pow_initialBound_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/hundred-lt-pow-initialbound-mul--85c993ef46245d4cc3582c4e.md) | 179 | `result-track:85c993ef46245d4cc3582c4eb697ef01448d6b414d89443e37f91eabee85f717` |
| 25 | `def` | [bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/bound--73ead2f189f4e67706c14aa6.md) | 190 | `declaration-track:73ead2f189f4e67706c14aa667d7b5d54ad74c60ecc16160e02d93d491be78f3` |
| 26 | `theorem` | [initialBound_le_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/initialbound-le-bound--0a7d36ec91a44b9d4100cfb6.md) | 194 | `result-track:0a7d36ec91a44b9d4100cfb69a96b82e44df3be39ed60fe199c7cbfd2752db74` |
| 27 | `theorem` | [le_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/le-bound--8a5126c0331dea9109ac84a3.md) | 197 | `result-track:8a5126c0331dea9109ac84a3ee20ab344b611e8ea402bdac7e0b3cd821f88b31` |
| 28 | `theorem` | [bound_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/bound-pos--6177b34efd3dd41414e11d60.md) | 200 | `result-track:6177b34efd3dd41414e11d60819a147c3f599a0ac41bc5e487339f82f5e4b4ec` |
| 29 | `theorem` | [mul_sq_le_sum_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/mul-sq-le-sum-sq--8f4aedaf2a9e366e98a923e3.md) | 205 | `result-track:8f4aedaf2a9e366e98a923e34aff9d5444b854e58237d236d5ae053d76f15a4f` |
| 30 | `theorem` | [add_div_le_sum_sq_div_card](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/add-div-le-sum-sq-div-card--e3a6cf980223b313a8179f65.md) | 213 | `result-track:e3a6cf980223b313a8179f65572b0fb1e55819eba4490d10df9404ce508fc9ce` |
| 31 | `def` | [evalInitialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/evalinitialbound--a0b4192e735fa1d7a1e99480.md) | 242 | `declaration-track:a0b4192e735fa1d7a1e99480568ffeda0e0a2bb6de7fab03bb13d60ed1dae017` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/example--0d9ca2b1291ccdb14e4f9560.md) | 251 | `declaration-track:0d9ca2b1291ccdb14e4f956033f645279845fb908cc016e9150dd0737fd5a765` |
| 33 | `def` | [evalBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/evalbound--f2769586f63b6a6b3a64cdb1.md) | 255 | `declaration-track:f2769586f63b6a6b3a64cdb1b9b878ea704dc797a9c325826c4c5fe6cd3a98c5` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variant1ca29f812a6711edc0f3cdf504700330ee130db29183ce0c9f5eae737d38e1c7.lean/declarations/example--cfa3299b990e4978327fd55f.md) | 263 | `declaration-track:cfa3299b990e4978327fd55f2fd704a4ada2aef0ef8a2103a71463ceedde42c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
