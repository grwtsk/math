# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pigeonhole.Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06a4901b9cf9381e82e3d6db121ad10d9aff82ab",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06a4901b9cf9381e82e3d6db121ad10d9aff82ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_lt_sum_fiber_of_maps_to_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-sum-fiber-of-maps-to-of-nsmul-lt-sum--0bd3256c29f7e35b65be1be0.md) | 119 | `result-track:0bd3256c29f7e35b65be1be06847ede2e539e453b610d5e8ec9c86ffb8f3e3e2` |
| 2 | `theorem` | [exists_sum_fiber_lt_of_maps_to_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-sum-fiber-lt-of-maps-to-of-sum-lt-nsmul--d59d18fe18f0863e94f3d927.md) | 127 | `result-track:d59d18fe18f0863e94f3d927fc186c0b3a2dea4b147b133d8d18c2caf5746045` |
| 3 | `theorem` | [exists_lt_sum_fiber_of_sum_fiber_nonpos_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-sum-fiber-of-sum-fiber-nonpos-of-nsmul-lt-sum--1b3866ae11574ff412f7505f.md) | 136 | `result-track:1b3866ae11574ff412f7505f81d83e5c4f60a03339ff5dcc0b1117dc1b7f033b` |
| 4 | `theorem` | [exists_sum_fiber_lt_of_sum_fiber_nonneg_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-sum-fiber-lt-of-sum-fiber-nonneg-of-sum-lt-nsmul--e91860a75938d762adde579e.md) | 149 | `result-track:e91860a75938d762adde579eb7dd098e9173bf165e5a0973637f7e23faacd723` |
| 5 | `theorem` | [exists_le_sum_fiber_of_maps_to_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-le-sum-fiber-of-maps-to-of-nsmul-le-sum--3bdb13a1d902cd9e287d8294.md) | 163 | `result-track:3bdb13a1d902cd9e287d829430542f2f8a1fc801397870a368798bebec58856f` |
| 6 | `theorem` | [exists_sum_fiber_le_of_maps_to_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-sum-fiber-le-of-maps-to-of-sum-le-nsmul--72bbdbfb4e557032df5c239d.md) | 171 | `result-track:72bbdbfb4e557032df5c239d37e2dbec9cd25fac0fb5b08215fdb5cfc115a2d9` |
| 7 | `theorem` | [exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-le-sum-fiber-of-sum-fiber-nonpos-of-nsmul-le-sum--1214b2497e2d6d58b377801b.md) | 180 | `result-track:1214b2497e2d6d58b377801bcfc5a4db1bf0f328d770cf40868e220fd828d905` |
| 8 | `theorem` | [exists_sum_fiber_le_of_sum_fiber_nonneg_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-sum-fiber-le-of-sum-fiber-nonneg-of-sum-le-nsmul--3af051c3194da5c9453341fc.md) | 194 | `result-track:3af051c3194da5c9453341fc9b53d3e3bf96f81f7884d4f50e1e933d0bb34348` |
| 9 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card-of-maps-to--31f8f74545118f05d397b009.md) | 223 | `result-track:31f8f74545118f05d397b0093403664c1dda3ce4b8ed47d3dc826fa91fb9c46a` |
| 10 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-card-fiber-of-mul-lt-card-of-maps-to--9ea0cd4af8cfbdc4a453eaba.md) | 235 | `result-track:9ea0cd4af8cfbdc4a453eabaec6a4206b08e9f05fc9ba9cc3b10c54f42f71f81` |
| 11 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--3ed5b62e7309b0ed992fafd0.md) | 241 | `result-track:3ed5b62e7309b0ed992fafd0041432aa4da0e6bd5038ceb52789a287ed17c822` |
| 12 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--c18eba4e44154103e6b7316f.md) | 255 | `result-track:c18eba4e44154103e6b7316f80385542f6f7dc3c8e60b2aab18b89e59dc7eef3` |
| 13 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-le-card-fiber-of-nsmul-le-card-of-maps-to--dd218cdc0da2718300fd5c1c.md) | 262 | `result-track:dd218cdc0da2718300fd5c1cb0e64ab36ae9014afa3308f246b8265a478a4e0d` |
| 14 | `theorem` | [exists_le_card_fiber_of_mul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-le-card-fiber-of-mul-le-card-of-maps-to--df21c3fcfd79a91c050afed9.md) | 271 | `result-track:df21c3fcfd79a91c050afed9c45c9f15c0b7d715d8eb3bdf916e76ba1a92221e` |
| 15 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--013df621520f2e0023122f85.md) | 279 | `result-track:013df621520f2e0023122f8562bd7975ebe23f1dbebe8db6a57d36dcb5702f50` |
| 16 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-le-of-card-le-mul--4c413896738cd724a777f65a.md) | 290 | `result-track:4c413896738cd724a777f65a9b104a7c14443a5a27d73f490a94c0e702963ee6` |
| 17 | `theorem` | [exists_lt_sum_fiber_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-sum-fiber-of-nsmul-lt-sum--78c72864163c428d0f930de4.md) | 317 | `result-track:78c72864163c428d0f930de4229005351c9123f609811915004ce4f261421532` |
| 18 | `theorem` | [exists_le_sum_fiber_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-le-sum-fiber-of-nsmul-le-sum--73f2161d59fb5569f4f23216.md) | 326 | `result-track:73f2161d59fb5569f4f23216a99dde0207773a82aa84d889237250027b0d02db` |
| 19 | `theorem` | [exists_sum_fiber_lt_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-sum-fiber-lt-of-sum-lt-nsmul--e59dab1cce1ad0e29b8ff824.md) | 335 | `result-track:e59dab1cce1ad0e29b8ff8240b6f9d97df6465a83d128d805591a81889199f4c` |
| 20 | `theorem` | [exists_sum_fiber_le_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-sum-fiber-le-of-sum-le-nsmul--cf77e3c2333815889e487430.md) | 343 | `result-track:cf77e3c2333815889e487430fc931f508cd1e959fb129cc939f794896108835a` |
| 21 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card--145b692a9c2eb3d8550c2dfa.md) | 354 | `result-track:145b692a9c2eb3d8550c2dfa594710a2179d2cd96138ddea115c8b1a9c3b761c` |
| 22 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-card-fiber-of-mul-lt-card--5b13d813e26a8be067698a9a.md) | 367 | `result-track:5b13d813e26a8be067698a9a852ef3899ed7ce3fde078a2a4c4d3850f5953503` |
| 23 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--c479e7d1d1246a49ab985d2b.md) | 374 | `result-track:c479e7d1d1246a49ab985d2b4435710b0144d55614da0e2384dda6c88f6dfd43` |
| 24 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--35eee632a0117903bf74c175.md) | 387 | `result-track:35eee632a0117903bf74c17530777a8e72a0fcf46d71dc3365bba81b8e7bfb4f` |
| 25 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-le-card-fiber-of-nsmul-le-card--539a57a24770f39592d455f5.md) | 395 | `result-track:539a57a24770f39592d455f51986181c0958af90b023c0a798667af2482ddc99` |
| 26 | `theorem` | [exists_le_card_fiber_of_mul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-le-card-fiber-of-mul-le-card--78d8f46694cba4f2874c4699.md) | 405 | `result-track:78d8f46694cba4f2874c4699e778c2e4f1b14d56a7865cf26a46e0ca563e9239` |
| 27 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--56970647ef0061501326d543.md) | 413 | `result-track:56970647ef0061501326d5438d866a9366bfd2d0b51f8ec7975ef820dc1c49c6` |
| 28 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-card-fiber-le-of-card-le-mul--52ad27522f1732b2a1234e6f.md) | 422 | `result-track:52ad27522f1732b2a1234e6f45909869d422d27a83d6de11f6792ce54c2a745b` |
| 29 | `theorem` | [exists_lt_modEq_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/declarations/exists-lt-modeq-of-infinite--d44af8f627006933ea65129a.md) | 434 | `result-track:d44af8f627006933ea65129a4ffe2e1a0a09965bc8cf310dfa8f6bc16eb78f65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
