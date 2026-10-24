# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eefac205ba529d3a9518838a2e17619d566bbb5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eefac205ba529d3a9518838a2e17619d566bbb5`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul--2b6ebc83633d58e293345378.md) | 52 | `declaration-track:2b6ebc83633d58e293345378e3eb4428fe911f0c67a42681e9ba246e931fc49a` |
| 2 | `theorem` | [smul_fst](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul-fst--37bed50a68ad914b5a71386d.md) | 56 | `result-track:37bed50a68ad914b5a71386d00290a2b3a28f9006f66b60c2f75c6096c33213f` |
| 3 | `theorem` | [smul_snd](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul-snd--61605e926405f976a0f1833a.md) | 62 | `result-track:61605e926405f976a0f1833aec385ffd58f8db3da0bb66ccd7543d366256b891` |
| 4 | `theorem` | [smul_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul-mk--049f75510cb4f9ed548ccc00.md) | 68 | `result-track:049f75510cb4f9ed548ccc0027cfa89aa24bc2f5adc7862a1a8f1bc93e7d84e9` |
| 5 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul-def--25d9447aaa666a2b3913d955.md) | 74 | `result-track:25d9447aaa666a2b3913d9555750d9b93f3ac31e544533947d9cd68502051d6b` |
| 6 | `theorem` | [smul_swap](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul-swap--0c0433e895e7c30f44f21401.md) | 80 | `result-track:0c0433e895e7c30f44f214014bf6659ac55e9135ea28d1c6d4f86d0ef520f05a` |
| 7 | `theorem` | [smul_zero_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul-zero-mk--867f87be7212d0982a2bed45.md) | 85 | `result-track:867f87be7212d0982a2bed45be2e04b089acb5c4b4071fe50e9b8b017ea56f4c` |
| 8 | `theorem` | [smul_mk_zero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smul-mk-zero--bc4fab29acda8940cddeeca2.md) | 89 | `result-track:bc4fab29acda8940cddeeca2539a9cd0588d06bc9d0693352474fe172f169fb4` |
| 9 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/pow--f7725283746095a76f74d410.md) | 96 | `declaration-track:f7725283746095a76f74d410e9bee07fa71f769285f474577d99862ebdea622c` |
| 10 | `theorem` | [pow_fst](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/pow-fst--96d717acfd258efa7ea9a5db.md) | 101 | `result-track:96d717acfd258efa7ea9a5dbcb3f46c5c104b97eae028f04524ea9f6908801a4` |
| 11 | `theorem` | [pow_snd](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/pow-snd--58b300e2ccb1bcbb430a1fe4.md) | 106 | `result-track:58b300e2ccb1bcbb430a1fe4a1e1704b00f3e5052922f48b37a36403fdb3cfb9` |
| 12 | `theorem` | [pow_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/pow-mk--f6e1668684071123f6dce0de.md) | 114 | `result-track:f6e1668684071123f6dce0de9b2870af2304435219c212c80a64c4e79282d6e1` |
| 13 | `theorem` | [pow_def](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/pow-def--894d0ba237361cdac1056f5c.md) | 119 | `result-track:894d0ba237361cdac1056f5c7ab0463f506bf8198a626b49d603341c3741180b` |
| 14 | `theorem` | [pow_swap](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/pow-swap--af7c2e1ebab83377bbbdeacd.md) | 124 | `result-track:af7c2e1ebab83377bbbdeacdc83e988a33e116891519c18e7568cbd2c6970a78` |
| 15 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/isscalartower--df14cb3555f4a7262750f2ee.md) | 129 | `declaration-track:df14cb3555f4a7262750f2ee637189c305d2c8f8c548e0a7921e845b6c7a60a3` |
| 16 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smulcommclass--c214f9e9acc8e4f390496bc0.md) | 134 | `declaration-track:c214f9e9acc8e4f390496bc07a3fdc15bb23357335826a0668889e76b7f8c059` |
| 17 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/iscentralscalar--d410522cd52b23bca2fb0274.md) | 139 | `declaration-track:d410522cd52b23bca2fb0274fd57f6f704b19c0e5d1fae3941e48651f6c9cf67` |
| 18 | `instance` | [faithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/faithfulsmulleft--2cb8ee14a5557623c5ddc36c.md) | 146 | `declaration-track:2cb8ee14a5557623c5ddc36cc6f8d4b33117c151ed21b27c097a4aefb6dec6fb` |
| 19 | `instance` | [faithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/faithfulsmulright--b0826fb8b0e51b902e70bab0.md) | 154 | `declaration-track:b0826fb8b0e51b902e70bab0bb1b82d3c39210132e1526169921a09a95a542b0` |
| 20 | `instance` | [smulCommClassBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smulcommclassboth--2025a94954043a917fba57d9.md) | 164 | `declaration-track:2025a94954043a917fba57d95d432cce3140d7191d53c3841c0a56f2c0f8d4df` |
| 21 | `instance` | [isScalarTowerBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/isscalartowerboth--72bf0a734322587c82eb803c.md) | 170 | `declaration-track:72bf0a734322587c82eb803cbc0c0557507d02de8781a88c53b6558f75a139f2` |
| 22 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/mulaction--dd8900ebc2163664f8b68280.md) | 176 | `declaration-track:dd8900ebc2163664f8b68280021fd1d0820ebea189867c2a792675ce5ae7db47` |
| 23 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smulzeroclass--cbadb68adbede5aedb928cff.md) | 180 | `declaration-track:cbadb68adbede5aedb928cffb1b968d91acc720a383d0125197fbfd801fafd68` |
| 24 | `instance` | [distribSMul](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/distribsmul--13067fb5bf5d7670a73466f4.md) | 183 | `declaration-track:13067fb5bf5d7670a73466f4460912493f2a12a321b750a1304e3e8c36c42fb7` |
| 25 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/distribmulaction--30742833b4ba63aae603bb95.md) | 187 | `declaration-track:30742833b4ba63aae603bb95330b0fdd791772f7811fd68b0c86cf9e39f84b77` |
| 26 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/muldistribmulaction--26d2f64429019a7c5c7d95a3.md) | 191 | `declaration-track:26d2f64429019a7c5c7d95a343d9444205741d3a1798c99083adac5821f5c8c9` |
| 27 | `def` | [smulMulHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smulmulhom--26518bd22673cb3a4a0ba395.md) | 204 | `declaration-track:26518bd22673cb3a4a0ba395130c650cebd2273744a23edfc1ebc9f15922808d` |
| 28 | `def` | [smulMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean/declarations/smulmonoidhom--353bcef4a1603a58892dd340.md) | 213 | `declaration-track:353bcef4a1603a58892dd34096327cf323dc0c5f059644f7da16d046eef86d76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
