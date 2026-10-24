# Verification target: GRWTSK.Algebra.Ring.Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67046c4b233d741bec40bddd080181144973618c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67046c4b233d741bec40bddd080181144973618c`.

Source path: `GRWTSK/Algebra/Ring/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_smul](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/zero-smul--6a53f3ea24c86495e70b8e34.md) | 41 | `result-track:6a53f3ea24c86495e70b8e34d21570944fc7661983f4a91eafaf61c86d493841` |
| 2 | `theorem` | [add_smul](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/add-smul--e9c048c58f54aecf5b29abf4.md) | 45 | `result-track:e9c048c58f54aecf5b29abf4d3dc4dc3143d840abca8f929bb7c4e2f82f7aee3` |
| 3 | `theorem` | [zero_mul](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/zero-mul--35ba677e5a779597dd266144.md) | 81 | `result-track:35ba677e5a779597dd266144e2bffd840ba1d060f452049745abbbc295e07d30` |
| 4 | `theorem` | [mul_zero](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/mul-zero--84f709e636060f44e7a59b06.md) | 84 | `result-track:84f709e636060f44e7a59b06ef228576dac1d192f1ac5b27d3999812bdf061d3` |
| 5 | `theorem` | [left_distrib](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/left-distrib--b6979fb97b4e05cec77620db.md) | 87 | `result-track:b6979fb97b4e05cec77620db8d47118dd0f544280f0cde637a32caf43aa0f6ce` |
| 6 | `theorem` | [right_distrib](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/right-distrib--52932c3c0a6336da7748ab80.md) | 90 | `result-track:52932c3c0a6336da7748ab8089b9ee0e106ac5df79571ad4938ffd288b09cc84` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--a62ea1f4eda2741e36e7844a.md) | 93 | `declaration-track:a62ea1f4eda2741e36e7844aa531a8049874070474ababb0041ce6380948b43a` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--fc0a36058af949af98866cf0.md) | 101 | `declaration-track:fc0a36058af949af98866cf04355250af0c9693a876d4961c6e51738204191b7` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--1c9cb8cf30956d89ffd168c0.md) | 105 | `declaration-track:1c9cb8cf30956d89ffd168c090e2c8e44844f282992939e9e69ff55a0fd45b39` |
| 10 | `lemma` | [nsmul_eq_nsmul](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/nsmul-eq-nsmul--3bb87831bab46b1328d85e51.md) | 112 | `result-track:3bb87831bab46b1328d85e51b702efd2299364f50f566711df77a573228858a7` |
| 11 | `def` | [numeratorRingHom](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/numeratorringhom--218da9523d55837e21c11ee3.md) | 120 | `declaration-track:218da9523d55837e21c11ee33fb708523da265140bcb4d466f6b3ac0a6a4b0a7` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--d6003d7aa2c355903e9fe4d2.md) | 125 | `declaration-track:d6003d7aa2c355903e9fe4d248937d28aa803a27d0adec351ea8531b10934b44` |
| 13 | `def` | [universalHom](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/universalhom--7ed1ca42f0280a9b3d348337.md) | 146 | `declaration-track:7ed1ca42f0280a9b3d3483377b2a5611f8ab005144a05b62baf2cd8670d08cb0` |
| 14 | `theorem` | [universalHom_apply](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/universalhom-apply--5d74a8d47794b6d0cb15084f.md) | 173 | `result-track:5d74a8d47794b6d0cb15084f36761591f6ee362612fbb194b03e79bb131297e5` |
| 15 | `theorem` | [universalHom_commutes](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/universalhom-commutes--43be3579ff5751d7c5731a4c.md) | 177 | `result-track:43be3579ff5751d7c5731a4cc8c4d6c309e56d15c62852f5e027cebe56c5c5c0` |
| 16 | `theorem` | [universalHom_unique](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/universalhom-unique--5d58f1f6fd1670d8019c43cb.md) | 180 | `result-track:5d58f1f6fd1670d8019c43cbfedd683654055ee65c3e93ace706099dc8a73d84` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--05decab2298facf48548bddb.md) | 193 | `declaration-track:05decab2298facf48548bddb0c5bf30b72ed752a842430acdaeb5f1de2abe2db` |
| 18 | `lemma` | [zsmul_eq_zsmul](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/zsmul-eq-zsmul--26e2af735d31b7f21b9ade9f.md) | 198 | `result-track:26e2af735d31b7f21b9ade9f1df2b4d4ee57a2ff5d3a37f2aa2d5d529183aaf6` |
| 19 | `theorem` | [numeratorHom_inj](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/numeratorhom-inj--2e40b1498d213e57a257d7e5.md) | 206 | `result-track:2e40b1498d213e57a257d7e5857c8b4a311b71e0f74cbb60309e23e3024fe1ec` |
| 20 | `theorem` | [subsingleton_iff](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/subsingleton-iff--0b32ce4efb28bc81836147ae.md) | 215 | `result-track:0b32ce4efb28bc81836147aeeb8a23d715262f0ce344145a3d66ab6d8ee838ef` |
| 21 | `theorem` | [nontrivial_iff](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/nontrivial-iff--28dd80b9196170d5e327e59f.md) | 221 | `result-track:28dd80b9196170d5e327e59f0e27d34f247d4b79df946049363d23528a3c4523` |
| 22 | `theorem` | [nontrivial_of_nonZeroDivisors](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/nontrivial-of-nonzerodivisors--aa3cbbfb49561a09e3aa33e1.md) | 225 | `result-track:aa3cbbfb49561a09e3aa33e1387ee30411ee9dbc79fd3346884ff11018a2aec1` |
| 23 | `instance` | [nontrivial](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/nontrivial--a4cd940784d693b20dce55a5.md) | 237 | `declaration-track:a4cd940784d693b20dce55a5f122f331864828d02dea61e6f656ab89cef8796d` |
| 24 | `def` | [inv](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/inv--2e1a5f08ab14e2e7d9e3f4c2.md) | 246 | `declaration-track:2e1a5f08ab14e2e7d9e3f4c2c99b707b01420e53ab48ead6bc54c6bb75c9325f` |
| 25 | `instance` | [inv'](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/inv--9ff4bd249384dd44d0c0a757.md) | 262 | `declaration-track:9ff4bd249384dd44d0c0a757d4fe6cfa6f219677fbd32d321753fbaebfd48ec1` |
| 26 | `theorem` | [inv_def](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/inv-def--1943357bdce025540fe38367.md) | 266 | `result-track:1943357bdce025540fe383678f59f56218973f41e85087f79139a21965a829e7` |
| 27 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/mul-inv-cancel--2da0dba9860562464062169e.md) | 272 | `result-track:2da0dba9860562464062169e23a943db9204774426cc30fc9e229105685665a6` |
| 28 | `theorem` | [inv_zero](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/inv-zero--0407bceb5b613171dab895f7.md) | 281 | `result-track:0407bceb5b613171dab895f798f99f9e4f471f37f24ff32c3562e4e59adb411c` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--e27d588f6ae93f2107198cf2.md) | 285 | `declaration-track:e27d588f6ae93f2107198cf22d51e7b97d0a3b80b2d891634c346f827f611998` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--e9409441624dc177f6875d29.md) | 299 | `declaration-track:e9409441624dc177f6875d293ce6d09dcf96c21e57166b50ae0fc18c15af52e8` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--62e02403fd8ba822961e2971.md) | 309 | `declaration-track:62e02403fd8ba822961e297174411b4492b3f3f0d9d6a4e118e702ee0528fcd2` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/declarations/instance--7f441e2fe58dee07fbcb63a0.md) | 322 | `declaration-track:7f441e2fe58dee07fbcb63a084edb38ab3d2357273f29936493af30a403e68fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
