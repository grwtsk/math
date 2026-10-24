# Verification target: GRWTSK.Algebra.UniversalAlgebra.Cast.Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "739d5f84b3c7f128e9c2edd8500de5ccef4a4088",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `739d5f84b3c7f128e9c2edd8500de5ccef4a4088`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-mono--52b4dc5a7d8fed584a52f6b9.md) | 33 | `result-track:52b4dc5a7d8fed584a52f6b9ddde9cff545562aa2af44aed79c7fc2cd76fa78c` |
| 2 | `lemma` | [GCongr.intCast_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/gcongr-intcast-mono--573984aafd1fc0b005d21994.md) | 40 | `result-track:573984aafd1fc0b005d21994b0f4e9ef2f315686ca49f507fc48c81a8cf34b9c` |
| 3 | `lemma` | [cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-nonneg--3eae10d6d6a0f33bfeba0b0e.md) | 44 | `result-track:3eae10d6d6a0f33bfeba0b0e510e2bd97553ea825ec293b72498752e388f38f4` |
| 4 | `lemma` | [cast_le](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-le--9f36e918af1dbc3bac655640.md) | 50 | `result-track:9f36e918af1dbc3bac65564047034c9e1d1c5b85c431d28f7ebacf363547bef0` |
| 5 | `lemma` | [cast_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-strictmono--4a561b33024e88775dc7239e.md) | 53 | `result-track:4a561b33024e88775dc7239ef4c2ef89eab4020fcc8eacffb0d6c54702b442f6` |
| 6 | `lemma` | [cast_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-lt--f2ce3b32947bca9da2812fd4.md) | 56 | `result-track:f2ce3b32947bca9da2812fd47878dbc44014dfa074b6e3ede99b3f2cd228b2f9` |
| 7 | `lemma` | [cast_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-nonpos--f1db9d318f9ca6779d507312.md) | 60 | `result-track:f1db9d318f9ca6779d507312feb85067a47f6c63500210e7023646cc0479e17f` |
| 8 | `lemma` | [cast_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-pos--e31f89517eff63cd98bc44c4.md) | 62 | `result-track:e31f89517eff63cd98bc44c42d4840eb3d227ac0115e0bba7383a51e7ce99de5` |
| 9 | `lemma` | [cast_lt_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-lt-zero--59a5c81e364c72241cbc03fd.md) | 64 | `result-track:59a5c81e364c72241cbc03fd1e8840192a785b0967454c3a06e02e785817f0f3` |
| 10 | `lemma` | [cast_min](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-min--22ea27c3d0b57f42632272e4.md) | 72 | `result-track:22ea27c3d0b57f42632272e47c73cb982b4b9d139149d4b5d295da5d9ee6e455` |
| 11 | `lemma` | [cast_max](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-max--a8a44719af969e7eed1e6cb6.md) | 75 | `result-track:a8a44719af969e7eed1e6cb6521c7d8a7168fd40066f34d5d17d263d725ae61c` |
| 12 | `lemma` | [cast_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-abs--073b29171bbd981ab4d2cfb7.md) | 78 | `result-track:073b29171bbd981ab4d2cfb7bae9b9b2db02bc0f69a5cbbc087e1710fc42e5fb` |
| 13 | `lemma` | [cast_one_le_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-one-le-of-pos--1b5da267320d65101bed0133.md) | 80 | `result-track:1b5da267320d65101bed01338d95a26fe1ecbe5f6e4968a4b7b32d1bf9444a53` |
| 14 | `lemma` | [cast_le_neg_one_of_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-le-neg-one-of-neg--786b1251af124eb1b6be9ff1.md) | 82 | `result-track:786b1251af124eb1b6be9ff1bcf2947d077c06f8544ddb934460f28548e9a02e` |
| 15 | `lemma` | [cast_le_neg_one_or_one_le_cast_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-le-neg-one-or-one-le-cast-of-ne-zero--c4cd597e7cdfab269f0c8322.md) | 87 | `result-track:c4cd597e7cdfab269f0c8322be2449539942977d8b1d3fb1bfc436e118efbe50` |
| 16 | `lemma` | [nneg_mul_add_sq_of_abs_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/nneg-mul-add-sq-of-abs-le-one--d9cd8006b3856d7f7d0da219.md) | 90 | `result-track:d9cd8006b3856d7f7d0da219f9b468689d92b312ff681b3b68a67930ad916900` |
| 17 | `lemma` | [cast_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/cast-natabs--59368a30c2aa8b76ae61007e.md) | 105 | `result-track:59368a30c2aa8b76ae61007ee630222e01e156f0663d5d25519c9256a42d81bc` |
| 18 | `instance` | [instIntCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/instintcast--f727bb654e59fedd76c1f99d.md) | 119 | `declaration-track:f727bb654e59fedd76c1f99dcbde5f46e54c051f474b1870beaa303d07dcd79e` |
| 19 | `instance` | [instAddGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/instaddgroupwithone--57d8505a3216b467b3dadd74.md) | 120 | `declaration-track:57d8505a3216b467b3dadd7470a2e95122e7728c61b910cbf79415423648ee80` |
| 20 | `instance` | [instAddCommGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/instaddcommgroupwithone--5276b73f454c59f46cd52244.md) | 121 | `declaration-track:5276b73f454c59f46cd52244588b37e85f602d1d49bf76c0b7d3ccdc017b5b65` |
| 21 | `lemma` | [toDual_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/todual-intcast--38dd76c769a80c4e370a0351.md) | 125 | `result-track:38dd76c769a80c4e370a03516b03ed2576faac1fe4ef0385901ce8ae26414430` |
| 22 | `lemma` | [ofDual_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/ofdual-intcast--af70de4f5cf43c4849485d7c.md) | 127 | `result-track:af70de4f5cf43c4849485d7c4bb8d08b825dce9a5671896b1e3082e4e37930a8` |
| 23 | `instance` | [instIntCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/instintcast--fa0a8ffecca72417b9e54b4c.md) | 133 | `declaration-track:fa0a8ffecca72417b9e54b4cf0554310737f1b7afbb80239e8d01fbf352b40df` |
| 24 | `instance` | [instAddGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/instaddgroupwithone--cdcdc28bec69cc29de413364.md) | 134 | `declaration-track:cdcdc28bec69cc29de413364d6a21a383ed4519b9ebbedbc52227906d4ff964b` |
| 25 | `instance` | [instAddCommGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/instaddcommgroupwithone--4dde3a7279bf39b0d4484a3c.md) | 135 | `declaration-track:4dde3a7279bf39b0d4484a3c1364acc072bb7d6c8f7279ccde86d9ca78bcdbe0` |
| 26 | `lemma` | [toLex_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/tolex-intcast--e324af5d5822bc7de6a3ba6a.md) | 139 | `result-track:e324af5d5822bc7de6a3ba6aa55b349a117e418cc6040ea12ab2b777403bdf8b` |
| 27 | `lemma` | [ofLex_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant16d52de175c443f403c1b563101275f06d67fb3c91cc66cee06dc085c6eabb59.lean/declarations/oflex-intcast--b53d267744f44e32c95ee29b.md) | 141 | `result-track:b53d267744f44e32c95ee29bbb30cdcc96f795b0d2b6aeeef8f4abb6d56516fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
