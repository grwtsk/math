# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ff2571293b1f38ca4b8cfadcc5454f52958fe6",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ff2571293b1f38ca4b8cfadcc5454f52958fe6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Monoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Ordinal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Numeric](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric--8b4b2a56540d6faa2952dc4b.md) | 75 | `declaration-track:8b4b2a56540d6faa2952dc4b4f93a88b343980f846a76271cd3de6913a01426a` |
| 2 | `theorem` | [numeric_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-def--6bb4e7ed3852354196bbac6d.md) | 79 | `result-track:6bb4e7ed3852354196bbac6d69208a4cfec4c7ee6ce90e96c60d1f664036e386` |
| 3 | `theorem` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/mk--64ff9cfda76173ccddff04d5.md) | 88 | `result-track:64ff9cfda76173ccddff04d5d92ce61af1de8bc6daa8a1e72915c1425504a05e` |
| 4 | `theorem` | [left_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/left-lt-right--31b48808fe6fadf054701dfa.md) | 93 | `result-track:31b48808fe6fadf054701dfa5676e161d87636eff6b49ba12699d20fa5bb15f4` |
| 5 | `theorem` | [moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/moveleft--d19fe690e4e1ac9d1565abef.md) | 97 | `result-track:d19fe690e4e1ac9d1565abefbe529092a54e54f602299192466401bb4867fb17` |
| 6 | `theorem` | [moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/moveright--acead78aced08f79d859ff4d.md) | 101 | `result-track:acead78aced08f79d859ff4d104715be34e09b25db242970cc01a54b52f06f52` |
| 7 | `theorem` | [numeric_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-rec--181744b8d4023445b1bf3307.md) | 108 | `result-track:181744b8d4023445b1bf33072da87fd1825dbccab90d32c43c13a503441cfe12` |
| 8 | `theorem` | [Relabelling.numeric_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/relabelling-numeric-imp--f14e778f0d3913c6c5bf1b9c.md) | 117 | `result-track:f14e778f0d3913c6c5bf1b9c45c4c8a1577cab0e46ad3ee371c45035e83da5c5` |
| 9 | `theorem` | [Relabelling.numeric_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/relabelling-numeric-congr--de575ba2512704501828c724.md) | 127 | `result-track:de575ba2512704501828c724197b6b067175fa557024e5fb7118fa6cf3e90125` |
| 10 | `theorem` | [lf_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lf-asymm--e51c269321d34aa35415ddf5.md) | 131 | `result-track:e51c269321d34aa35415ddf5408be9ad3eea23fc12753312014e22040cea74cf` |
| 11 | `theorem` | [le_of_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/le-of-lf--cbb2fac44354593e40aaa7d1.md) | 142 | `result-track:cbb2fac44354593e40aaa7d1ace43e85d94626f85c95c72079ccb14ac64c971e` |
| 12 | `theorem` | [lt_of_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lt-of-lf--2d8085c9114ce46666af47dc.md) | 149 | `result-track:2d8085c9114ce46666af47dc3b079bbb3e71993ca5b905dc6e2cf6c85460f7af` |
| 13 | `theorem` | [lf_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lf-iff-lt--d41e487d2b949cff0b6f2fb7.md) | 156 | `result-track:d41e487d2b949cff0b6f2fb7a5b62d3790d9bec90e667b4f362c90bf4863f92b` |
| 14 | `theorem` | [le_iff_forall_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/le-iff-forall-lt--d14517b3ff48f64d8a407e2f.md) | 161 | `result-track:d14517b3ff48f64d8a407e2f1bb1a792a3f95653e0c6895dcbe06539e66b7722` |
| 15 | `theorem` | [lt_iff_exists_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lt-iff-exists-le--c198d21032e8e77fb66a8aa5.md) | 169 | `result-track:c198d21032e8e77fb66a8aa512f6129cf3d9159a163819da87ca8ee8d265d0b6` |
| 16 | `theorem` | [lt_of_exists_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lt-of-exists-le--e1ad657e3ae7a19cba0b73aa.md) | 174 | `result-track:e1ad657e3ae7a19cba0b73aaeebb28e88f9a636feef46b4ba0b58b6e763b8b79` |
| 17 | `theorem` | [lt_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lt-def--e5dea82d9789cbf00e640529.md) | 180 | `result-track:e5dea82d9789cbf00e640529a287806a6d81820d815964a8c9def21841d08018` |
| 18 | `theorem` | [not_fuzzy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/not-fuzzy--c246f650c2db5b7d97cc71e4.md) | 190 | `result-track:c246f650c2db5b7d97cc71e474288552fbd0ee711d797a0f83801f2b92e1c8c0` |
| 19 | `theorem` | [lt_or_equiv_or_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lt-or-equiv-or-gt--1148d9fa4a41fe9ddd2567d7.md) | 194 | `result-track:1148d9fa4a41fe9ddd2567d7065182784ad45dd2c4fbf61f316f3b583f24263f` |
| 20 | `theorem` | [numeric_of_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-of-isempty--4c78579980e10417e0a6b3dc.md) | 199 | `result-track:4c78579980e10417e0a6b3dc7391681694bd06ecb5f49be23686d3e9f93f9788` |
| 21 | `theorem` | [numeric_of_isEmpty_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-of-isempty-leftmoves--ca3db2e33039b7d3fbf04caa.md) | 203 | `result-track:ca3db2e33039b7d3fbf04caadd0578f6b399254084906250b0ad80221e5d8a96` |
| 22 | `theorem` | [numeric_of_isEmpty_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-of-isempty-rightmoves--5f47dfb64aed0ff4a7d09e05.md) | 208 | `result-track:5f47dfb64aed0ff4a7d09e051546d50b45c3f6ac566a98f7186c42a92022bf20` |
| 23 | `theorem` | [numeric_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-zero--fd0be4a113a2fc4e5a00ff7c.md) | 213 | `result-track:fd0be4a113a2fc4e5a00ff7c3e3c998134aa2dd3214cdde8cf6ede937f142879` |
| 24 | `theorem` | [numeric_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-one--6df8ce269aac3593e28fdd32.md) | 217 | `result-track:6df8ce269aac3593e28fdd32c6d344e474a12fb9bf131f0529bb5348ce0aa16d` |
| 25 | `theorem` | [Numeric.neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-neg--caf97c7b41f9d09405ca7aa2.md) | 221 | `result-track:caf97c7b41f9d09405ca7aa2c3452bf3fb3f832ca03ffd2286e217caafeb7107` |
| 26 | `theorem` | [moveLeft_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/moveleft-lt--52983138b8ed1c5f6a0fdbb4.md) | 228 | `result-track:52983138b8ed1c5f6a0fdbb4ea6a58fe2087ba45df152c444d7ef4f8fb8c94fc` |
| 27 | `theorem` | [moveLeft_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/moveleft-le--a7ef2a8434d95edad2cff3f6.md) | 232 | `result-track:a7ef2a8434d95edad2cff3f60f11b70132b167396fafb651ba9732978c16223d` |
| 28 | `theorem` | [lt_moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lt-moveright--9b25ee3e6cd573a73243b687.md) | 236 | `result-track:9b25ee3e6cd573a73243b687272a0394e25ea11164f27485cd2a6e282ef8fad8` |
| 29 | `theorem` | [le_moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/le-moveright--0f55985a0f4e12765787bfc0.md) | 240 | `result-track:0f55985a0f4e12765787bfc0f45c6c1fb17bf5b24824403af5a06bebab51310d` |
| 30 | `theorem` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/add--3e6d653ee532b1ba9afdebb7.md) | 244 | `result-track:3e6d653ee532b1ba9afdebb781919e55d6ab296248d80a9187143a1508df4530` |
| 31 | `theorem` | [sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/sub--27d2c0f350e83c959d73249a.md) | 265 | `result-track:27d2c0f350e83c959d73249a1a22cefe8df1629b326abf0ae45441573bbbd84e` |
| 32 | `theorem` | [numeric_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-nat--5ec08042eab28f000abb30c6.md) | 272 | `result-track:5ec08042eab28f000abb30c689d1d360255b5a6b29ac9375a7a219560dfa8305` |
| 33 | `theorem` | [numeric_toPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/numeric-topgame--f4acef67e9c69d4f295eae1c.md) | 278 | `result-track:f4acef67e9c69d4f295eae1c44289ddfbbccf21fb9ba36c5639e595e16f842dc` |
| 34 | `def` | [Surreal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/surreal--3c59daadf84c84f11f6ae875.md) | 293 | `declaration-track:3c59daadf84c84f11f6ae87522d2f51164fb7c2616045f20325f87b6ef380405` |
| 35 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/mk--709ed0bf0cb8716e1f9d7cd4.md) | 300 | `declaration-track:709ed0bf0cb8716e1f9d7cd484d26ba83a4441bd51bdaab774aec10568009371` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instance--4e8416ee5512217521fcd1ae.md) | 304 | `declaration-track:4e8416ee5512217521fcd1aeca88e4d9b8873c082c41d73196a6767526be8e93` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instance--4d9333538c06eb4b2dbc72a5.md) | 307 | `declaration-track:4d9333538c06eb4b2dbc72a5ec9a5fb5f3a2cf7909f2f2ab80b947e6204563e4` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instance--16124e8649aaef5b2ea9223c.md) | 310 | `declaration-track:16124e8649aaef5b2ea9223c76b7be0c72399ecc3de3062ee5e87f687c2e67c5` |
| 39 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lift--3f7bfc85dcaebb1600972a9b.md) | 314 | `declaration-track:3f7bfc85dcaebb1600972a9b30e7daba08acf84d422ba089c5405c5de54c181c` |
| 40 | `def` | [lift₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/lift--c60d110d5ce27fd259b5816b.md) | 320 | `declaration-track:c60d110d5ce27fd259b5816b9d701a5417669aa207fa648618005b10aa0c4979` |
| 41 | `instance` | [instLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instle--8bae7295dc9722618892039d.md) | 329 | `declaration-track:8bae7295dc9722618892039dc29fc8396ee88cc87f1c48f529e34de0aece6c1f` |
| 42 | `instance` | [instLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instlt--450ceef703ebd0098a7b6c27.md) | 333 | `declaration-track:450ceef703ebd0098a7b6c27d0d29b5235ba2b9226dce1f18c0b16529b6811f3` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instance--4ac42113cd4eb2cf6e072cdc.md) | 339 | `declaration-track:4ac42113cd4eb2cf6e072cdc37d9533427190923fb614b68b4551b0fbe3d76f9` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instance--a9770562deaac10feb5fecab.md) | 345 | `declaration-track:a9770562deaac10feb5fecab8e8e1f26969eacf64222f4583d1793322440ed9f` |
| 45 | `instance` | [orderedAddCommGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/orderedaddcommgroup--fa4aeb919721f6d13eff397f.md) | 348 | `declaration-track:fa4aeb919721f6d13eff397f220e5fe8f410271ebb7355e3659b50518118df02` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instance--24edd18884e9de5081c7e739.md) | 365 | `declaration-track:24edd18884e9de5081c7e739ba650e00e5281d41cad4e45552f1442975c15076` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/instance--2fb093b3dcd148b61993b758.md) | 372 | `declaration-track:2fb093b3dcd148b61993b758b67f0b53e2e7921ffec1edeb9660d8ce75aefe90` |
| 48 | `def` | [toGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/togame--2bcb31dee6e09dd9be0fe2c1.md) | 376 | `declaration-track:2bcb31dee6e09dd9be0fe2c1bf8a3acbefb3c5ecc26601248160596209a0a6b1` |
| 49 | `theorem` | [zero_toGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/zero-togame--b146492c0383984680edf183.md) | 383 | `result-track:b146492c0383984680edf183c0fce14c0f2f242f4777b4345327910a2ffdd1b1` |
| 50 | `theorem` | [one_toGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/one-togame--61b06c03ed8f9e93310ad8f6.md) | 388 | `result-track:61b06c03ed8f9e93310ad8f6f1808fae923037815a4a952fc41ca5c06890820c` |
| 51 | `theorem` | [nat_toGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/nat-togame--0cb1c51809886e387f95857c.md) | 393 | `result-track:0cb1c51809886e387f95857c5b89b7c4e53c827b3fc54f4e355a09913d92d150` |
| 52 | `def` | [toSurreal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/declarations/tosurreal--eda69f606eed30a160643421.md) | 404 | `declaration-track:eda69f606eed30a16064342129d8ea7d3ec12e6cb9dbca19ae0ac240788eab3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
