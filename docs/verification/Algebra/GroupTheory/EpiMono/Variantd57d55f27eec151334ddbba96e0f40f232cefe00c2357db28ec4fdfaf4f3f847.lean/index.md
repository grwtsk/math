# Verification target: GRWTSK.Algebra.GroupTheory.EpiMono.Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "150675a003a151500d5b2be1e89949b8f7524835",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `150675a003a151500d5b2be1e89949b8f7524835`.

Source path: `GRWTSK/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.EquivalenceGroupAddGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_eq_bot_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/ker-eq-bot-of-cancel--5619f8be4f6ebeaf6ce4b548.md) | 36 | `result-track:5619f8be4f6ebeaf6ce4b54898ba219127861b2c5b14b775f4610c0ab5071348` |
| 2 | `theorem` | [range_eq_top_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/range-eq-top-of-cancel--9e1494a6675c0e16a1db985f.md) | 46 | `result-track:9e1494a6675c0e16a1db985fa8760ade17445a452ad69d9fd592d76ae14402d2` |
| 3 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/ker-eq-bot-of-mono--21f5f205162fa9a01a3b423f.md) | 70 | `result-track:21f5f205162fa9a01a3b423f080bf7679256c7b6906ef01858735213c35801c8` |
| 4 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/mono-iff-ker-eq-bot--ecb4bdc15a8ef1bf6ce5612f.md) | 75 | `result-track:ecb4bdc15a8ef1bf6ce5612f1e57c60deb0da56787eec07f164ac6d8f86d65f9` |
| 5 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/mono-iff-injective--6858242e6c5335ac456b7016.md) | 80 | `result-track:6858242e6c5335ac456b7016d027bf22427fc09492db76d8b571fff4e5d9b112` |
| 6 | `inductive` | [XWithInfinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/xwithinfinity--467da15bf245c864acbf252d.md) | 89 | `declaration-track:467da15bf245c864acbf252dbab8cc456e7dcbd4c6e15da96727c852cd5e6c00` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/instance--772e718e18516ffd49276e57.md) | 101 | `declaration-track:772e718e18516ffd49276e5750360e298f2648cf853c743c7c543ebb17f3994c` |
| 8 | `theorem` | [mul_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/mul-smul--d4a1e4fddaa8d44b0f7ad3de.md) | 110 | `result-track:d4a1e4fddaa8d44b0f7ad3de660178dafbdc249eed05ec3a48168221826272db` |
| 9 | `theorem` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/one-smul--04786a8c2036ce95d0959c19.md) | 117 | `result-track:04786a8c2036ce95d0959c1935100eec913f6297d7b53589d3d8563800cfaa46` |
| 10 | `theorem` | [fromCoset_eq_of_mem_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/fromcoset-eq-of-mem-range--7973640d0ac6730eec906c53.md) | 124 | `result-track:7973640d0ac6730eec906c53aa7a230f6ae040ada2cd108ce80d4f5bff598d8b` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/example--a666ac02e512716e8a2892c9.md) | 131 | `declaration-track:a666ac02e512716e8a2892c91b5c0968cb178cb8042a5e7ffb704056e1ee0238` |
| 12 | `theorem` | [fromCoset_ne_of_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/fromcoset-ne-of-nin-range--9ca9b9f5a326e9aa5e47f8f9.md) | 133 | `result-track:9ca9b9f5a326e9aa5e47f8f995da4e11d586050147b41b2768a74e36ef8d62fd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/instance--809ae86405315b8e435aa546.md) | 141 | `declaration-track:809ae86405315b8e435aa546fdc77793a59f5d84f84a8d31e72641b34382cadf` |
| 14 | `def` | [tau](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/tau--7d352ef807afe33dfb17df13.md) | 146 | `declaration-track:7d352ef807afe33dfb17df13e8cf9d690e97eae95f5dce44c71999efc0b6b95b` |
| 15 | `theorem` | [τ_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/apply-infinity--e389ecaba7de1d62249b027e.md) | 151 | `result-track:e389ecaba7de1d62249b027e4dd8a4100418e742d60a65d7ddbed17f1449191a` |
| 16 | `theorem` | [τ_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/apply-fromcoset--d2d1182568c8bfd1885e566c.md) | 154 | `result-track:d2d1182568c8bfd1885e566c230656e28eecc25cb25e83a343d8d5efbce6b5aa` |
| 17 | `theorem` | [τ_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/apply-fromcoset--6011cb193fe65e1532502cf6.md) | 157 | `result-track:6011cb193fe65e1532502cf63dc8b6903724d63842f1228b9b905fc288e45006` |
| 18 | `theorem` | [τ_symm_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/symm-apply-fromcoset--cb5472612a42bcc9138ce813.md) | 161 | `result-track:cb5472612a42bcc9138ce813ee8622ec886606a7efd15e21a00eda47686637b7` |
| 19 | `theorem` | [τ_symm_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/symm-apply-infinity--090ab6068470ea903d7a5b86.md) | 165 | `result-track:090ab6068470ea903d7a5b86224d52a446659ed3859547c6872cc3e824398ff5` |
| 20 | `def` | [g](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/g--27d9f6e73f1fd7dfa018fed5.md) | 172 | `declaration-track:27d9f6e73f1fd7dfa018fed5af99216e701b52fdde6c22a9dd4ac6a874771105` |
| 21 | `def` | [h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/h--eecec230915f413ff668bd82.md) | 193 | `declaration-track:eecec230915f413ff668bd82ad4cf507a494652345d05b321ef626cd4bbd4b2d` |
| 22 | `theorem` | [g_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/g-apply-fromcoset--c4d6ea27bbea4d079394a69e.md) | 213 | `result-track:c4d6ea27bbea4d079394a69ed45ffde5424e1bae66b42b5a3a86532f7bb140de` |
| 23 | `theorem` | [g_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/g-apply-infinity--98d5c485fd80ad8256f90723.md) | 217 | `result-track:98d5c485fd80ad8256f90723c25c6799ad6308f3570820d681ea2eb8e965c8ed` |
| 24 | `theorem` | [h_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/h-apply-infinity--d0d39d64a5ba85d3d2f79139.md) | 219 | `result-track:d0d39d64a5ba85d3d2f791393860a2f1b99d79d4c92c8cdf37bad67856defbf7` |
| 25 | `theorem` | [h_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/h-apply-fromcoset--8b8db4f8a07641b44551c6ec.md) | 225 | `result-track:8b8db4f8a07641b44551c6ecab6c3f45575df68b31018ca58315971c48f4ca0c` |
| 26 | `theorem` | [h_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/h-apply-fromcoset--29b62a765c8208476c5e976f.md) | 231 | `result-track:29b62a765c8208476c5e976f6ea5979dde69161d5f40ff0bd3a2016c09393214` |
| 27 | `theorem` | [h_apply_fromCoset_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/h-apply-fromcoset-nin-range--62850735ac98658a77866b69.md) | 235 | `result-track:62850735ac98658a77866b69d5a9b96d8b1dab766478560b3d3483beefee6b88` |
| 28 | `theorem` | [agree](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/agree--8a32825dd4dcbc666065c07e.md) | 247 | `result-track:8a32825dd4dcbc666065c07e60bc55f8159019fc71e983278bcabbc4319ad862` |
| 29 | `theorem` | [comp_eq](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/comp-eq--5a8359d7adb6142f8f1a2e1e.md) | 270 | `result-track:5a8359d7adb6142f8f1a2e1e4d70fd37990b68cbd1bfdb31c17c8aacc52b7b74` |
| 30 | `theorem` | [g_ne_h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/g-ne-h--2ca3ad7567e30f38ae113bff.md) | 278 | `result-track:2ca3ad7567e30f38ae113bff05f4d315d6a1a85ce5e9eddd45bf329b10a4138f` |
| 31 | `theorem` | [surjective_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/surjective-of-epi--7011f9b1455be3dc48075fee.md) | 287 | `result-track:7011f9b1455be3dc48075fee6952146bf45d4bdf0d9852c47121e860539241f7` |
| 32 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/epi-iff-surjective--6d92b0518f5981339d85e2c4.md) | 296 | `result-track:6d92b0518f5981339d85e2c4755d654bdef77783b82813da24a79da824b49f66` |
| 33 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/epi-iff-range-eq-top--6b16b4df82eef78d71c966be.md) | 299 | `result-track:6b16b4df82eef78d71c966be5d716ec6762454ed87b419ac1037a71b4aa3dfad` |
| 34 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/epi-iff-surjective--d01dbfb5c8bd3c48e1060401.md) | 309 | `result-track:d01dbfb5c8bd3c48e106040155eb21364bf8610dbc13eefb90d6d7d80b76c1f2` |
| 35 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/epi-iff-range-eq-top--64e6f7928dd43d91f6431489.md) | 316 | `result-track:64e6f7928dd43d91f6431489a6fbaab404685d245514350bf8375312c83cc85b` |
| 36 | `instance` | [forget_grp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/forget-grp-preserves-mono--53c2f47393ba7feadaac4ff4.md) | 327 | `declaration-track:53c2f47393ba7feadaac4ff4daf602f1cc1979118d6cede1039600893e8c1be1` |
| 37 | `instance` | [forget_grp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/forget-grp-preserves-epi--afded8f21227b3e5d1630fd0.md) | 331 | `declaration-track:afded8f21227b3e5d1630fd07b01f3107ddef320c8118b2b5db772f854697c46` |
| 38 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/ker-eq-bot-of-mono--95b5c52c64c23c10d3e31904.md) | 342 | `result-track:95b5c52c64c23c10d3e31904eaed1a323dafe939de4276c86018d256e6cdcac1` |
| 39 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/mono-iff-ker-eq-bot--07b621c08114a51f6d457ead.md) | 347 | `result-track:07b621c08114a51f6d457ead2f695596435054db45c79df8bbddc71f9a685437` |
| 40 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/mono-iff-injective--d895b74e2b1f861c6ee349d7.md) | 352 | `result-track:d895b74e2b1f861c6ee349d74d1e5ae9baa409c15c591c1d3d1b626a7449f7c4` |
| 41 | `theorem` | [range_eq_top_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/range-eq-top-of-epi--019693cb7f050c7d3c5adb0b.md) | 356 | `result-track:019693cb7f050c7d3c5adb0b477eb7d334fefa5b9bb73beaf0f3f6020ae47a77` |
| 42 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/epi-iff-range-eq-top--1685d111644030e67e6b313e.md) | 361 | `result-track:1685d111644030e67e6b313ee7dbb7a6c9a771e3de7c575d6f1a488e65000882` |
| 43 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/epi-iff-surjective--d01c2b489382f58d59005c32.md) | 367 | `result-track:d01c2b489382f58d59005c32190f7e64487436287b96541baf1e52615c33fd77` |
| 44 | `instance` | [forget_commGrp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/forget-commgrp-preserves-mono--42bc3f5ecc1aaa51111e418a.md) | 371 | `declaration-track:42bc3f5ecc1aaa51111e418af11660a247988e5055b400f844a8fa80422c5a28` |
| 45 | `instance` | [forget_commGrp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantd57d55f27eec151334ddbba96e0f40f232cefe00c2357db28ec4fdfaf4f3f847.lean/declarations/forget-commgrp-preserves-epi--dfd7cc96ee59ae87cded8860.md) | 375 | `declaration-track:dfd7cc96ee59ae87cded88604ce09f92f094e4f240bee3b50c86d579ae026ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
