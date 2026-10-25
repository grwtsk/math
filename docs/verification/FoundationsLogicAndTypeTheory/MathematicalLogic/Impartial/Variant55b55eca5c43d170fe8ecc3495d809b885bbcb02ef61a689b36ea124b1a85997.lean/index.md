# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Impartial.Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cd67a47880149ca91b45925655102f19815815b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cd67a47880149ca91b45925655102f19815815b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NthRewrite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ImpartialAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartialaux--992bca3db33155f8593c6b7e.md) | 36 | `declaration-track:992bca3db33155f8593c6b7efd5972e4adf9a8a3d3d5d948bfc3abcfc42d91c2` |
| 2 | `class` | [Impartial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial--73116d10cdf828e3e1b15807.md) | 48 | `declaration-track:73116d10cdf828e3e1b15807f4604e9f76aed759b009da07812d52620b8288da` |
| 3 | `theorem` | [impartial_iff_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial-iff-aux--8cae35d59077a7c263207bbd.md) | 51 | `result-track:8cae35d59077a7c263207bbdf49b569ebe898d236702b3a8d1b5fb4e0c512860` |
| 4 | `theorem` | [impartial_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial-def--2fc97d997b6e61308064e024.md) | 54 | `result-track:2fc97d997b6e61308064e024a0fdc1a9e47fdbbbfdb689aac961092011637f8f` |
| 5 | `instance` | [impartial_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial-zero--a90240118000268e7faaeeec.md) | 61 | `declaration-track:a90240118000268e7faaeeec455e24683089c7f8a0e845576753a7e4d96be5e4` |
| 6 | `instance` | [impartial_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial-star--ed7b8f4581730d508bb942fb.md) | 65 | `declaration-track:ed7b8f4581730d508bb942fb4d49809df8c94c9105d8f508d1a68fff4c8425ca` |
| 7 | `theorem` | [neg_equiv_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/neg-equiv-self--816c568ec6f25bcaf1c698ae.md) | 69 | `result-track:816c568ec6f25bcaf1c698aed5b9f9255f30fb97826c0be01ca378e1186a9823` |
| 8 | `theorem` | [mk'_neg_equiv_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/mk-neg-equiv-self--4b728f99c3f11acab161a1a5.md) | 73 | `result-track:4b728f99c3f11acab161a1a579111e018bad0a01ce0d70a2d548aff8656b6cd6` |
| 9 | `instance` | [moveLeft_impartial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/moveleft-impartial--ebf6f4334c15aa9e9f167aa3.md) | 76 | `declaration-track:ebf6f4334c15aa9e9f167aa32f037a61576a531b27d9bebcee6e68a45a8343a1` |
| 10 | `instance` | [moveRight_impartial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/moveright-impartial--bea0aff91310328f5a851d9e.md) | 80 | `declaration-track:bea0aff91310328f5a851d9ef1f70187097e492d640d7eb92f4d80bf7c8d19e3` |
| 11 | `theorem` | [impartial_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial-congr--5a9ae0a806c47435498a567a.md) | 84 | `result-track:5a9ae0a806c47435498a567a11d91257721b0ae9368747964af7d3bc522cae7c` |
| 12 | `instance` | [impartial_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial-add--0f21009feacfcb25fb3050ab.md) | 90 | `declaration-track:0f21009feacfcb25fb3050aba8acc71e9176a31ff7ff2e5ad4027daa90594adc` |
| 13 | `instance` | [impartial_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/impartial-neg--cfa7c9b7cddf0ed394c97759.md) | 104 | `declaration-track:cfa7c9b7cddf0ed394c97759e28c50af6f74fc87d3a997a8598e15908cf4d65b` |
| 14 | `theorem` | [nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/nonpos--e0ab8bfac7f4045f42a729f3.md) | 117 | `result-track:e0ab8bfac7f4045f42a729f3a265af94b8aa857632c690e3863f48b48d049fbf` |
| 15 | `theorem` | [nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/nonneg--662030f95864340e560dff05.md) | 121 | `result-track:662030f95864340e560dff0591c576a3c09fb666f34f782c51618326326fb338` |
| 16 | `theorem` | [equiv_or_fuzzy_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/equiv-or-fuzzy-zero--e23cc4a5b783626f592df108.md) | 125 | `result-track:e23cc4a5b783626f592df1088c79e7f9e3a32ec7e1bf3cc4ecb9ea35e42786a8` |
| 17 | `theorem` | [not_equiv_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/not-equiv-zero-iff--3978ae8d356f48d761f77ecc.md) | 133 | `result-track:3978ae8d356f48d761f77ecc6b91b5543c749f4d5d3bc66cfc03d244a581f5d4` |
| 18 | `theorem` | [not_fuzzy_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/not-fuzzy-zero-iff--f077b4ee3fa3aa16acba2cdc.md) | 137 | `result-track:f077b4ee3fa3aa16acba2cdca34474e1bb435b547cfe1b7755842850651feda7` |
| 19 | `theorem` | [add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/add-self--63d3851318f5691f27f3f8ce.md) | 140 | `result-track:63d3851318f5691f27f3f8ce3f376d01f26825a08a1531be0a3ad67fb1a943f3` |
| 20 | `theorem` | [mk'_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/mk-add-self--95bba010d960e6f779193f1d.md) | 144 | `result-track:95bba010d960e6f779193f1da8600eebb614d5ef12facaf58aedeff784872805` |
| 21 | `theorem` | [equiv_iff_add_equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/equiv-iff-add-equiv-zero--de99f684630d8f26cff3fb7d.md) | 148 | `result-track:de99f684630d8f26cff3fb7d9e21edad9cd0d5fd4ff3a3cca25a1c20e77d9aef` |
| 22 | `theorem` | [equiv_iff_add_equiv_zero'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/equiv-iff-add-equiv-zero--c80b2160c5181530889ddb10.md) | 153 | `result-track:c80b2160c5181530889ddb101d0b41daa9d3bbc682e36d85a426775d7bb22942` |
| 23 | `theorem` | [le_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/le-zero-iff--999588b3cb09a0a843185419.md) | 157 | `result-track:999588b3cb09a0a8431854195968494e74f6c19cf108452852a968944e1cfb8a` |
| 24 | `theorem` | [lf_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/lf-zero-iff--f0231151293582fc63f51707.md) | 160 | `result-track:f0231151293582fc63f5170729cca3c80ceb1bd22ad2cd8247f9ae33c7ed25c4` |
| 25 | `theorem` | [equiv_zero_iff_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/equiv-zero-iff-le--93fd164d6246966e282325ff.md) | 163 | `result-track:93fd164d6246966e282325ff268c87b559f7f159f750573590c2e6b3e4612988` |
| 26 | `theorem` | [fuzzy_zero_iff_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/fuzzy-zero-iff-lf--d050b01d2d0f0ca6abe7bdee.md) | 166 | `result-track:d050b01d2d0f0ca6abe7bdeeb53758adadd53de463a4e4c0574f2f5b9ffd2f75` |
| 27 | `theorem` | [equiv_zero_iff_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/equiv-zero-iff-ge--764350a4c50f01da7c7a9a7f.md) | 169 | `result-track:764350a4c50f01da7c7a9a7fc8baa255bb4fae3260786e9642f01cc2d8960946` |
| 28 | `theorem` | [fuzzy_zero_iff_gf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/fuzzy-zero-iff-gf--1432e4d104bc2e36122f80fe.md) | 172 | `result-track:1432e4d104bc2e36122f80fe1b9d2991737bc9773e870c031df35a86dd7c4868` |
| 29 | `theorem` | [forall_leftMoves_fuzzy_iff_equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/forall-leftmoves-fuzzy-iff-equiv-zero--669d6cae6ef98a4751e62f75.md) | 175 | `result-track:669d6cae6ef98a4751e62f75262ee03c1f883b59a24a303eb67003f309811aba` |
| 30 | `theorem` | [forall_rightMoves_fuzzy_iff_equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/forall-rightmoves-fuzzy-iff-equiv-zero--5fddb086b5b8213d05e20997.md) | 182 | `result-track:5fddb086b5b8213d05e20997649d70dd0250c2cfc6a12782f1492f4dfb729f01` |
| 31 | `theorem` | [exists_left_move_equiv_iff_fuzzy_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/exists-left-move-equiv-iff-fuzzy-zero--b812b74c5ce46f0579e215ba.md) | 189 | `result-track:b812b74c5ce46f0579e215babd5cdf94598295b071886390f8639830fa778b09` |
| 32 | `theorem` | [exists_right_move_equiv_iff_fuzzy_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997.lean/declarations/exists-right-move-equiv-iff-fuzzy-zero--c6c961845db833e821ebfa8e.md) | 195 | `result-track:c6c961845db833e821ebfa8ea896679d6431ecaf34fe6c7ded4d86abbefe15f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
