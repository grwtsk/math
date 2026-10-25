# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fin.Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "587690f450ea730f5c1b1b5dc1f4a632d328f899",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `587690f450ea730f5c1b1b5dc1f4a632d328f899`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Option` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Equiv.Perm.decomposeFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/equiv-perm-decomposefin--de3d6105732c80a7d65577fd.md) | 31 | `declaration-track:de3d6105732c80a7d65577fd36514d57ab45b22a366cd5a61e1a226725d5dc26` |
| 2 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/equiv-perm-decomposefin-symm-of-refl--25d3f46898edcd4684e97923.md) | 37 | `result-track:25d3f46898edcd4684e9792388d5213f08a59bab99221a0833e75b405e46701d` |
| 3 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/equiv-perm-decomposefin-symm-of-one--04cb2e8d361203cf9ab6662e.md) | 43 | `result-track:04cb2e8d361203cf9ab6662e3884603572d881bb621d1cdc72e8f796bd26d7f9` |
| 4 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/equiv-perm-decomposefin-symm-apply-zero--57fa4cf02403dece816d5f9f.md) | 49 | `result-track:57fa4cf02403dece816d5f9f251fa44efce8917a50f11fab0416bf94618e27cf` |
| 5 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/equiv-perm-decomposefin-symm-apply-succ--cbab77ffc37d0685db2f2229.md) | 54 | `result-track:cbab77ffc37d0685db2f2229189ee9c34b12115fdf981a0feb2eafb2d8c84e85` |
| 6 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/equiv-perm-decomposefin-symm-apply-one--26e0707c876acd18554ea1b3.md) | 66 | `result-track:26e0707c876acd18554ea1b328d1332e5b72ebd5e55b8eacd0f3262d903ca401` |
| 7 | `theorem` | [Equiv.Perm.decomposeFin.symm_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/equiv-perm-decomposefin-symm-sign--5c5699c956a1bb0b04393700.md) | 72 | `result-track:5c5699c956a1bb0b04393700255984e4924c9ec78b85d4e8686956279e3da4d8` |
| 8 | `theorem` | [Finset.univ_perm_fin_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/finset-univ-perm-fin-succ--fbc044f7ef9c31728b75633c.md) | 79 | `result-track:fbc044f7ef9c31728b75633cf26a302fd9fe8f1c49d32840e2454adeb74783cb` |
| 9 | `theorem` | [finRotate_succ_eq_decomposeFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/finrotate-succ-eq-decomposefin--585b09537a9cc9b7f62ebf4b.md) | 97 | `result-track:585b09537a9cc9b7f62ebf4b79befd47f818d69ec8e38646be73f839ea13c7ad` |
| 10 | `theorem` | [sign_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/sign-finrotate--7bd821b5bad37423c1210e70.md) | 112 | `result-track:7bd821b5bad37423c1210e7061a674eabf17647e70893872b08a97df3ddbb499` |
| 11 | `theorem` | [support_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/support-finrotate--7856d4bbce15abeb5c112aad.md) | 120 | `result-track:7856d4bbce15abeb5c112aadb59dba76a0b9f1727bbc78b5c698108dd152e737` |
| 12 | `theorem` | [support_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/support-finrotate-of-le--0f394b768f70c0d2822f6399.md) | 125 | `result-track:0f394b768f70c0d2822f639953c49aeffe0cc49f3a02ba1f017eabbf8a2aebf7` |
| 13 | `theorem` | [isCycle_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/iscycle-finrotate--89d97be382d06406d5e64f6a.md) | 130 | `result-track:89d97be382d06406d5e64f6a040f4b1d1438525bd8a512bd1fe9c1fc7e4138f2` |
| 14 | `theorem` | [isCycle_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/iscycle-finrotate-of-le--eaa021f705932049dc9cb297.md) | 141 | `result-track:eaa021f705932049dc9cb29778b7542330b2477cef0965b00b9356ddf985712a` |
| 15 | `theorem` | [cycleType_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cycletype-finrotate--74aa6a5af646828a5912b57a.md) | 148 | `result-track:74aa6a5af646828a5912b57a09ca9cfe8bc382cb376b7d1dd86473b6a5565cd1` |
| 16 | `theorem` | [cycleType_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cycletype-finrotate-of-le--d304bf12954cf59ddcabc3dc.md) | 153 | `result-track:d304bf12954cf59ddcabc3dca88b0d533ef594bbdc3a7cc84785b50aeb36a6f7` |
| 17 | `def` | [cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange--92b1d8bf576c7b954d3af15e.md) | 161 | `declaration-track:92b1d8bf576c7b954d3af15e88d559127bfea07d233fed197f19c905cdcb21ca` |
| 18 | `theorem` | [cycleRange_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-of-gt--9a83f35772967e5be35db093.md) | 170 | `result-track:9a83f35772967e5be35db0934c5bfd14bd2bc5f7139c0ad7b081c9b6780381cc` |
| 19 | `theorem` | [cycleRange_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-of-le--6a0a6d4db7764a66a40e0f46.md) | 177 | `result-track:6a0a6d4db7764a66a40e0f46a0501066814a08297fbdd143eaf6c4a91e6480a1` |
| 20 | `theorem` | [coe_cycleRange_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/coe-cyclerange-of-le--e401493107efa05a68dbc039.md) | 195 | `result-track:e401493107efa05a68dbc03957cf79d4b195f7ef57b1d3cf9b9019776e9adc27` |
| 21 | `theorem` | [cycleRange_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-of-lt--a627b856220f76b7ebff7606.md) | 207 | `result-track:a627b856220f76b7ebff7606ccfe7e1a608cd9f69ec27ceabfc4469b75cdc27c` |
| 22 | `theorem` | [coe_cycleRange_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/coe-cyclerange-of-lt--c129bc61eadb1970f90da854.md) | 211 | `result-track:c129bc61eadb1970f90da8543c814e39317359695d8068980d47287d169bc4e8` |
| 23 | `theorem` | [cycleRange_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-of-eq--90fa0bed6759a15dae90ae70.md) | 215 | `result-track:90fa0bed6759a15dae90ae706f69cac4f41265dc63b08c76eb73631dff060a2e` |
| 24 | `theorem` | [cycleRange_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-self--42b185ef1c98cfa7879cb56a.md) | 220 | `result-track:42b185ef1c98cfa7879cb56a2c73515f1fe30eca98b6330c3438b57ded54be6c` |
| 25 | `theorem` | [cycleRange_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-apply--c6f2c42ccb3a4f71ffb1f100.md) | 224 | `result-track:c6f2c42ccb3a4f71ffb1f100c0993f04ea3ab069c9e420db2778b77ed3e5fde4` |
| 26 | `theorem` | [cycleRange_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-zero--af49fda5dcc7c4dd546c3ab4.md) | 233 | `result-track:af49fda5dcc7c4dd546c3ab40508de1ad9687126440b16459191b566b14b7778` |
| 27 | `theorem` | [cycleRange_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-last--648232fff6f304a955a0f0c8.md) | 241 | `result-track:648232fff6f304a955a0f0c88a27de4ad705975e4ec35b68668f31abf11c9937` |
| 28 | `theorem` | [cycleRange_zero'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-zero--f26b84196ae6df993b4f8a74.md) | 247 | `result-track:f26b84196ae6df993b4f8a748c4d744a9d5da0d110382129429b6fe243636937` |
| 29 | `theorem` | [sign_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/sign-cyclerange--817bcff187a78bbc29089799.md) | 254 | `result-track:817bcff187a78bbc29089799b382a48930c3f722eb2660bbdfbc2b7aa4bc66e9` |
| 30 | `theorem` | [succAbove_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/succabove-cyclerange--dafb81844c90ab23686145a2.md) | 259 | `result-track:dafb81844c90ab23686145a2a935ea26e35a93f0c21940817b9009c5258a404b` |
| 31 | `theorem` | [cycleRange_succAbove](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-succabove--1db8f124224777a0213ae5d7.md) | 282 | `result-track:1db8f124224777a0213ae5d7af03ea6afe110d9675cd1dd553c8d82f757c9054` |
| 32 | `theorem` | [cycleRange_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-symm-zero--7b735daa045d5e4b86efca4a.md) | 290 | `result-track:7b735daa045d5e4b86efca4a0874f2392b9ddb3a6c79c1e7c78ad474e20f9883` |
| 33 | `theorem` | [cycleRange_symm_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cyclerange-symm-succ--6a5878c4c967a8b994716183.md) | 295 | `result-track:6a5878c4c967a8b994716183b29174e287ed9e9fd233a8ab9ed755ca6b78001c` |
| 34 | `theorem` | [isCycle_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/iscycle-cyclerange--2dd824a2f8c65ce96f869cc4.md) | 300 | `result-track:2dd824a2f8c65ce96f869cc4da88699d092460fdad97fee91b28765d8aad583b` |
| 35 | `theorem` | [cycleType_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/cycletype-cyclerange--28b7db6db9a9edfbe68ce77e.md) | 308 | `result-track:28b7db6db9a9edfbe68ce77ec3f2013809d553e5ee74d29716fde26536aa88eb` |
| 36 | `theorem` | [isThreeCycle_cycleRange_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant4d0cc7343c9a574422e7c8517b793c1c55b494e0769d762d9d2f1a2c07e57766.lean/declarations/isthreecycle-cyclerange-two--9d0c37ff8cab9eaf94c91348.md) | 317 | `result-track:9d0c37ff8cab9eaf94c9134814c57914ee3322dcfa67c59b04b4cdd4d6b7a4a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
