# Verification target: GRWTSK.Algebra.Commute.Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52d3b0a4ff928c65c73a2d67e565fd5f9ba98505",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52d3b0a4ff928c65c73a2d67e565fd5f9ba98505`.

Source path: `GRWTSK/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Semiconj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bracket` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/add-right--500732595b8a476e122034ba.md) | 41 | `result-track:500732595b8a476e122034baa15a17047d0e198bcd16468ffc0214334228080a` |
| 2 | `theorem` | [add_left](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/add-left--f7ae1ff88c5de4cc7cc251f8.md) | 46 | `result-track:f7ae1ff88c5de4cc7cc251f83a4854f93fa0f763a62c49d35879c548563ac9a3` |
| 3 | `theorem` | [mul_self_sub_mul_self_eq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-self-sub-mul-self-eq--53dbca5875b77cb066d3d228.md) | 51 | `result-track:53dbca5875b77cb066d3d2280ed08d956569e4d35d339031395589e5ad3a7a57` |
| 4 | `theorem` | [mul_self_sub_mul_self_eq'](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-self-sub-mul-self-eq--28d5a1541274a709f45ea62b.md) | 55 | `result-track:28d5a1541274a709f45ea62b30041dd3226eb0e73cee92ce70299038585eb12d` |
| 5 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-self-eq-mul-self-iff--9f1d64fcac88954902b33451.md) | 59 | `result-track:9f1d64fcac88954902b33451981c5ee233a2d388ab54cb788956088ae2269e3e` |
| 6 | `theorem` | [neg_right](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-right--7db028c2d9be8aad1b049d5a.md) | 68 | `result-track:7db028c2d9be8aad1b049d5a995d664ddc4a77f30bc505cfbc64d3ae16617b28` |
| 7 | `theorem` | [neg_right_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-right-iff--7e8c117d1d3d129a7f701cd3.md) | 72 | `result-track:7e8c117d1d3d129a7f701cd32b0ebd9f0f3bcb249a78c208f8ae97e2e381753a` |
| 8 | `theorem` | [neg_left](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-left--1455f25d7e9c27e9ccdeba5f.md) | 75 | `result-track:1455f25d7e9c27e9ccdeba5f02d74144d13e3637e398866009c1c3a3c8454cf9` |
| 9 | `theorem` | [neg_left_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-left-iff--af64a827e2ccfff8b60adb10.md) | 79 | `result-track:af64a827e2ccfff8b60adb10ff26c3e9d11643d6afdc320443416316fafb358e` |
| 10 | `theorem` | [neg_one_right](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-one-right--32529f505757dbf4c5948eda.md) | 88 | `result-track:32529f505757dbf4c5948edad041055498d58c8540d6e8ca6a620ce7847ba683` |
| 11 | `theorem` | [neg_one_left](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-one-left--63544ccd98b807d55af52d54.md) | 91 | `result-track:63544ccd98b807d55af52d5486b061141d3a205d33a604fda4f513b473595ce3` |
| 12 | `theorem` | [sub_right](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sub-right--e36e67a606fd21379947ee2d.md) | 101 | `result-track:e36e67a606fd21379947ee2d02890163f32e06bac2f50c2a8bda78b1575c5a25` |
| 13 | `theorem` | [sub_left](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sub-left--43376ac03084336f854daa7c.md) | 105 | `result-track:43376ac03084336f854daa7cb5f051aae5db551716369f6105e6047da97fe897` |
| 14 | `lemma` | [sq_sub_sq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sq-sub-sq--d96f456c11ecd322b93ef919.md) | 113 | `result-track:d96f456c11ecd322b93ef91908f0ca5166479cb92af3cb40d49cef978e341ba0` |
| 15 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--bbe2a9498186844eac219198.md) | 118 | `result-track:bbe2a9498186844eac21919879c109e6fa1a30aad09a0e3c4ebe708df39bd578` |
| 16 | `lemma` | [neg_one_pow_eq_or](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-one-pow-eq-or--be667312ac7ab0d2d99e21c9.md) | 128 | `result-track:be667312ac7ab0d2d99e21c9d889cdd208d0dd129bd3dbf85529823ab044f2d0` |
| 17 | `lemma` | [neg_pow](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-pow--4ea7dcbc5fcceebc74edcb26.md) | 136 | `result-track:4ea7dcbc5fcceebc74edcb262008c7141dd2b50bbcef6e0117c8dee9b65d8c1f` |
| 18 | `lemma` | [neg_pow'](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-pow--dd551828386e765ce7e04f1d.md) | 139 | `result-track:dd551828386e765ce7e04f1d5f9c910930801a5d264fdc0870860449b82dfe7c` |
| 19 | `lemma` | [neg_sq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-sq--5bfef8bd326c1415fa1675a6.md) | 142 | `result-track:5bfef8bd326c1415fa1675a6a322ac6dabbc13afc55111b2e9471334ea15c0b8` |
| 20 | `lemma` | [neg_one_sq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-one-sq--78d209841d1f1f44e7e224ad.md) | 144 | `result-track:78d209841d1f1f44e7e224ad9f362e0aedfbf3ee13454ea686ca994011dcea00` |
| 21 | `lemma` | [neg_one_pow_mul_eq_zero_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-one-pow-mul-eq-zero-iff--802cc1528c330697a28e3322.md) | 155 | `result-track:802cc1528c330697a28e3322d3160d577547d7246ee9ea5a07aea32762575e27` |
| 22 | `lemma` | [mul_neg_one_pow_eq_zero_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-neg-one-pow-eq-zero-iff--3b3c2c0f331c02e81ef4972c.md) | 158 | `result-track:3b3c2c0f331c02e81ef4972ca159ca08f0e0cf7f27ffab52efe3f04bb73e3ec2` |
| 23 | `lemma` | [neg_one_pow_eq_pow_mod_two](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/neg-one-pow-eq-pow-mod-two--9d21eb6ecaa0b8b129a9ad01.md) | 161 | `result-track:9d21eb6ecaa0b8b129a9ad014679bba3597c9f625fe4e3c6ce53345472e7e982` |
| 24 | `lemma` | [sq_eq_one_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sq-eq-one-iff--363f9da1591ad2013fbbf13e.md) | 166 | `result-track:363f9da1591ad2013fbbf13ec7b9b4393ae5644189edb2f2805b9aa9a88db140` |
| 25 | `lemma` | [sq_ne_one_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sq-ne-one-iff--1d0d80823d949ba0ff2e0013.md) | 169 | `result-track:1d0d80823d949ba0ff2e0013465edea99a51029e5fac34866481c686514f3842` |
| 26 | `theorem` | [mul_self_sub_mul_self](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-self-sub-mul-self--92616707dfc9a1a9c7e1af5e.md) | 174 | `result-track:92616707dfc9a1a9c7e1af5ec5f803d5fb16d02fb703aea7b52e0e00289faf8d` |
| 27 | `theorem` | [mul_self_sub_one](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-self-sub-one--a51552b52c6145a79c1fbcc2.md) | 178 | `result-track:a51552b52c6145a79c1fbcc2a67b64aabe19d60e07d8a4472e590809eac0b0ab` |
| 28 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-self-eq-mul-self-iff--06bd8e91d8d1ee05311aee37.md) | 181 | `result-track:06bd8e91d8d1ee05311aee37268c35cd8193872a2d7b2fc0e7f7df7425e3eff3` |
| 29 | `theorem` | [mul_self_eq_one_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/mul-self-eq-one-iff--7381619118a89b5e94e8ede2.md) | 185 | `result-track:7381619118a89b5e94e8ede26fe20280c9c187b812de29ef697d384320aebdce` |
| 30 | `lemma` | [sq_sub_sq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sq-sub-sq--2991fd6d273f521633857323.md) | 192 | `result-track:2991fd6d273f521633857323c7befa782b11d09303a97ce17f3f62b06a2297a3` |
| 31 | `lemma` | [sub_sq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sub-sq--4584ef9df4cee40f159554b4.md) | 196 | `result-track:4584ef9df4cee40f159554b42782cbdc7929e3acb0611dbe32aa8da26d5d870f` |
| 32 | `lemma` | [sub_sq'](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sub-sq--a7d31a2f79c5c763ac5c93b1.md) | 201 | `result-track:a7d31a2f79c5c763ac5c93b1f105acf1d67c94886f25fd73e2dabbe844b81e1c` |
| 33 | `lemma` | [sub_sq_comm](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sub-sq-comm--5069428a0b4779322e7c39b6.md) | 204 | `result-track:5069428a0b4779322e7c39b6f198b58ca9c7fe8f076dfbf19f469829e7110609` |
| 34 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--877f86db2c98f14e891d8422.md) | 209 | `result-track:877f86db2c98f14e891d8422faf85f9e371d47773f69ca06f49a27d3d34592d1` |
| 35 | `lemma` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--980d9ca9d0cbdcf824d72f02.md) | 212 | `result-track:980d9ca9d0cbdcf824d72f02b9ab774fa45d40338a57ae035b500a92d24acfeb` |
| 36 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--4d7d01d05883fa9368ea9a94.md) | 218 | `result-track:4d7d01d05883fa9368ea9a94cf5d44e5572f966ea2b6ffe7f205a29a56b9e117` |
| 37 | `lemma` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--4ecfe20ac5babd64df9d2cd2.md) | 221 | `result-track:4ecfe20ac5babd64df9d2cd20a6c850a9079015f817067f1054b1ae9480f357d` |
| 38 | `theorem` | [inv_eq_self_iff](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/inv-eq-self-iff--ce8aa1323cb92798cc6080e0.md) | 231 | `result-track:ce8aa1323cb92798cc6080e0f0a49034e7aa396194813a258e7603a26fc08e15` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/instance--382011337285a6daa432d908.md) | 245 | `declaration-track:382011337285a6daa432d90881584f0482249c322010e9e0075e78b2e6727c44` |
| 40 | `theorem` | [lie_def](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/lie-def--94ae7a04f2d0500c6b4c9a71.md) | 247 | `result-track:94ae7a04f2d0500c6b4c9a71a3076e19cfa82992a12c67e92bb6bda94836475d` |
| 41 | `theorem` | [commute_iff_lie_eq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/commute-iff-lie-eq--3cdde44a870578705169d3d1.md) | 251 | `result-track:3cdde44a870578705169d3d1311b7b8abacc068dbf0ac9562a2b4f5412a934bc` |
| 42 | `theorem` | [Commute.lie_eq](../../../../mathematics/Algebra/Commute/Variant3274ef03ba3eaccee1616a017c06c4544d556630aa5afc3ee83296432ab2c316.lean/declarations/commute-lie-eq--feaa9c7f079ffe21ae03e4af.md) | 253 | `result-track:feaa9c7f079ffe21ae03e4afa127b6382bcf1a441c7d0cbe1309c0be1e0f6f4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
