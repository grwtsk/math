# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8a7feee81b0a65091710388b0ad2bc4d890f2c2",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8a7feee81b0a65091710388b0ad2bc4d890f2c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Determinant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Dual` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank--ccc72fae5dcad1ac27af1265.md) | 50 | `declaration-track:ccc72fae5dcad1ac27af126595bcab1e47f169c050a479da7fc91a3c3e7fabe5` |
| 2 | `lemma` | [cRank_toNat_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-tonat-eq-finrank--6a36e4a39f58dbcf2113c5d7.md) | 52 | `result-track:6a36e4a39f58dbcf2113c5d7c419a838f97888db7b224a81fd3ded0d1ae8f3e1` |
| 3 | `lemma` | [lift_cRank_submatrix_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/lift-crank-submatrix-le--6188e528cb2bb2f80e1e216c.md) | 55 | `result-track:6188e528cb2bb2f80e1e216c82fed6c574eec2a12bbd532d277aba38a8fd1dc3` |
| 4 | `lemma` | [cRank_submatrix_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-submatrix-le--e338e21260ab7cdfc065ee7a.md) | 70 | `result-track:e338e21260ab7cdfc065ee7aaba4f6d5baaae1a46e5c8ca29bbca4eb5f6159a6` |
| 5 | `lemma` | [cRank_le_card_height](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-le-card-height--a19a8d51f9116ed9f62c900b.md) | 74 | `result-track:a19a8d51f9116ed9f62c900b79ecdfdcca9bcb156d6ac07658dd4e13665f8cd6` |
| 6 | `lemma` | [cRank_le_card_width](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-le-card-width--fcf5b034aab01e52749a8898.md) | 78 | `result-track:fcf5b034aab01e52749a88983ed6bebfc626f87b7e14050cc564dd8e9fb26907` |
| 7 | `def` | [eRank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank--6310663c3c102114c60a8f2a.md) | 83 | `declaration-track:6310663c3c102114c60a8f2a75163a9dcbec8c54a8fa87fab971ec8a1683e2e3` |
| 8 | `lemma` | [eRank_toNat_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-tonat-eq-finrank--dfba92c1d156eed47d356cbe.md) | 85 | `result-track:dfba92c1d156eed47d356cbe8e25ff2926521e8a2e810f718e799277d63a970a` |
| 9 | `lemma` | [eRank_submatrix_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-submatrix-le--e41f332f85693d45ae57232a.md) | 89 | `result-track:e41f332f85693d45ae57232a1d4015ff705fbfb2155bc92fe6149507100a0f97` |
| 10 | `lemma` | [eRank_le_card_width](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-le-card-width--178bdff33bcf9d1513b55a12.md) | 93 | `result-track:178bdff33bcf9d1513b55a12ee7a399bc20d4780d8a712a5cd46792591a705fc` |
| 11 | `lemma` | [eRank_le_card_height](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-le-card-height--fb4d2a488a585a3262688491.md) | 100 | `result-track:fb4d2a488a585a32626884914e0ffbf3be7a955c3e4a9ea2458a7b2916facd0b` |
| 12 | `def` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank--60397a55087a74ed1eca9be1.md) | 117 | `declaration-track:60397a55087a74ed1eca9be1601b8eeb86a28da72684906d88a28cd82ebdeafd` |
| 13 | `theorem` | [cRank_one](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-one--a145d52df462a527e767bad7.md) | 121 | `result-track:a145d52df462a527e767bad7030856fe0486b1a3d69278ef4c5854603963dcb3` |
| 14 | `theorem` | [eRank_one](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-one--6e22bdf3d2c212201e62841e.md) | 129 | `result-track:6e22bdf3d2c212201e62841ead9439661d28c5a12d5f152487148a660f763003` |
| 15 | `theorem` | [rank_one](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-one--e49ded75adceceecd23ca51b.md) | 134 | `result-track:e49ded75adceceecd23ca51bee22fcb78f5c7319efeb081167030436c44ee705` |
| 16 | `theorem` | [rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-zero--8980fa1bcf272c7a63428036.md) | 139 | `result-track:8980fa1bcf272c7a63428036c598d3f7209711400c79b19c1310f870d9fda55e` |
| 17 | `theorem` | [cRank_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-zero--134c85fefed8a19242033191.md) | 143 | `result-track:134c85fefed8a192420331915834dea3786b46483355c409d04015eca261b391` |
| 18 | `theorem` | [eRank_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-zero--2d211b2201ccf1d85ec1410b.md) | 149 | `result-track:2d211b2201ccf1d85ec1410b74a42ff443b2bdf88168a594243377381e1ad5de` |
| 19 | `theorem` | [rank_le_card_width](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-le-card-width--51a50056bb5167e785cff9de.md) | 152 | `result-track:51a50056bb5167e785cff9de1203e1ac2f5e1a6766db9237296b8119ba68817e` |
| 20 | `theorem` | [rank_le_width](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-le-width--c809e90888eb04e78f36efcf.md) | 158 | `result-track:c809e90888eb04e78f36efcfc1389de77f79d406de6ee94483afb3ffeb540e14` |
| 21 | `theorem` | [rank_mul_le_left](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-mul-le-left--d59c6195cc445859b6e635df.md) | 162 | `result-track:d59c6195cc445859b6e635df440c6ab6588d989f9620a5c047acc4ed95e5c001` |
| 22 | `theorem` | [rank_mul_le_right](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-mul-le-right--b98d153a853efdb937939e09.md) | 167 | `result-track:b98d153a853efdb937939e09c15aa82bc463538b10b2dfa015b03f759cddab24` |
| 23 | `theorem` | [rank_mul_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-mul-le--2a36de43de80b677448ee281.md) | 173 | `result-track:2a36de43de80b677448ee2811a2e39b98bdbc67427cefb54cc8e3703fd413909` |
| 24 | `theorem` | [rank_unit](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-unit--986c992a652c5baa99007bfe.md) | 177 | `result-track:986c992a652c5baa99007bfe93570ea347e188b3ebcd7202ddf8efec12a68a50` |
| 25 | `theorem` | [rank_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-of-isunit--04e977a228b87cf4871187ec.md) | 183 | `result-track:04e977a228b87cf4871187ec8136aa22cdff25cad0ad39eaf7011448cf959de9` |
| 26 | `lemma` | [rank_mul_eq_left_of_isUnit_det](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-mul-eq-left-of-isunit-det--bab47e0cfbe77d25d3e99a3c.md) | 190 | `result-track:bab47e0cfbe77d25d3e99a3ce90785a11f6145d526f2cc5fb14b0c008358f456` |
| 27 | `lemma` | [rank_mul_eq_right_of_isUnit_det](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-mul-eq-right-of-isunit-det--b38efc4a04c4e1a256748c2a.md) | 201 | `result-track:b38efc4a04c4e1a256748c2a1836a7ed2d4757aada82b674c8fff42997aa02f8` |
| 28 | `theorem` | [rank_submatrix_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-submatrix-le--a7aeaab5e0e7141650cafcad.md) | 211 | `result-track:a7aeaab5e0e7141650cafcad00d762a45d6bf7b9ba5a515ae6f4d713707fe33b` |
| 29 | `theorem` | [rank_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-reindex--ed65ee3eff0f9e9441363326.md) | 218 | `result-track:ed65ee3eff0f9e9441363326c65dee696739743e3c77eefc11f3e7e86c3dfae8` |
| 30 | `theorem` | [rank_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-submatrix--0e2a9747e5113ee0446fbb4a.md) | 224 | `result-track:0e2a9747e5113ee0446fbb4aea895991d596490a8f43efcefdaa735ba633311e` |
| 31 | `theorem` | [lift_cRank_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/lift-crank-submatrix--2e8339f17dcfa101408f0564.md) | 229 | `result-track:2e8339f17dcfa101408f056478de507dc0b7c0d017114d7de7413eacf9ee3297` |
| 32 | `theorem` | [cRank_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-submatrix--1d757b4fe21cfa1b36bfbeb8.md) | 236 | `result-track:1d757b4fe21cfa1b36bfbeb88c6a7b5286a2c38a50f8355270ec1775624093a7` |
| 33 | `theorem` | [lift_cRank_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/lift-crank-reindex--5fe317a51fbf84a04fce80af.md) | 240 | `result-track:5fe317a51fbf84a04fce80afa59e4afcdf87056894a26cc49dce43aa06071579` |
| 34 | `theorem` | [cRank_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-reindex--764a09763edf61c4eafac61a.md) | 245 | `result-track:764a09763edf61c4eafac61a70e5165c3ab923bfe6f248fc78e337050384e805` |
| 35 | `theorem` | [eRank_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-submatrix--d060e4a33242b2f055584bbb.md) | 250 | `result-track:d060e4a33242b2f055584bbbc227a52f7d841bb7bd5b782c74e2cd17043a2791` |
| 36 | `theorem` | [eRank_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-reindex--ade95ce6b9c5488ea185303e.md) | 254 | `result-track:ade95ce6b9c5488ea185303e0689c49889471242664079a8a53fbeaeaa1bcc9a` |
| 37 | `theorem` | [rank_eq_finrank_range_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-eq-finrank-range-tolin--26adcac5d261990ded1cf400.md) | 258 | `result-track:26adcac5d261990ded1cf4007b6c9ccd3c3078238faadaee1a0172955b84e22f` |
| 38 | `theorem` | [rank_le_card_height](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-le-card-height--2db65e9f298958b4e1206982.md) | 280 | `result-track:2db65e9f298958b4e120698227168b48507e797b487b454500888f27b9f4422a` |
| 39 | `theorem` | [rank_le_height](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-le-height--7c07173767a4d6f06f0f9982.md) | 286 | `result-track:7c07173767a4d6f06f0f9982574089f1fcba15f807b51eb6d3a692c330a0872a` |
| 40 | `theorem` | [rank_eq_finrank_span_cols](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-eq-finrank-span-cols--2c4a0a256273b8b1a4948d37.md) | 291 | `result-track:2c4a0a256273b8b1a4948d377c9bd5693f39023804f704092e7bbc9c303381be` |
| 41 | `theorem` | [cRank_toNat_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-tonat-eq-rank--a53fba12912bc9eef2d74b35.md) | 295 | `result-track:a53fba12912bc9eef2d74b3529ea9345b9c738268f97c7c533103d9842c1c34e` |
| 42 | `theorem` | [eRank_toNat_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-tonat-eq-rank--bc5c45f60abd40c384534fda.md) | 299 | `result-track:bc5c45f60abd40c384534fda21b657ed4bd24f793bedf142393ac38d3de37cf7` |
| 43 | `theorem` | [rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-diagonal--d6f1c76fb3710176d9b79d1d.md) | 309 | `result-track:d6f1c76fb3710176d9b79d1d59adccb881fcdc3bc9c791ba1379aed0bafb8e78` |
| 44 | `theorem` | [cRank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/crank-diagonal--4629b309aacf3a2b129d54f3.md) | 314 | `result-track:4629b309aacf3a2b129d54f3a61a3c4210dc20a9e40bd7da4d5d6832a9badb85` |
| 45 | `theorem` | [eRank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/erank-diagonal--9195f6431189871be59bdd67.md) | 332 | `result-track:9195f6431189871be59bdd67e7b370b39bb5c3f863451e8f8867394c73ad44cb` |
| 46 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/ker-mulveclin-conjtranspose-mul-self--b9a79748072a2e8dda636b89.md) | 356 | `result-track:b9a79748072a2e8dda636b893e3bde1b21bcb1422c8e5b5e6ab1990efcced6d2` |
| 47 | `theorem` | [rank_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-conjtranspose-mul-self--9cf97dbb414fe95402966938.md) | 361 | `result-track:9cf97dbb414fe95402966938066de2ec2dca73186ea14f0ac8be03bb33485fdf` |
| 48 | `theorem` | [rank_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-conjtranspose--bcabd2e814453d03e3175339.md) | 373 | `result-track:bcabd2e814453d03e31753395412b2f218177eebccce1c502c2408bc9d69153d` |
| 49 | `theorem` | [rank_self_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-self-mul-conjtranspose--96b5de0a4925436cb9b33178.md) | 380 | `result-track:96b5de0a4925436cb9b3317871b9aab1019be17f1bc5dce6ed1eff049904ef07` |
| 50 | `theorem` | [ker_mulVecLin_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/ker-mulveclin-transpose-mul-self--1d54cf76e9ced27dfa1c305c.md) | 390 | `result-track:1d54cf76e9ced27dfa1c305c60e40f27b15b057b46542c7d8b60daa8b9eb13c4` |
| 51 | `theorem` | [rank_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-transpose-mul-self--817a9501257400d27e818e39.md) | 401 | `result-track:817a9501257400d27e818e393bb3f79bf7ba1ea105dbbb802c9e098d53b6a312` |
| 52 | `theorem` | [rank_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-transpose--c5a4120a2a978102e240cc93.md) | 413 | `result-track:c5a4120a2a978102e240cc93c7eac08fd2cf331fd52d56178b47c02b720071e7` |
| 53 | `theorem` | [rank_self_mul_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-self-mul-transpose--2a4119af5b27bce018339f89.md) | 420 | `result-track:2a4119af5b27bce018339f89ca681495efd95d37b86753d99618ab4074d2a029` |
| 54 | `theorem` | [rank_eq_finrank_span_row](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-eq-finrank-span-row--4394267f33e6bb6ea7a51e89.md) | 426 | `result-track:4394267f33e6bb6ea7a51e89c76c4be194eea10485b4b9c42511bcc10c1a726d` |
| 55 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.CRank.Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.LinearIndependent.rank_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/root-grwtsk-algebra-linearalgebra-crank-variant1cc6559d18d181a9b16cab71b--81c974bcb2e23427dc5213fc.md) | 431 | `result-track:81c974bcb2e23427dc5213fcf3a6396a9ec416d6b559a0e25dd91fdb0f556715` |
| 56 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/declarations/rank-add-rank-le-card-of-mul-eq-zero--bea3db7953058ecf69c74a99.md) | 435 | `result-track:bea3db7953058ecf69c74a9992041b1859c87bf26fad2fbde2074458ccae889f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
