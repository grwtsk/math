# Verification target: GRWTSK.Algebra.GoingUp.Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c60f1dcc7ff97877c3f0d91529924042425f5cee",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/index.md) · [Full source](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c60f1dcc7ff97877c3f0d91529924042425f5cee`.

Source path: `GRWTSK/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_zero_mem_comap_of_root_mem_of_eval_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/coeff-zero-mem-comap-of-root-mem-of-eval-mem--d7aca7890c2477f770a79376.md) | 43 | `result-track:d7aca7890c2477f770a7937661d091b5f4ac0ea09025386d04ce1d7631434fbe` |
| 2 | `theorem` | [coeff_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/coeff-zero-mem-comap-of-root-mem--75a3a1dd03f6ddb9e98bbfc4.md) | 49 | `result-track:75a3a1dd03f6ddb9e98bbfc444077a1e2dec43c2b44b4ccfab0c0c2102105005` |
| 3 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_non_zero_divisor_root_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-coeff-ne-zero-mem-comap-of-non-zero-divisor-root-mem--9dfa90984ccaefd138083961.md) | 53 | `result-track:9dfa90984ccaefd1380839611265ead6a535a564bdc48551f9b903278f82af68` |
| 4 | `theorem` | [injective_quotient_le_comap_map](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/injective-quotient-le-comap-map--fbb69b7153ef4e5e3f84c6b8.md) | 73 | `result-track:fbb69b7153ef4e5e3f84c6b8712c336d994120b306539b2e164fc211f749359a` |
| 5 | `theorem` | [quotient_mk_maps_eq](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/quotient-mk-maps-eq--6d40c91bec661f28277eeec0.md) | 96 | `result-track:6d40c91bec661f28277eeec0465234ae5e7f77ad4037aa0be66eb070d84b8218` |
| 6 | `theorem` | [exists_nonzero_mem_of_ne_bot](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-nonzero-mem-of-ne-bot--a7bbea97c82880899e300ff1.md) | 110 | `result-track:a7bbea97c82880899e300ff1620300ea89cf061b161f2266b3df9236b81430e7` |
| 7 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-coeff-ne-zero-mem-comap-of-root-mem--d70d601ba879fb7697b1fcaf.md) | 129 | `result-track:d70d601ba879fb7697b1fcaf84ddf21d50efed2e8673f8de678886867c2521f3` |
| 8 | `theorem` | [exists_coeff_mem_comap_sdiff_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-coeff-mem-comap-sdiff-comap-of-root-mem-sdiff--f361c50fa282ce2f9bc307d4.md) | 135 | `result-track:f361c50fa282ce2f9bc307d4208c74236bf732095cb33860c83612a583386e90` |
| 9 | `theorem` | [comap_lt_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/comap-lt-comap-of-root-mem-sdiff--e0b3f323c75173ea4b68a2de.md) | 156 | `result-track:e0b3f323c75173ea4b68a2deefee48c8f3b5f30871e14aa9bbb17cd12fcd4277` |
| 10 | `theorem` | [mem_of_one_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/mem-of-one-mem--6f40a38169c650d19d83c27f.md) | 162 | `result-track:6f40a38169c650d19d83c27f0e6021b2c459fddaa6d61cc7de657acb390c61cb` |
| 11 | `theorem` | [comap_lt_comap_of_integral_mem_sdiff](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/comap-lt-comap-of-integral-mem-sdiff--3f09ea5f18872d675d20d069.md) | 165 | `result-track:3f09ea5f18872d675d20d0695eca4428c1c1dd27a9ca9a6ef1f75483b32881b0` |
| 12 | `theorem` | [comap_ne_bot_of_root_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/comap-ne-bot-of-root-mem--4430afd3adeb0a695b6e8b7c.md) | 172 | `result-track:4430afd3adeb0a695b6e8b7cc197ef4fb6b39d9bb2b6395d0bcbd9ca195260af` |
| 13 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--5a06de28208c6a4c8883f112.md) | 177 | `result-track:5a06de28208c6a4c8883f1127b62b4cd224a04750ac1fc81b6abeee47cc6a483` |
| 14 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap'](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--8773acbcd4cf933918a77243.md) | 185 | `result-track:8773acbcd4cf933918a772431adb0650e4647238744a8a32630f276015818005` |
| 15 | `theorem` | [comap_ne_bot_of_algebraic_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/comap-ne-bot-of-algebraic-mem--2b544f2c026c9001527bf0b5.md) | 193 | `result-track:2b544f2c026c9001527bf0b544da2a3258bde0d9e155106db6e255793d4ace0d` |
| 16 | `theorem` | [comap_ne_bot_of_integral_mem](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/comap-ne-bot-of-integral-mem--34cf911ed8fba9354952d5b7.md) | 198 | `result-track:34cf911ed8fba9354952d5b7586204173e77f65ed976e0bd00f7ecc44192e92c` |
| 17 | `theorem` | [eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/eq-bot-of-comap-eq-bot--258fd86d2bd9da085d986e1e.md) | 202 | `result-track:258fd86d2bd9da085d986e1e525935b6b10d66a8d5f67b4be8bc53b264ae59b9` |
| 18 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--1066b2337550733fd79a1035.md) | 209 | `result-track:1066b2337550733fd79a1035905d198891a736d6d2c374d8a22201308823ca0a` |
| 19 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal'](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--c05673edda5e7f84db932c25.md) | 216 | `result-track:c05673edda5e7f84db932c257162226edb648537266773e66fb0ffdd6dbaecc7` |
| 20 | `theorem` | [IsIntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/isintegralclosure-comap-lt-comap--816a340d8e59738b9b8003a8.md) | 228 | `result-track:816a340d8e59738b9b8003a896e6ba578bb4826fc2012e8a3da7be60a7912515` |
| 21 | `theorem` | [IsIntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/isintegralclosure-ismaximal-of-ismaximal-comap--2be6e4c9b6903b0d3314379a.md) | 233 | `result-track:2be6e4c9b6903b0d3314379a61ad0f435370bd0c565bb942727c8144e9bc26c0` |
| 22 | `theorem` | [IsIntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/isintegralclosure-comap-ne-bot--5b9bc4363029e041beb39da2.md) | 240 | `result-track:5b9bc4363029e041beb39da22924cc62cf277f705a3b56a5b3b910c396437e3e` |
| 23 | `theorem` | [IsIntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/isintegralclosure-eq-bot-of-comap-eq-bot--dc7634b276f5f891d1819fce.md) | 245 | `result-track:dc7634b276f5f891d1819fce870f00cc70a81ae248493e48b15c33c8d4449934` |
| 24 | `theorem` | [IntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/integralclosure-comap-lt-comap--517d2629885487db670f08b8.md) | 252 | `result-track:517d2629885487db670f08b83d8517aabb85fba5874a623f0f4a88e66436760d` |
| 25 | `theorem` | [IntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/integralclosure-ismaximal-of-ismaximal-comap--7c8fb60d222756a5f6d30585.md) | 257 | `result-track:7c8fb60d222756a5f6d30585a4f1eb1255a2688aa940d1a2f80eadefd7a91b4e` |
| 26 | `theorem` | [IntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/integralclosure-comap-ne-bot--4317641008f35da1f89024bd.md) | 265 | `result-track:4317641008f35da1f89024bdb517c97720c8a0e851e69069f3062db5b2803c6c` |
| 27 | `theorem` | [IntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/integralclosure-eq-bot-of-comap-eq-bot--8414e46a295c4f6c6fbfc464.md) | 269 | `result-track:8414e46a295c4f6c6fbfc464f39cc07a3549a853d3e0fd8a673fb6b11f986319` |
| 28 | `theorem` | [exists_ideal_over_prime_of_isIntegral_of_isDomain](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-ideal-over-prime-of-isintegral-of-isdomain--77777f54bd8e83c2c5d206f9.md) | 275 | `result-track:77777f54bd8e83c2c5d206f96947e51ffab2350867e311b9d7263868bc7cbd56` |
| 29 | `theorem` | [exists_ideal_over_prime_of_isIntegral_of_isPrime](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-ideal-over-prime-of-isintegral-of-isprime--817bbe066db25e5ff1fb7d8a.md) | 303 | `result-track:817bbe066db25e5ff1fb7d8a4326f9bd54a1ffdbeb87ff1a92fb28ae7668b50c` |
| 30 | `theorem` | [exists_ideal_over_prime_of_isIntegral](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-ideal-over-prime-of-isintegral--8fba50d372d4e17dbfd5a4e2.md) | 323 | `result-track:8fba50d372d4e17dbfd5a4e20f404a11b3207ff444f65607db6fd4cc6d354cb8` |
| 31 | `theorem` | [exists_ideal_over_maximal_of_isIntegral](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-ideal-over-maximal-of-isintegral--40f58d7a7469eae7cdb1216e.md) | 332 | `result-track:40f58d7a7469eae7cdb1216e6319d97b5b452e1439ffd030a466ab6fe514d48b` |
| 32 | `lemma` | [map_eq_top_iff_of_ker_le](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/map-eq-top-iff-of-ker-le--f5658fe38626a3569f501537.md) | 338 | `result-track:f5658fe38626a3569f501537b871bb0a5162bb48ccda93c17931eb8d17f210fd` |
| 33 | `lemma` | [map_eq_top_iff](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/map-eq-top-iff--16daea6828105316fa383ebd.md) | 352 | `result-track:16daea6828105316fa383ebdf2d5db4f801bdee1197a199cf50ba04b85333c5d` |
| 34 | `instance` | [IsMaximal.under](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/ismaximal-under--1985d0794925be58476cee77.md) | 367 | `declaration-track:1985d0794925be58476cee777bb11ac6a711a77a242d899c73b1dc674baae433` |
| 35 | `theorem` | [IsMaximal.of_liesOver_isMaximal](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/ismaximal-of-liesover-ismaximal--19584623353552362fa94679.md) | 370 | `result-track:19584623353552362fa94679419c6cbdc0a6768e44a4cd114515fba35c9bbad9` |
| 36 | `theorem` | [IsMaximal.of_isMaximal_liesOver](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/ismaximal-of-ismaximal-liesover--2fe77f9f49f2caf95de090ca.md) | 374 | `result-track:2fe77f9f49f2caf95de090ca6111e315c84e70648cb49cc1bcdaf8c0debc53df` |
| 37 | `instance` | [Quotient.algebra_isIntegral_of_liesOver](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/quotient-algebra-isintegral-of-liesover--49de43fa6ed22da87c5af7f0.md) | 379 | `declaration-track:49de43fa6ed22da87c5af7f0c4840d4f081c5e37c6ce2cb0e2fcf73c01ef762f` |
| 38 | `theorem` | [exists_ideal_liesOver_maximal_of_isIntegral](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/exists-ideal-liesover-maximal-of-isintegral--aa96e3c8b4e4a26121803312.md) | 382 | `result-track:aa96e3c8b4e4a26121803312cbeb1c9d4c52e2f0805d28d07d3432673c3f899f` |
| 39 | `instance` | [primesOver.isMaximal](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/primesover-ismaximal--572cc2e79e60327e3c847cc4.md) | 395 | `declaration-track:572cc2e79e60327e3c847cc4396bfb35691e36f0c0d6aa4a6a1c5a41cd5b5d60` |
| 40 | `lemma` | [primesOver_bot](../../../../mathematics/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/declarations/primesover-bot--cd8d10a37a68d6f74f52fd68.md) | 399 | `result-track:cd8d10a37a68d6f74f52fd6824ffc6a6fb247f4cf6b9a9b591910310161ef5c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
