# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c716f0fa8f07ef21309f6c002ec8d96bf90ed6b4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c716f0fa8f07ef21309f6c002ec8d96bf90ed6b4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Principal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mk_iUnion_Ordinal_lift_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/mk-iunion-ordinal-lift-le-of-le--2372ef4be9acb4eacce9008e.md) | 31 | `result-track:2372ef4be9acb4eacce9008e8098a9af0092241af32f6297d6faa7e04dc08e99` |
| 2 | `lemma` | [mk_iUnion_Ordinal_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/mk-iunion-ordinal-le-of-le--41314c54565ebfa36707bc9a.md) | 42 | `result-track:41314c54565ebfa36707bc9aec92628cc7cf716af738971e76d85f750f1dc703` |
| 3 | `theorem` | [lift_card_iSup_le_sum_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/lift-card-isup-le-sum-card--8afc5c753fb29573afc44f01.md) | 57 | `result-track:8afc5c753fb29573afc44f010c51b7cde9f7c33365a7bed97785ae569d6e15bc` |
| 4 | `theorem` | [card_iSup_le_sum_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-isup-le-sum-card--6e0364b5db5e04ff601cc815.md) | 68 | `result-track:6e0364b5db5e04ff601cc815d3ccb74246fbcbde8661ccd0bbd305ca199ab2b8` |
| 5 | `theorem` | [card_iSup_Iio_le_sum_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-isup-iio-le-sum-card--85beb1d6189b72bdff2497d2.md) | 73 | `result-track:85beb1d6189b72bdff2497d22ca02a12ffe1b12234b16eeec88b7f87cac45874` |
| 6 | `theorem` | [card_iSup_Iio_le_card_mul_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-isup-iio-le-card-mul-isup--05773e3b232da5e290809ffd.md) | 78 | `result-track:05773e3b232da5e290809ffdc1e30bbb8df90863d13b3f770cf9f977fdc0d405` |
| 7 | `theorem` | [card_opow_le_of_omega0_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-opow-le-of-omega0-le-left--e10f25bba3307f83277032a0.md) | 85 | `result-track:e10f25bba3307f83277032a0d4a27fe36e085cd34fd81fc5dc6bc1b9079ea91a` |
| 8 | `theorem` | [card_opow_le_of_omega0_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-opow-le-of-omega0-le-right--b74523036c8517b6d50cbf90.md) | 111 | `result-track:b74523036c8517b6d50cbf902a33ee9b6f693c45a6fc4186da66917ebfd4f8d5` |
| 9 | `theorem` | [card_opow_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-opow-le--d72372735473425cfb880a2d.md) | 119 | `result-track:d72372735473425cfb880a2db60b442da927f54c30646a809a235e125e4cca1c` |
| 10 | `theorem` | [card_opow_eq_of_omega0_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-opow-eq-of-omega0-le-left--de8de2e48bc48ec9e9a1e358.md) | 127 | `result-track:de8de2e48bc48ec9e9a1e35808cc4124d01b0e1bf990b19a285af82e1a749b2f` |
| 11 | `theorem` | [card_opow_eq_of_omega0_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-opow-eq-of-omega0-le-right--2b68ce1ebfc1257899d5dc7b.md) | 133 | `result-track:2b68ce1ebfc1257899d5dc7b3ec28639fd884bd7b57cf1ff9e8af12675b6d89a` |
| 12 | `theorem` | [card_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-omega0-opow--b68c782a0f45eb5b0bf5b3d3.md) | 139 | `result-track:b68c782a0f45eb5b0bf5b3d3f0804c2975af0ab077951fdb8e7ec8b6898017e5` |
| 13 | `theorem` | [card_opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/card-opow-omega0--0006c766c86393355a14d522.md) | 142 | `result-track:0006c766c86393355a14d5227418d696976d29cac7e7d4a0f3a562494d379fcd` |
| 14 | `theorem` | [principal_opow_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/principal-opow-omega--c6c195ead1dc42036e37dd97.md) | 145 | `result-track:c6c195ead1dc42036e37dd973318827b0c4926b4447f9549fb899055958caa71` |
| 15 | `theorem` | [IsInitial.principal_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/isinitial-principal-opow--3fee30f9455d23a7a996cb0e.md) | 154 | `result-track:3fee30f9455d23a7a996cb0ee8ba77e72a7aa67ca1212c1adc1573afb4400307` |
| 16 | `theorem` | [principal_opow_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/principal-opow-ord--6337b3465ca4ac0cdd97b6e0.md) | 159 | `result-track:6337b3465ca4ac0cdd97b6e01951105e247561896cc57e793a71f7ecebcf663c` |
| 17 | `theorem` | [principal_add_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/principal-add-ord--b2eabd014a8bc9d95b436d12.md) | 165 | `result-track:b2eabd014a8bc9d95b436d122cda38034e3eec503efd88a127835e868b3b555e` |
| 18 | `theorem` | [IsInitial.principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/isinitial-principal-add--d4510ccd081803dde83b5ab8.md) | 170 | `result-track:d4510ccd081803dde83b5ab89f80a0be35e56bc6f174ed74270da0099a426f00` |
| 19 | `theorem` | [principal_add_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/principal-add-omega--cf100863c0a79cbb7854298e.md) | 176 | `result-track:cf100863c0a79cbb7854298eded597b3540a81603bd0d729ebd311a111ff64bf` |
| 20 | `theorem` | [principal_mul_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/principal-mul-ord--22ae66f24656c79fee605c08.md) | 179 | `result-track:22ae66f24656c79fee605c087d49fe58e456d61fc0fa93854e75fbc6c554393a` |
| 21 | `theorem` | [IsInitial.principal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/isinitial-principal-mul--6f7fdd03804f49f8869743f0.md) | 184 | `result-track:6f7fdd03804f49f8869743f051ac82cfb3f430df455029fc281ef17d3d7016c5` |
| 22 | `theorem` | [principal_mul_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/principal-mul-omega--0c7f60b16f2cefddd4a96d92.md) | 190 | `result-track:0c7f60b16f2cefddd4a96d9214eaa6e25cbbfebf061b5a1ae96facdcd5ded6bb` |
| 23 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.MkIUnionOrdinalLiftLeOfLe.Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.Cardinal.principal_add_aleph](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-mkiunionordinalliftl--4f5ecc679d2988e8c82ca515.md) | 194 | `result-track:4f5ecc679d2988e8c82ca51511b78243267e1414ff633fc25357a0a4a2fb8bb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
