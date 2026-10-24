# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Reduce.Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94e09ac331beb921093f2469e314702fd51fdb07",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94e09ac331beb921093f2469e314702fd51fdb07`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Dedup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sublists` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce--8ec502ebe91b2de34ad0bc1f.md) | 34 | `declaration-track:8ec502ebe91b2de34ad0bc1fc9e30c95fbedba997715a47970a9e3f03824e8f8` |
| 2 | `lemma` | [reduce_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-nil--e85e7b5cf7cd4fab17ba778e.md) | 39 | `result-track:e85e7b5cf7cd4fab17ba778e91caefa1b449df013a2306335c01b9ae76f8639f` |
| 3 | `lemma` | [reduce_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-singleton--b11616a71454215772319595.md) | 40 | `result-track:b11616a71454215772319595823be51f28f251cc4cedc1dac7c403d5852b5394` |
| 4 | `theorem` | [reduce.cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-cons--f10cd6707248101736f42033.md) | 43 | `result-track:f10cd6707248101736f4203339f346657833873aa4b182379902cf2dec9f163d` |
| 5 | `theorem` | [reduce_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-replicate--e58a39c728c77e8ccb892a92.md) | 50 | `result-track:e58a39c728c77e8ccb892a92b311af4010231b7b5fe2f6bc8701d045f244ee88` |
| 6 | `theorem` | [reduce.red](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-red--dec4fd4ef73d12430f7630c8.md) | 64 | `result-track:dec4fd4ef73d12430f7630c81b451bb4ba0e4193dfbcfe77236d8eea27b6dbb4` |
| 7 | `theorem` | [reduce.not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-not--820b7c1915dc6d131d50185b.md) | 87 | `result-track:820b7c1915dc6d131d50185bd91f6f1402d6f44a3788cf37f01e284517f454b4` |
| 8 | `theorem` | [reduce.min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-min--df1a89808d1bf46d2f3061e9.md) | 118 | `result-track:df1a89808d1bf46d2f3061e9f74dc138b9845fafa5e227896f695360cb702272` |
| 9 | `theorem` | [reduce.idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-idem--1828a923575848cff95b05f3.md) | 129 | `result-track:1828a923575848cff95b05f38e5cada401b79c3c58a97cb8c54b86ac0d96d0fc` |
| 10 | `theorem` | [reduce.Step.eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-step-eq--96b983531147877b411e7080.md) | 133 | `result-track:96b983531147877b411e7080a043228581d71618a7dc94c80775324dddb2f52f` |
| 11 | `theorem` | [reduce.eq_of_red](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-eq-of-red--6270b7c8132d05804639b0e4.md) | 139 | `result-track:6270b7c8132d05804639b0e4e1c475a0ea2f4d147153bd9ae7f7a76f9f07f99e` |
| 12 | `theorem` | [Red.reduce_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/red-reduce-right--8ccb0ef1f8febc8b605c6c09.md) | 148 | `result-track:8ccb0ef1f8febc8b605c6c09376e9a4bc4770d5a670feeb52ac4c97643aa3595` |
| 13 | `theorem` | [Red.reduce_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/red-reduce-left--d0ca664e7fb4b93f4e1287d9.md) | 152 | `result-track:d0ca664e7fb4b93f4e1287d950795ec62bda558376342651eb6f2eb0bbe1d926` |
| 14 | `theorem` | [reduce.sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-sound--7e9e04da3cc3bef045ed38a8.md) | 161 | `result-track:7e9e04da3cc3bef045ed38a889af1a0f7a290dfcaebaeafd6c7bc55618144fb5` |
| 15 | `theorem` | [reduce.exact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-exact--aa0730d784b4e4af83b8a445.md) | 169 | `result-track:aa0730d784b4e4af83b8a445069bcc92e43aadfa5c61ee6a6446706bd013289e` |
| 16 | `theorem` | [reduce.self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-self--a78b636f3fef96fc94deac13.md) | 175 | `result-track:a78b636f3fef96fc94deac13475e1f6995eb0f9ca39a43e91bab5d76a54d4a22` |
| 17 | `theorem` | [reduce.rev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-rev--ab95922eb88f027c0331b2fa.md) | 182 | `result-track:ab95922eb88f027c0331b2fa425f236a6fe04942ded75c32eb191486a5c63831` |
| 18 | `def` | [toWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword--392508b7972a6bc95dce04d2.md) | 188 | `declaration-track:392508b7972a6bc95dce04d2ae4e064f9de2a18436ed81c45986a4b81996f9d9` |
| 19 | `theorem` | [mk_toWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/mk-toword--56498c092ba83c2a4be6dddb.md) | 192 | `result-track:56498c092ba83c2a4be6dddbbb160047431ca655280c93df123b323a908b751f` |
| 20 | `theorem` | [toWord_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-injective--24a225619cf287be3eed0a60.md) | 195 | `result-track:24a225619cf287be3eed0a60d84b05f800ad5d147f36e78ad44ab3d55b51028b` |
| 21 | `theorem` | [toWord_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-inj--0dbd7a280b50f3b5c4f4ad6a.md) | 199 | `result-track:0dbd7a280b50f3b5c4f4ad6a3a5567e2625f2b959000c90c41e7cfccd4250770` |
| 22 | `theorem` | [toWord_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-mk--0a8cfd483f2c1d4782b09ed6.md) | 203 | `result-track:0a8cfd483f2c1d4782b09ed6f419b8cf1eaa4755fc42b360a8f4bca53d5eda95` |
| 23 | `theorem` | [toWord_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-of--ff8442802a3434e708c7fd0d.md) | 207 | `result-track:ff8442802a3434e708c7fd0d337216788ed37b68173d4594b4a8068425a9bf61` |
| 24 | `theorem` | [reduce_toWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-toword--db78e398ecf21eba5ce26246.md) | 211 | `result-track:db78e398ecf21eba5ce262467c47467748f13bf383f17b10137bd6d916ca390f` |
| 25 | `theorem` | [toWord_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-one--76012598072a6f5085e33e02.md) | 216 | `result-track:76012598072a6f5085e33e023c7f248f19b8b5249429adbbe71f81f8d384f95e` |
| 26 | `theorem` | [toWord_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-mul--3238813c7be4e47ad50c7846.md) | 220 | `result-track:3238813c7be4e47ad50c784637fec97860f18a49af53a7585daf43c5f91517d5` |
| 27 | `theorem` | [toWord_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-pow--de18fcedf1361f86287b4832.md) | 225 | `result-track:de18fcedf1361f86287b4832e2075ddcc225a013698b1595cb2112f6930e0f4f` |
| 28 | `theorem` | [toWord_of_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-of-pow--36eb20dfbb73592cef14503b.md) | 231 | `result-track:36eb20dfbb73592cef14503b1dad3c52c6297f3d43552579e331c6c3cdf5ee2e` |
| 29 | `theorem` | [toWord_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-eq-nil-iff--d9c43d2414b968a72d32f2c6.md) | 236 | `result-track:d9c43d2414b968a72d32f2c6f519a53daed8f46cb53f43dfb1482bd9ef45505c` |
| 30 | `theorem` | [reduce_invRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-invrev--6c0529d423e825a49f7ca92b.md) | 240 | `result-track:6c0529d423e825a49f7ca92b83194fb97f133764128dd4580e4a463d6fac66eb` |
| 31 | `theorem` | [toWord_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-inv--fc48adf4e671a4e864cbf3f9.md) | 248 | `result-track:fc48adf4e671a4e864cbf3f94f3333b6d6ba87c33e6944190264bf822ee509c3` |
| 32 | `theorem` | [reduce_append_reduce_reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-append-reduce-reduce--d483f9f61c718953572de4c7.md) | 253 | `result-track:d483f9f61c718953572de4c70f9d76fe3ade0d93b30e80a6a11a6736e91233df` |
| 33 | `theorem` | [reduce_cons_reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-cons-reduce--88a8638a7f77ce2f9f5d3ff7.md) | 257 | `result-track:88a8638a7f77ce2f9f5d3ff7062fd1f3cc5ac7ec237348131b91f06fc28565a7` |
| 34 | `theorem` | [reduce_invRev_left_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-invrev-left-cancel--6cde83c8d4691809fbd5b44e.md) | 261 | `result-track:6cde83c8d4691809fbd5b44e27beff3d9241633440d7adc59996aaadc109b266` |
| 35 | `lemma` | [toWord_mul_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/toword-mul-sublist--008ee8ee89cbd3852234dab2.md) | 267 | `result-track:008ee8ee89cbd3852234dab2a1c23080069e329164e28faff71cca3c1b129f2c` |
| 36 | `def` | [reduce.churchRosser](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/reduce-churchrosser--ae5b84e6b7fa60b6c4d60821.md) | 276 | `declaration-track:ae5b84e6b7fa60b6c4d60821e01897a47a94008320abb4e51c09de432af18a04` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/instance--79921f0efdbb496090b28b27.md) | 280 | `declaration-track:79921f0efdbb496090b28b27adcaa40caa443554a7c16f7bde5aa8de11931d0a` |
| 38 | `instance` | [Red.decidableRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/red-decidablerel--842ca891c0302cf1912e2aee.md) | 286 | `declaration-track:842ca891c0302cf1912e2aeeeb32a79a955c602159497316951182b23489b066` |
| 39 | `def` | [Red.enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/red-enum--a3f2e535c9244b007bce7759.md) | 304 | `declaration-track:a3f2e535c9244b007bce77590272e473cafb9c40115b2657d2b671a64b38e35d` |
| 40 | `theorem` | [Red.enum.sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/red-enum-sound--886de6113d6dfaf1147005bb.md) | 307 | `result-track:886de6113d6dfaf1147005bb5a8833524f83a53767f842e652685e834c9708d9` |
| 41 | `theorem` | [Red.enum.complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/red-enum-complete--2077fe181f5effe9a41deab6.md) | 310 | `result-track:2077fe181f5effe9a41deab67693cdad6b23bfc4764a639b69736733386329a4` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/instance--206d6e0320b3182cf76eda7b.md) | 313 | `declaration-track:206d6e0320b3182cf76eda7b7a0d02be808ad482c1c9f7463694f0ce7f831e7a` |
| 43 | `theorem` | [one_ne_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/one-ne-of--b166f82a990d46823758caf0.md) | 321 | `result-track:b166f82a990d46823758caf0e176a1e3381cb637eaf8342ea95b07d8b56147ce` |
| 44 | `theorem` | [of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/of-ne-one--c5be7ad349a160dee7721b2c.md) | 325 | `result-track:c5be7ad349a160dee7721b2c53abc052b373aaf5a86eb13fb6db8cef23e67fde` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/instance--79b8e3d36840cbbfd7dfcb06.md) | 328 | `declaration-track:79b8e3d36840cbbfd7dfcb06a6c035f92fad66b31d18598eef8d6c3b04073af0` |
| 46 | `def` | [norm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm--94a9b3d04c53e225b3687a2e.md) | 337 | `declaration-track:94a9b3d04c53e225b3687a2e2085e7722ff80ec49b0883bb1c950c15a1a8c2dc` |
| 47 | `theorem` | [norm_inv_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-inv-eq--822540f150da06e6fcbf6713.md) | 341 | `result-track:822540f150da06e6fcbf6713c34c13112647773cdfc57f35180c1db0d6781602` |
| 48 | `theorem` | [norm_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-eq-zero--a2a4fe1804fdaa198588959e.md) | 345 | `result-track:a2a4fe1804fdaa198588959efb270d969f32db09b8167963a946f3781a416a2c` |
| 49 | `theorem` | [norm_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-one--c440fcea1e4b6c791a20729a.md) | 349 | `result-track:c440fcea1e4b6c791a20729ae47e7ca72a0959d330bea66daf36af1ad46962db` |
| 50 | `theorem` | [norm_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-of--ae4ae1daba3172886ab73941.md) | 353 | `result-track:ae4ae1daba3172886ab73941e1469fb5d0b5c9946743682eb77800b60a7b0168` |
| 51 | `theorem` | [norm_mk_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-mk-le--b18ecf7deedbe1347309e136.md) | 357 | `result-track:b18ecf7deedbe1347309e13658b9cf80e057ea0d4ae95335d87daba7f9ad810a` |
| 52 | `theorem` | [norm_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-mul-le--7b780b53f7f114a5d648bdef.md) | 361 | `result-track:7b780b53f7f114a5d648bdef693e8e94bc77374fd46659c9cded6ec44c97f85b` |
| 53 | `theorem` | [norm_of_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-of-pow--6f80c148b804898a076d2a98.md) | 368 | `result-track:6f80c148b804898a076d2a985a691cad880a9879cfec5ff80bcb24b55ce618f9` |
| 54 | `theorem` | [norm_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean/declarations/norm-surjective--0e6681e33f3d5ddfb47ea555.md) | 372 | `result-track:0e6681e33f3d5ddfb47ea555b64ed047cf82b58c9f8a9b66d3e94c16652d50c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
