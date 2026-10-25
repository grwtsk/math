# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LpEquiv.Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2004458248612c6b5e5607d06419f830e98a2221",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2004458248612c6b5e5607d06419f830e98a2221`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Lp.PiLp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Memℓp.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/mem-p-all--9e8bc6ded7b077998f85c26f.md) | 51 | `result-track:9e8bc6ded7b077998f85c26fd6ad172d53b76dee770936d97c47b59df2188186` |
| 2 | `def` | [Equiv.lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/equiv-lppilp--fd182692f1c1af166136bf23.md) | 58 | `declaration-track:fd182692f1c1af166136bf2390b6f8b30a0e5c9b51cd04a448ab219f6581cfb7` |
| 3 | `theorem` | [coe_equiv_lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-equiv-lppilp--f55721eec2b133937a555a2a.md) | 64 | `result-track:f55721eec2b133937a555a2afa638fd35e485d0c0c24d9c7f6717a5cf5114aa4` |
| 4 | `theorem` | [coe_equiv_lpPiLp_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-equiv-lppilp-symm--e522e239ef4209cbaf410a1e.md) | 67 | `result-track:e522e239ef4209cbaf410a1e37cdef9c2589a244c3d3a70392782d4aa43834a0` |
| 5 | `def` | [AddEquiv.lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/addequiv-lppilp--2bd0fd5841511b0e9392e4d3.md) | 72 | `declaration-track:2bd0fd5841511b0e9392e4d384874b9a6c9d3adaa9a4a0a0fb5b2cad891ebb76` |
| 6 | `theorem` | [coe_addEquiv_lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-addequiv-lppilp--c6c65c3f96e41b4c90b31f06.md) | 75 | `result-track:c6c65c3f96e41b4c90b31f060171aa308254f8bd38b82fd50e88e48276338d6a` |
| 7 | `theorem` | [coe_addEquiv_lpPiLp_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-addequiv-lppilp-symm--cedbed12c9d8b7ff66480160.md) | 78 | `result-track:cedbed12c9d8b7ff6648016011edccc80b1056f15d27cdd7e52e2477c5a5c1ac` |
| 8 | `theorem` | [equiv_lpPiLp_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/equiv-lppilp-norm--5cbfc5863871db7f4c6b1648.md) | 84 | `result-track:5cbfc5863871db7f4c6b164882842017b9d37f9a3c66f5b0e68c098819dc13a8` |
| 9 | `def` | [lpPiLpₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/lppilp--9465ad299fa8cad98a369a1f.md) | 97 | `declaration-track:9465ad299fa8cad98a369a1f1faa8cde6780d0db89ece380af49d2945971b166` |
| 10 | `theorem` | [coe_lpPiLpₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-lppilp--34a86ace4500027e5d7be532.md) | 104 | `result-track:34a86ace4500027e5d7be532b6464acacc33a7ffca2b93012e1e6fad7369ce9b` |
| 11 | `theorem` | [coe_lpPiLpₗᵢ_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-lppilp-symm--f1b7e5de75e224534a84fa7b.md) | 107 | `result-track:f1b7e5de75e224534a84fa7b971e8323fcf7d883662b8f2d17f9db348ad174f2` |
| 12 | `def` | [AddEquiv.lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/addequiv-lpbcf--94faa3d03aaec522e52e25d9.md) | 129 | `declaration-track:94faa3d03aaec522e52e25d9f4ecdc88c9a1c74714a2b938cb70f618c81ea040` |
| 13 | `theorem` | [coe_addEquiv_lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-addequiv-lpbcf--795a4e4828c5a926b500eeb9.md) | 137 | `result-track:795a4e4828c5a926b500eeb9b0c6df78de709c466d53cfcf4ac8bbd8f8958e39` |
| 14 | `theorem` | [coe_addEquiv_lpBCF_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-addequiv-lpbcf-symm--5d014a421ef0742ce854e63d.md) | 140 | `result-track:5d014a421ef0742ce854e63d7e1ff7e654b428149370972eb75b727d55f67525` |
| 15 | `def` | [lpBCFₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/lpbcf--7b25db7594f194feb7504f77.md) | 146 | `declaration-track:7b25db7594f194feb7504f77c968dd5aa5cdac2ecf58a3ea905107b369c5f1c2` |
| 16 | `theorem` | [coe_lpBCFₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-lpbcf--185a6c2add090aa57f330f53.md) | 154 | `result-track:185a6c2add090aa57f330f53852b987917cd3ce9697fb07df6f334d45a7b0042` |
| 17 | `theorem` | [coe_lpBCFₗᵢ_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-lpbcf-symm--54716111cc73f0a465456b09.md) | 157 | `result-track:54716111cc73f0a465456b09ff99d0c37278d1bc210127b450c4ddf48beb8b3c` |
| 18 | `def` | [RingEquiv.lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/ringequiv-lpbcf--19494bc8addbea693ff17c1b.md) | 165 | `declaration-track:19494bc8addbea693ff17c1b23f1c365264378a1ed6dbfca757e400546f5daaa` |
| 19 | `theorem` | [coe_ringEquiv_lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-ringequiv-lpbcf--7ff1874e61b76be663a8dbd2.md) | 172 | `result-track:7ff1874e61b76be663a8dbd23c929cebf165c74213ed4904014966a6b6c7e7e1` |
| 20 | `theorem` | [coe_ringEquiv_lpBCF_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-ringequiv-lpbcf-symm--ec5dbf6bbd2f8d23a0d0a171.md) | 175 | `result-track:ec5dbf6bbd2f8d23a0d0a171c32489872e7bfffedf4adfa5c2206eee2d0b7e1e` |
| 21 | `def` | [AlgEquiv.lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/algequiv-lpbcf--3c89acfe3f56466f61669c87.md) | 184 | `declaration-track:3c89acfe3f56466f61669c87c0b4daaa8bc1ec8d5221de64f7cca1aa1d093192` |
| 22 | `theorem` | [coe_algEquiv_lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-algequiv-lpbcf--977ed2b60d63f19747959822.md) | 190 | `result-track:977ed2b60d63f1974795982250d426bcf27a9106323e152944132a014c6e101f` |
| 23 | `theorem` | [coe_algEquiv_lpBCF_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf9dc5a80d37d60244e3579ae5e4488f13b88946aee0cedd653649f9c019d94a3.lean/declarations/coe-algequiv-lpbcf-symm--00a4bfa5d765084b7d2c71b5.md) | 193 | `result-track:00a4bfa5d765084b7d2c71b5eb31846ac6c966277600b1d0afecdeaff9e7a3af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
