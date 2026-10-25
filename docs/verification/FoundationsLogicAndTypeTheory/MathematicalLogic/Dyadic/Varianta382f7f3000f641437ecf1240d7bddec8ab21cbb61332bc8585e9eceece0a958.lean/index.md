# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dyadic.Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c55be7bd19f710dc67e6385202a768e2c112b8a8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c55be7bd19f710dc67e6385202a768e2c112b8a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Surreal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf--52d1e46fb02ae22ce7eb4e98.md) | 40 | `declaration-track:52d1e46fb02ae22ce7eb4e985e0b0a857bd58612e3373a1bbb451ef51859ae91` |
| 2 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-zero--b9ae6c1f97d3ea35d1e64be1.md) | 46 | `result-track:b9ae6c1f97d3ea35d1e64be1cc959d4c868974133833d9332a28c636a2786aba` |
| 3 | `theorem` | [powHalf_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-leftmoves--8c021ca4d0fcb0186fc2819b.md) | 50 | `result-track:8c021ca4d0fcb0186fc2819bb92e9386a07f8886eb5f242db015e0cf3dfd80fe` |
| 4 | `theorem` | [powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-zero-rightmoves--7f12b15ca7b8209c3a58b577.md) | 53 | `result-track:7f12b15ca7b8209c3a58b577c36021b3ee1852cd3cd203ca7d0fd4bf9126f606` |
| 5 | `theorem` | [powHalf_succ_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-succ-rightmoves--ee173047d8ff34607c6e1066.md) | 57 | `result-track:ee173047d8ff34607c6e1066d3d3a9651531b7214120aa2ed45c2205d96c0d0f` |
| 6 | `theorem` | [powHalf_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-moveleft--989c98310265380bc26cabc1.md) | 62 | `result-track:989c98310265380bc26cabc1f5b6a5001eef9043fae08cffb93e38398fc3fcd8` |
| 7 | `theorem` | [powHalf_succ_moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-succ-moveright--1de010262bb5b4ab814fda65.md) | 66 | `result-track:1de010262bb5b4ab814fda657c06690c5ffbe24cbc88ede3e5527498d59c2c84` |
| 8 | `instance` | [uniquePowHalfLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/uniquepowhalfleftmoves--7d12e3acac381868642b2909.md) | 70 | `declaration-track:7d12e3acac381868642b290962e03e817f8f3ca0c902bec69079d9676f06afdf` |
| 9 | `instance` | [isEmpty_powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/isempty-powhalf-zero-rightmoves--1b5a5a35a68a02e1950d5ba3.md) | 74 | `declaration-track:1b5a5a35a68a02e1950d5ba342ff15758d70912065a214849d062daddcdda2d6` |
| 10 | `instance` | [uniquePowHalfSuccRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/uniquepowhalfsuccrightmoves--cc724462aef14e46fef8a07f.md) | 78 | `declaration-track:cc724462aef14e46fef8a07fbe5cd7f8221a79b0714138385d1000aa5cae7820` |
| 11 | `theorem` | [birthday_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/birthday-half--db8105b624698dc3ec9ad428.md) | 83 | `result-track:db8105b624698dc3ec9ad4286131e6e5a358dcc8a631e37cc1d0301ec53e2406` |
| 12 | `theorem` | [numeric_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/numeric-powhalf--8a8d3c9039d3577750dd4f44.md) | 88 | `result-track:8a8d3c9039d3577750dd4f448d301762c07f26348269b2858cdbd9cab0093ee3` |
| 13 | `theorem` | [powHalf_succ_lt_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-succ-lt-powhalf--3abb24166e05285c681621cd.md) | 96 | `result-track:3abb24166e05285c681621cd78e528b4f4a02f056e2d2b5f61a3ac46ecf378ec` |
| 14 | `theorem` | [powHalf_succ_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-succ-le-powhalf--de78bb9a8520d5ec8999383b.md) | 100 | `result-track:de78bb9a8520d5ec8999383b471f26608a3f723f46b051cfd064a4b54c28131d` |
| 15 | `theorem` | [powHalf_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-le-one--57a0175882d5d71d4ebbe68e.md) | 104 | `result-track:57a0175882d5d71d4ebbe68e694a19089d467bbdb3dc38c7cd613aa0b40a3b0e` |
| 16 | `theorem` | [powHalf_succ_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-succ-lt-one--4b94c03d3c69efa272c3e0ac.md) | 110 | `result-track:4b94c03d3c69efa272c3e0ac32b147d1b179e4554b3e188be8a7f2bd9de0c7e4` |
| 17 | `theorem` | [powHalf_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-pos--40a3905a987026ca50762914.md) | 114 | `result-track:40a3905a987026ca5076291482c3a0c40d3b37f4f46bbf1185f1448ce2d9d87d` |
| 18 | `theorem` | [zero_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/zero-le-powhalf--8630dffcd28ca1b0440e5237.md) | 118 | `result-track:8630dffcd28ca1b0440e5237936b133cbe420a94859e6fb460858dbce6dadeee` |
| 19 | `theorem` | [add_powHalf_succ_self_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/add-powhalf-succ-self-eq-powhalf--c09b0501fdbe425c33edda00.md) | 122 | `result-track:c09b0501fdbe425c33edda004ae7121027b33ca785f622de1df225d4f893b0a6` |
| 20 | `theorem` | [half_add_half_equiv_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/half-add-half-equiv-one--ac302df424169162aeb2926f.md) | 156 | `result-track:ac302df424169162aeb2926fb49bad3389863745f30e2144e40770f3b15a4656` |
| 21 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf--7f3bf3fc6b2edeee94316688.md) | 169 | `declaration-track:7f3bf3fc6b2edeee94316688f8ccef3c560d0b2c0cf9e6ed6eda143c80c8ea79` |
| 22 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/powhalf-zero--375d0a93ee7e54e8917368e4.md) | 174 | `result-track:375d0a93ee7e54e8917368e4572c3828112989599d140f861b731cebea59bf3c` |
| 23 | `theorem` | [double_powHalf_succ_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/double-powhalf-succ-eq-powhalf--7c3e4b35520705f34526e3b2.md) | 179 | `result-track:7c3e4b35520705f34526e3b203abf4d215eede59f1dc2dde20b327c6f12b0b4b` |
| 24 | `theorem` | [nsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/nsmul-pow-two-powhalf--5269bdc3140bf52145c22c27.md) | 184 | `result-track:5269bdc3140bf52145c22c27e7dcf44ec416bc48bdc02d535735ac50ef3cce28` |
| 25 | `theorem` | [nsmul_pow_two_powHalf'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/nsmul-pow-two-powhalf--0f359bd5c5488796b10c5bad.md) | 192 | `result-track:0f359bd5c5488796b10c5bad6ba9c78237d16f2180fc1cceac4bb888c2557390` |
| 26 | `theorem` | [zsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/zsmul-pow-two-powhalf--5f93fefff7504cca5c4304c8.md) | 201 | `result-track:5f93fefff7504cca5c4304c8dbdcff8c8840e9e37e182206ff5b33b44c1eb5ad` |
| 27 | `theorem` | [dyadic_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/dyadic-aux--8569e554c3fbe3439d5b8e13.md) | 209 | `result-track:8569e554c3fbe3439d5b8e13b1d78534e57b543e7093675b4b95f7c0035ef238` |
| 28 | `def` | [dyadicMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/dyadicmap--96fb74b72a4a46d1aa55c3dd.md) | 224 | `declaration-track:96fb74b72a4a46d1aa55c3dd21727c5b2f448e7553c09fbaf06330eeddd2a8cd` |
| 29 | `theorem` | [dyadicMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/dyadicmap-apply--8f6145bdc1697250b1bdf6e2.md) | 260 | `result-track:8f6145bdc1697250b1bdf6e2bbdd00ef584a68139885d9af1f3c7754ee6a155c` |
| 30 | `theorem` | [dyadicMap_apply_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/dyadicmap-apply-pow--d564f16ca8697bbad9bb962b.md) | 267 | `result-track:d564f16ca8697bbad9bb962b478f25295ea86cc31f6b61e6e8f99a55c2d5025b` |
| 31 | `theorem` | [dyadicMap_apply_pow'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/dyadicmap-apply-pow--ae751e1023f36d4e4785b875.md) | 274 | `result-track:ae751e1023f36d4e4785b87571e71a2d457dd3fed31df4cab92ab1f035ae6260` |
| 32 | `def` | [dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/declarations/dyadic--ad916c98e70b9ad71ecbff0d.md) | 279 | `declaration-track:ad916c98e70b9ad71ecbff0d06604b8649bef23fc59ec375ee5d84d669c4d918` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
