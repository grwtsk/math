# Verification target: GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67e757a407f3eb4374934916a2ffa95aa9574120",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67e757a407f3eb4374934916a2ffa95aa9574120`.

Source path: `GRWTSK/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Commute](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/commute--bf01416a1409ff9eea0f31e0.md) | 34 | `declaration-track:bf01416a1409ff9eea0f31e0fbdf63bc5bc89ff21fde716b1aa8180adcfe79eb` |
| 2 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/eq--ae6cec7e0566989889eb372e.md) | 47 | `result-track:ae6cec7e0566989889eb372ef8db44c3d8bdda5a8de5aed69d9ab2a362015360` |
| 3 | `theorem` | [refl](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/refl--2a9fbc57ef0eff95242e5719.md) | 54 | `result-track:2a9fbc57ef0eff95242e57198cf4d30fe70fdf15a5e9f8c1b2da31534a395348` |
| 4 | `theorem` | [symm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/symm--8ad4b580f4b85050aad6c754.md) | 61 | `result-track:8ad4b580f4b85050aad6c754ce18137bc472440fbd3159d0b32dd86bb7810702` |
| 5 | `theorem` | [semiconjBy](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/semiconjby--e32ecfaa9d477c35cb6113e2.md) | 67 | `result-track:e32ecfaa9d477c35cb6113e2559ed6246f6ecb290af05b47c0285bf0b3ca0ef9` |
| 6 | `theorem` | [symm_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/symm-iff--573183ced82db6a3960e9148.md) | 73 | `result-track:573183ced82db6a3960e914828e2320611db712937abba37113ec0c296967019` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/instance--452a3bf92938e17566b5fb43.md) | 79 | `declaration-track:452a3bf92938e17566b5fb43724b5c159b9944229e34641464e6597d7f5fffef` |
| 8 | `instance` | [on_isRefl](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/on-isrefl--19eff7cb9e823c9c71fb059e.md) | 84 | `declaration-track:19eff7cb9e823c9c71fb059ef437242b44cd5f1911543cfd99b5e3a9b8d21e06` |
| 9 | `theorem` | [mul_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-right--f3fad29970049522b93e5d01.md) | 98 | `result-track:f3fad29970049522b93e5d018d03c86ea86b293568f4c5fd46e1b304a1eeee5d` |
| 10 | `theorem` | [mul_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-left--56a983b41aaf103e92ee798b.md) | 107 | `result-track:56a983b41aaf103e92ee798bb6fa6d59198becafa27cc3fdae20589a1ddc86da` |
| 11 | `theorem` | [right_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/right-comm--3624b0035bba895198212b82.md) | 114 | `result-track:3624b0035bba895198212b82570d54e9ca209c49cf2d50cbf1145c5d88851805` |
| 12 | `theorem` | [left_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/left-comm--7619d96d3b054894d2413800.md) | 121 | `result-track:7619d96d3b054894d2413800e998c650c14cb5b84805352f1bee0d01b20a4ab6` |
| 13 | `theorem` | [mul_mul_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-mul-mul-comm--1031fdcf7fbfed192de02c3d.md) | 128 | `result-track:1031fdcf7fbfed192de02c3d2f6c58caf48635f68077ed8bc5ff5436dea33da1` |
| 14 | `theorem` | [all](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/all--67b590ae99dccec8cdd456d9.md) | 136 | `result-track:67b590ae99dccec8cdd456d967a2d588597b09ec20d1cf85e6c3190ce0986898` |
| 15 | `theorem` | [one_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/one-right--5853693eb4f0fabd7e682531.md) | 147 | `result-track:5853693eb4f0fabd7e68253106e496921b08c8f0dd1bee84b02e826ddc27b99c` |
| 16 | `theorem` | [one_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/one-left--e59cbde0b3d22cf68549a214.md) | 154 | `result-track:e59cbde0b3d22cf68549a214a62d69454e47deaae0cc0e8702c5d425dd141b66` |
| 17 | `theorem` | [pow_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/pow-right--a0a23b2af0972481af68ef85.md) | 167 | `result-track:a0a23b2af0972481af68ef850f94e569b8e4fe3705d1f8db3629fe41e10c466d` |
| 18 | `theorem` | [pow_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/pow-left--50b7e845efdffdb990fad3ef.md) | 174 | `result-track:50b7e845efdffdb990fad3ef4c19ac1658a69b0022915112f474473f333e6940` |
| 19 | `theorem` | [pow_pow](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/pow-pow--3fe2c6fe0cb15102a9ec3dc7.md) | 182 | `result-track:3fe2c6fe0cb15102a9ec3dc7e24bf3de7e72a744333cd01b6bfc137b9831327f` |
| 20 | `theorem` | [self_pow](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/self-pow--86656cfced4f2cdeca50d55b.md) | 190 | `result-track:86656cfced4f2cdeca50d55b565035d796bd975658e252eebcb10a95eee69441` |
| 21 | `theorem` | [pow_self](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/pow-self--c07f3041575a13648bb74df8.md) | 198 | `result-track:c07f3041575a13648bb74df8eb54c894e93ca9d88f9b61164ed33ae0c723d8a9` |
| 22 | `theorem` | [pow_pow_self](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/pow-pow-self--65ae102304668535783a68df.md) | 206 | `result-track:65ae102304668535783a68dfc44558bc0d06f16649a8a25ac99bcb9222713130` |
| 23 | `theorem` | [_root_.pow_succ'](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/root-pow-succ--05610b7a30819cf5e0a5564f.md) | 213 | `result-track:05610b7a30819cf5e0a5564f3a0fa105f4c415641c3da037df94600ed1d49bbc` |
| 24 | `theorem` | [units_inv_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/units-inv-right--5f363f9cccf442b2e620091a.md) | 219 | `result-track:5f363f9cccf442b2e620091aba712d0bcd9d6b455cecb7ef63ff173f707085b4` |
| 25 | `theorem` | [units_inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/units-inv-right-iff--353183cb3ac01f49d95ec2b5.md) | 225 | `result-track:353183cb3ac01f49d95ec2b55e1db8e1f45a7ca3f6e2d7a5b97f78ab05c7edfc` |
| 26 | `theorem` | [units_inv_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/units-inv-left--c8449dd546ccdb63be65b26d.md) | 231 | `result-track:c8449dd546ccdb63be65b26ddd79d0c0660f7317bf1ba96e7ee2f33825a887f3` |
| 27 | `theorem` | [units_inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/units-inv-left-iff--7d1f56ef191c978cfb9eb7e3.md) | 237 | `result-track:7d1f56ef191c978cfb9eb7e3cb9965623b3b6f4959432e3965eb90e0af9cecef` |
| 28 | `theorem` | [units_val](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/units-val--0213d91e30ae57d1b3d53dc4.md) | 243 | `result-track:0213d91e30ae57d1b3d53dc4ea12a49a49c1c18c42bfcb31c2be5a0770b68151` |
| 29 | `theorem` | [units_of_val](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/units-of-val--77c137d3e77d7e43d356da2c.md) | 249 | `result-track:77c137d3e77d7e43d356da2cfaea666b7e29010b966f9dcba706d078613b71f9` |
| 30 | `theorem` | [units_val_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/units-val-iff--f2246c7e0dd2a62b42721517.md) | 255 | `result-track:f2246c7e0dd2a62b42721517254a15644cec9116cd29d30da3d965cdc1dd4340` |
| 31 | `def` | [_root_.Units.leftOfMul](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/root-units-leftofmul--c14e371f3768b07a97127b53.md) | 263 | `declaration-track:c14e371f3768b07a97127b53a9a34d9b5ccc9500620dcb829d55df6fd49a0b17` |
| 32 | `def` | [_root_.Units.rightOfMul](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/root-units-rightofmul--e08a420403096751a2dc4c6e.md) | 276 | `declaration-track:e08a420403096751a2dc4c6e26b9cad198cb78da866301fb7375475661bddab4` |
| 33 | `theorem` | [isUnit_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/isunit-mul-iff--08d51ba0f2312b86fbe89f3b.md) | 282 | `result-track:08d51ba0f2312b86fbe89f3b3507e9fae7cfa5f391bd1a506ff46e8798354785` |
| 34 | `theorem` | [_root_.isUnit_mul_self_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/root-isunit-mul-self-iff--85a314a339240a302f2cdd78.md) | 289 | `result-track:85a314a339240a302f2cdd78544580a2d6cc3dbf0e3775d527a9c6480f8137c8` |
| 35 | `theorem` | [inv_inv](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-inv--559afd28bf1c488eeb9df355.md) | 302 | `result-track:559afd28bf1c488eeb9df355c32a5c2a2b060a4dcf6f366fdd6c97624d9c1c80` |
| 36 | `theorem` | [inv_inv_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-inv-iff--b709d6f0295092f8b4d403cd.md) | 308 | `result-track:b709d6f0295092f8b4d403cde0f71b4c06faa7f8dcbfeb4aba5a3465ae1f408e` |
| 37 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-inv--6c7d1a95b53e940312cd8de4.md) | 314 | `result-track:6c7d1a95b53e940312cd8de437a029709b88425a5e1b7f207788340d43448577` |
| 38 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv--e1e2c3daec8fb976f895bf95.md) | 319 | `result-track:e1e2c3daec8fb976f895bf956bccb0c07bc0e9d137849d85833695a6d79f182c` |
| 39 | `theorem` | [div_mul_div_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/div-mul-div-comm--a0977c12f5231cd4c88dc030.md) | 324 | `result-track:a0977c12f5231cd4c88dc030be23cef479fb924d0c80a5af779b624455b2e726` |
| 40 | `theorem` | [mul_div_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-div-mul-comm--147bb0f8601daf79e31731a0.md) | 331 | `result-track:147bb0f8601daf79e31731a0b2a7bff7321b3679f643ac275cc29cf20d6a5490` |
| 41 | `theorem` | [div_div_div_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/div-div-div-comm--3cf5209df1199e6a195b2d7f.md) | 338 | `result-track:3cf5209df1199e6a195b2d7f185b0fa6b85b2abe04e13192e634d2a7d7f319a5` |
| 42 | `theorem` | [inv_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-right--1a8cf7c5ee9086f82cad4d26.md) | 352 | `result-track:1a8cf7c5ee9086f82cad4d26a0a7faffeb2c7000ea44116422edccb106059fab` |
| 43 | `theorem` | [inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-right-iff--e095679c72506e4d270d5823.md) | 358 | `result-track:e095679c72506e4d270d58234fedd2dc09b7e441bcc675699afc12b36acaf2a5` |
| 44 | `theorem` | [inv_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-left--93bb28435ee77c7a995e54fb.md) | 364 | `result-track:93bb28435ee77c7a995e54fb93300e337bb934d5a7d7aebabfdea8ba9ca69d3c` |
| 45 | `theorem` | [inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-left-iff--3b94dbbb0fd73927bd742cea.md) | 370 | `result-track:3b94dbbb0fd73927bd742cea08814fe1bdc2e95ff5f7d76922414268faaf5851` |
| 46 | `theorem` | [inv_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-mul-cancel--15059a7398557586576dcfb8.md) | 376 | `result-track:15059a7398557586576dcfb86a08ca69191db4bf8ee94f19401fb92a924abe62` |
| 47 | `theorem` | [inv_mul_cancel_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-mul-cancel-assoc--a9adec4c67c48bcfb81266ce.md) | 382 | `result-track:a9adec4c67c48bcfb81266ceaaadf1c2c8a78e83bf4aab30c5ed98f4ccc4679f` |
| 48 | `theorem` | [mul_inv_cancel](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-inv-cancel--1acfb8dffe1743da1a8a64e9.md) | 388 | `result-track:1acfb8dffe1743da1a8a64e98f0ea48b8206b39e41a19d47bb2fb43fe54cba17` |
| 49 | `theorem` | [mul_inv_cancel_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-inv-cancel-assoc--1b149885a575ffee1462400e.md) | 394 | `result-track:1b149885a575ffee1462400e16750524184aba5e34f3ec62be635b41779b36e8` |
| 50 | `theorem` | [mul_inv_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-inv-cancel-comm--6a3f803bba3518f80a793d85.md) | 408 | `result-track:6a3f803bba3518f80a793d85543661ad101672d11ab85f4a38f4dfb94d3c9716` |
| 51 | `theorem` | [mul_inv_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/mul-inv-cancel-comm-assoc--ad89f7054a902b5c8eef2738.md) | 414 | `result-track:ad89f7054a902b5c8eef273875b89ae3bc68ca1c3418a5b131f27b27c7ca72aa` |
| 52 | `theorem` | [inv_mul_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-mul-cancel-comm--f0a371db5d830764f97e5af0.md) | 420 | `result-track:f0a371db5d830764f97e5af05969ab8e855f523b5e4ecd7a26ae05b903aa9548` |
| 53 | `theorem` | [inv_mul_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/declarations/inv-mul-cancel-comm-assoc--770c8c31399795b30314aaa9.md) | 426 | `result-track:770c8c31399795b30314aaa96237097db2ec9627856eb5dcef78a0ef866357b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
