# Verification target: GRWTSK.Algebra.GroupTheory.PGroup.Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef03c5da60a1e0d7f56c1f08d7349ec8a04482a0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef03c5da60a1e0d7f56c1f08d7349ec8a04482a0`.

Source path: `GRWTSK/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPGroup](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/ispgroup--01d004d0405e107bea805fa4.md) | 40 | `declaration-track:01d004d0405e107bea805fa46783adfbe9ce6cf3c02ea4d3552b0dcb65efb1cb` |
| 2 | `theorem` | [iff_orderOf](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/iff-orderof--9befdefeebdcb858d6198cd2.md) | 48 | `result-track:9befdefeebdcb858d6198cd20e75b2b85d24592be56c8dadd021cc806259616b` |
| 3 | `theorem` | [of_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/of-card--c91a87696ba2384028ec9c53.md) | 56 | `result-track:c91a87696ba2384028ec9c53f909ebf815140fb396395b159ece5251a3633350` |
| 4 | `theorem` | [of_bot](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/of-bot--b7c7381013a2cd56321be9f2.md) | 60 | `result-track:b7c7381013a2cd56321be9f25224496c0b0ee614a9cfde98a6c002c2bad1fe97` |
| 5 | `theorem` | [iff_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/iff-card--6ce1d5dde1c413a55e57f324.md) | 64 | `result-track:6ce1d5dde1c413a55e57f324fc5db376d026dfd85ce57a978f3b26c667dfb693` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/of-injective--959999f14b744f79e34b9bce.md) | 82 | `result-track:959999f14b744f79e34b9bce1e39ec994db056b0aa61b0b6d92b4184d3d479a0` |
| 7 | `theorem` | [to_subgroup](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-subgroup--3b17cafdacd7a5c2f2828b05.md) | 88 | `result-track:3b17cafdacd7a5c2f2828b05e6df5af16428cc5e535a86603b08107e7a128322` |
| 8 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/of-surjective--0877ae0fbc1c4ca47edf5dbe.md) | 92 | `result-track:0877ae0fbc1c4ca47edf5dbe221d02f88deaab41b3605bce2233e4a0a3b46986` |
| 9 | `theorem` | [to_quotient](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-quotient--ed5f15c5d1913a5a4c67017f.md) | 98 | `result-track:ed5f15c5d1913a5a4c67017ff3894d25d0e62e72f3b7effaf03701a41ff0423f` |
| 10 | `theorem` | [of_equiv](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/of-equiv--ead450f59e03e04d571309c7.md) | 102 | `result-track:ead450f59e03e04d571309c7005dda1b788c75f0bd5a741b9c7476cedbe9403c` |
| 11 | `theorem` | [orderOf_coprime](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/orderof-coprime--c5350c8d171e82253da7cf4b.md) | 106 | `result-track:c5350c8d171e82253da7cf4b90d9c45d9b38db76af5dc6bd4080c13756721df4` |
| 12 | `def` | [powEquiv](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/powequiv--22434f3f9f6939c99d4de8a8.md) | 112 | `declaration-track:22434f3f9f6939c99d4de8a8a0f64dd642f7b69cb7c63859e392bdb1cceffc0d` |
| 13 | `theorem` | [powEquiv_apply](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/powequiv-apply--582db429f51ce44d398da4da.md) | 126 | `result-track:582db429f51ce44d398da4dab67370c607c9fefea48588bf07c5279cf0e6a12b` |
| 14 | `theorem` | [powEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/powequiv-symm-apply--1af29271b9355f59ffae70c4.md) | 131 | `result-track:1af29271b9355f59ffae70c43f0c0ef20e87e079833a038b045329d50ac2cbf3` |
| 15 | `def` | [powEquiv'](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/powequiv--2ef214e8d9b811e4c071e7f9.md) | 139 | `declaration-track:2ef214e8d9b811e4c071e7f99e9db89cf4d39fe598f9859c6fc43cf96140487e` |
| 16 | `theorem` | [index](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/index--b58b4ec1094f347171ae9e37.md) | 143 | `result-track:b58b4ec1094f347171ae9e37a14c7b7d74ad1e5f0412e34bf69f21455c454574` |
| 17 | `theorem` | [card_eq_or_dvd](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/card-eq-or-dvd--9623490fc0183df1eb8e5e7d.md) | 153 | `result-track:9623490fc0183df1eb8e5e7d057ef94db27598418e6558892750ff8e45348195` |
| 18 | `theorem` | [nontrivial_iff_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/nontrivial-iff-card--81dcce5ff63293ea3af521ca.md) | 164 | `result-track:81dcce5ff63293ea3af521caaf83d7a45dff0955dfb38b85a501267fdcdfe607` |
| 19 | `theorem` | [card_orbit](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/card-orbit--fe04c76d12a245dd72f8ddd5.md) | 178 | `result-track:fe04c76d12a245dd72f8ddd54d0ff8b89a1643e933e14a89b98d948d9c8f02a6` |
| 20 | `theorem` | [card_modEq_card_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/card-modeq-card-fixedpoints--ff1ef46c8bbeb21bf18b3327.md) | 190 | `result-track:ff1ef46c8bbeb21bf18b3327e3c1ce184f6c75779525cf71cd38711fad05067f` |
| 21 | `theorem` | [nonempty_fixed_point_of_prime_not_dvd_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/nonempty-fixed-point-of-prime-not-dvd-card--42d675d4904df19b9b6d1553.md) | 228 | `result-track:42d675d4904df19b9b6d1553e179d68b5d9cd4d953aa32ff69de13713c252bea` |
| 22 | `theorem` | [exists_fixed_point_of_prime_dvd_card_of_fixed_point](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/exists-fixed-point-of-prime-dvd-card-of-fixed-point--f7a45397a46db95e93e910a8.md) | 241 | `result-track:f7a45397a46db95e93e910a8c34bfba1b8ca7989629cedfeb80727763fed706e` |
| 23 | `theorem` | [center_nontrivial](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/center-nontrivial--72ce9d838ff45a8655f04a8b.md) | 253 | `result-track:72ce9d838ff45a8655f04a8b9577797df920be9c7a2bc961037ee089fb4dea1c` |
| 24 | `theorem` | [bot_lt_center](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/bot-lt-center--5b9210ed47859e9ab3b79335.md) | 265 | `result-track:5b9210ed47859e9ab3b7933574a27c6c2db673b0f3671916b5e87514146ab31e` |
| 25 | `theorem` | [to_le](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-le--82a8f7143eb8286b985f01f4.md) | 274 | `result-track:82a8f7143eb8286b985f01f4b2de861456c52e6d3ff34729004483152f3895fe` |
| 26 | `theorem` | [to_inf_left](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-inf-left--a1b5a2e7cc264f32c518d74b.md) | 281 | `result-track:a1b5a2e7cc264f32c518d74b85ccab653165319e1a4f5eb6bec112d51baeb1b5` |
| 27 | `theorem` | [to_inf_right](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-inf-right--98e4d38c259def7c61f98fae.md) | 285 | `result-track:98e4d38c259def7c61f98faea32ecf46d251fa673af4228334d65e161b61c92a` |
| 28 | `theorem` | [map](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/map--2ef0b8d904e50afb8b4390ac.md) | 289 | `result-track:2ef0b8d904e50afb8b4390ac406758b468975a855d477911718f0ff93507c3a3` |
| 29 | `theorem` | [comap_of_ker_isPGroup](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/comap-of-ker-ispgroup--3d77d382ce0ce03edda9520f.md) | 295 | `result-track:3d77d382ce0ce03edda9520fe45c9f4e560277e2eef0b09c3fc851fedff6c618` |
| 30 | `theorem` | [ker_isPGroup_of_injective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/ker-ispgroup-of-injective--fbb824d948aa2752f96470df.md) | 305 | `result-track:fbb824d948aa2752f96470df7365279bf3daf2ab8a67f4790b46f7f075075492` |
| 31 | `theorem` | [comap_of_injective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/comap-of-injective--cbed0264311ff5a6a9760df8.md) | 310 | `result-track:cbed0264311ff5a6a9760df87c7d071da388512034ffdd5193d6e3767c4e12d5` |
| 32 | `theorem` | [comap_subtype](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/comap-subtype--f676f6716d20bb091a38c1ea.md) | 315 | `result-track:f676f6716d20bb091a38c1ea92bd305af209b21b87c3fa9b3184c59b8e8d7bda` |
| 33 | `theorem` | [to_sup_of_normal_right](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-sup-of-normal-right--1efa8f985a66d5b79961bf9a.md) | 320 | `result-track:1efa8f985a66d5b79961bf9aad08aa62d0f5c507935a49e4b026e99949ca9fdc` |
| 34 | `theorem` | [to_sup_of_normal_left](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-sup-of-normal-left--d5d7b78d8329cbd85e6983c7.md) | 327 | `result-track:d5d7b78d8329cbd85e6983c74165ecabed5a8d2ce539aa67800c72b824518fe2` |
| 35 | `theorem` | [to_sup_of_normal_right'](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-sup-of-normal-right--dfd0ae385ca46cd88599f619.md) | 332 | `result-track:dfd0ae385ca46cd88599f619ad49655a514f74f9bfff72b0675868692187be6b` |
| 36 | `theorem` | [to_sup_of_normal_left'](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/to-sup-of-normal-left--3fb0d23b5dfe95124e8eb084.md) | 343 | `result-track:3fb0d23b5dfe95124e8eb084f37e543f3dc6bab5878219c983a5372ae973982b` |
| 37 | `theorem` | [coprime_card_of_ne](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/coprime-card-of-ne--00feab7e0eca4cdf85ff6206.md) | 349 | `result-track:00feab7e0eca4cdf85ff620651f4f6561c41098b9064c2a671ff5bf1b814ae1f` |
| 38 | `theorem` | [disjoint_of_ne](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/disjoint-of-ne--df8c874449a590c4c68c6045.md) | 359 | `result-track:df8c874449a590c4c68c604588bb43b880fd100a8d489f714945bbefff1f9171` |
| 39 | `theorem` | [card_center_eq_prime_pow](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/card-center-eq-prime-pow--29b9376036f6140a81dbe660.md) | 379 | `result-track:29b9376036f6140a81dbe660d1cb45e0169b030e57f40bb209d78b7cd2e93787` |
| 40 | `theorem` | [cyclic_center_quotient_of_card_eq_prime_sq](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/cyclic-center-quotient-of-card-eq-prime-sq--5e8d26a940a1b0feeee1be85.md) | 388 | `result-track:5e8d26a940a1b0feeee1be85493c79f712e23c09195fcfff949540a0d1bb3e11` |
| 41 | `def` | [commGroupOfCardEqPrimeSq](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/commgroupofcardeqprimesq--fd6cccb809666a113005d11d.md) | 406 | `declaration-track:fd6cccb809666a113005d11dd61aafb12995c60c9d49b65e859016e785d607c7` |
| 42 | `theorem` | [commutative_of_card_eq_prime_sq](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/declarations/commutative-of-card-eq-prime-sq--d5a90d8e1bbec22351e2719b.md) | 413 | `result-track:d5a90d8e1bbec22351e2719ba56f76d7bad8b98e3c574feb5091cc1bf5464836` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
