# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KQHContactGeometry.Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe16657580d006883c7642cd709f976733622e5d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe16657580d006883c7642cd709f976733622e5d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Trigonometric` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Push` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/point--68880c940172a32a19518cdf.md) | 26 | `declaration-track:68880c940172a32a19518cdf6d51b2162d3cc9ab60fee7bf17abb5a40f3e99ec` |
| 2 | `def` | [flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow0--1f355a553b22f89811798a43.md) | 29 | `declaration-track:1f355a553b22f89811798a43f02c579155da121918331f9218459b5f39c067cd` |
| 3 | `def` | [flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow1--53bfe9ced89a7a809773dda0.md) | 32 | `declaration-track:53bfe9ced89a7a809773dda0b322a3c3359c5ceaaf42278f31ea12f9b8e9b024` |
| 4 | `def` | [central](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/central--b03d9c4dfecf65537e700d71.md) | 35 | `declaration-track:b03d9c4dfecf65537e700d713056a5c7eaa46322913e32e8dd7a9350fa54fa85` |
| 5 | `theorem` | [flow0_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow0-add--1a26a7fb360c9f63fb49da2b.md) | 37 | `result-track:1a26a7fb360c9f63fb49da2bb33947e9345297e4b3eff3dd5ebc55dd8d519ae8` |
| 6 | `theorem` | [flow1_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow1-add--ecd71d68256e2e16c2a7a3ba.md) | 40 | `result-track:ecd71d68256e2e16c2a7a3ba31300cc4e332755fdd83c103f6b96420d14e0752` |
| 7 | `theorem` | [flow0_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow0-inverse--a0c8326bb1e1e6d7dea2b484.md) | 43 | `result-track:a0c8326bb1e1e6d7dea2b484958a3a9a9cf0bc74d6ff0fdb15f1ace919f7c446` |
| 8 | `theorem` | [flow1_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow1-inverse--c98470847c29427435e79920.md) | 46 | `result-track:c98470847c29427435e79920d5604331f7623a89ff16d42557f7c1056b849acd` |
| 9 | `theorem` | [contact_loop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/contact-loop--56ff87536abe8d4cf903eeb0.md) | 50 | `result-track:56ff87536abe8d4cf903eeb0db49719a040e612c4d964e3b12b7fdc1fdb6cacd` |
| 10 | `def` | [field0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/field0--c112bfbe7bf9c011658be0db.md) | 55 | `declaration-track:c112bfbe7bf9c011658be0db5fac21644400af91ade594bfc92ccc745747efba` |
| 11 | `def` | [field1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/field1--b3adc83a8af510e4cb816854.md) | 58 | `declaration-track:b3adc83a8af510e4cb816854dc2fa14c278a4feccfb7e32804adc9fefcc17a12` |
| 12 | `theorem` | [flow0_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow0-derivative--2a84eef8f70e1f67923c0516.md) | 60 | `result-track:2a84eef8f70e1f67923c0516f5f7e2ebcd083f022a82eac117a8661d1708457e` |
| 13 | `theorem` | [flow1_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/flow1-derivative--cd55b8777c4e532362265755.md) | 67 | `result-track:cd55b8777c4e5323622657554ef1e31f71bacd96e85c6c69f8aaab1cb8633742` |
| 14 | `theorem` | [field0_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/field0-directional-derivative--1f92e5f18c02ad1af198ab7d.md) | 75 | `result-track:1f92e5f18c02ad1af198ab7d53308e913483e970e80f0000f59a3c3c4902252b` |
| 15 | `theorem` | [field1_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/field1-directional-derivative--1a83ca2d10e1d7105b4fd9c4.md) | 81 | `result-track:1a83ca2d10e1d7105b4fd9c4d2f9e701f935a1fd091c2757cf62a51e0242484b` |
| 16 | `def` | [bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/bracket--ba58942d2d54bbc891a01638.md) | 87 | `declaration-track:ba58942d2d54bbc891a01638b062729d057a7c63da82be86f795c920495a4f01` |
| 17 | `theorem` | [contact_bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/contact-bracket--acbbe977f65137d806c5d7b0.md) | 89 | `result-track:acbbe977f65137d806c5d7b0c5d1ed9a8fe7bfe1ebdd03a1b2b88ef33aae3c79` |
| 18 | `def` | [segment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/segment--083fb85a4d71821c62e7f91c.md) | 93 | `declaration-track:083fb85a4d71821c62e7f91ced04e57b65aa7f0f50be1bbf2d2c049a4707c8ec` |
| 19 | `theorem` | [segment_horizontal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/segment-horizontal--107333cb76f2ffd4642ff28c.md) | 96 | `result-track:107333cb76f2ffd4642ff28cbc13a570c0e209baec394eea9460acb0b91ef7bc` |
| 20 | `def` | [endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpoint--741852569cc12516f14b2cdb.md) | 102 | `declaration-track:741852569cc12516f14b2cdba79b1dee0ebb5f66d14f50147f7da3ccc59a69ab` |
| 21 | `theorem` | [endpoint_formula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpoint-formula--8eb8a429c3c25b45979e49bc.md) | 106 | `result-track:8eb8a429c3c25b45979e49bc61b15b8662c4e645854a4e589cd2e8638dcf9edd` |
| 22 | `def` | [endpointJacobian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpointjacobian--56cbb553ce3312f1474d9188.md) | 115 | `declaration-track:56cbb553ce3312f1474d9188555d5f363cd9c678ac160a26b2db672e7a2598c1` |
| 23 | `theorem` | [endpoint_Y_partial1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpoint-y-partial1--7a4ca54f26758ec4f82f6d66.md) | 121 | `result-track:7a4ca54f26758ec4f82f6d66c561b778d611b6907cfe7a8fb973f3520e458f68` |
| 24 | `theorem` | [endpoint_Y_partial2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpoint-y-partial2--6d5e32ab9fd72e477dfc42d4.md) | 131 | `result-track:6d5e32ab9fd72e477dfc42d44cb989590e8d5e58b7d6dcc3fcf6d76df016afbd` |
| 25 | `theorem` | [endpoint_Y_partial3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpoint-y-partial3--70c0de9a0d104eb4879972d7.md) | 140 | `result-track:70c0de9a0d104eb4879972d78f8a75776114fe55dd1f3dee7d17bcc753f3a4d6` |
| 26 | `theorem` | [endpoint_jacobian_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpoint-jacobian-det--1f7117db050da40a6614969a.md) | 149 | `result-track:1f7117db050da40a6614969a41924d504b9cb0d071d66b6eeccf3d73929309c6` |
| 27 | `theorem` | [endpoint_fiber_moments](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/endpoint-fiber-moments--12c0f5edf88e9c7efe50db21.md) | 157 | `result-track:12c0f5edf88e9c7efe50db2142ac0732500b890f55600a01e787ad8cd936cceb` |
| 28 | `theorem` | [centered_residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/centered-residual--4d57e12c6b14367757c66c61.md) | 173 | `result-track:4d57e12c6b14367757c66c61baefb4a48197e1d3a74a72e8a1180a524a07af60` |
| 29 | `theorem` | [centered_residual_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/centered-residual-bound--426e6cf1201423d09a4eb723.md) | 178 | `result-track:426e6cf1201423d09a4eb723115a1775fd50e4611733723323b6f1bc66b23ec7` |
| 30 | `def` | [phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/phase--e393306d2e225760e35ae4ed.md) | 185 | `declaration-track:e393306d2e225760e35ae4ed36c10c2a672eb1853e5dbd86bcf406e3afb72a0a` |
| 31 | `theorem` | [phase_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/phase-add--afde3f9a11e4def857d047f9.md) | 187 | `result-track:afde3f9a11e4def857d047f9b53e319f6a86c64f0761e3adadbb9667dd8ac348` |
| 32 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/phase-norm--074e9a31adf5caa025e06048.md) | 194 | `result-track:074e9a31adf5caa025e06048f02e9887849b0f52b6a1dfcefe84aaba567ad19f` |
| 33 | `def` | [U](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/u--85310bac3f1c00a1783a472b.md) | 198 | `declaration-track:85310bac3f1c00a1783a472bdc85919251b67e64fed71fb306f50abb341ff0d0` |
| 34 | `def` | [V](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/v--08b27b8c8ecdddd77fbcde60.md) | 202 | `declaration-track:08b27b8c8ecdddd77fbcde604ff9535e0b5283bae129916035687519a6626eea` |
| 35 | `def` | [centralMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/centralmode--a8772ebc58b3c91930c69f4b.md) | 206 | `declaration-track:a8772ebc58b3c91930c69f4b8f821afe53228091f1b8a188b57aac13974de6f1` |
| 36 | `theorem` | [pullback_flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/pullback-flow0--99638b293ce1f070985c61d3.md) | 209 | `result-track:99638b293ce1f070985c61d3fbcba98d9900863d6fc234055eefcfe1ff673b75` |
| 37 | `theorem` | [pullback_flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/pullback-flow1--38f1fae1a9ea9e13c844092d.md) | 215 | `result-track:38f1fae1a9ea9e13c844092d7fd22223220ee203a2caf29a1bd3d8caf9f6033b` |
| 38 | `theorem` | [fiber_weyl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/fiber-weyl--3c097e16347612fda6f79033.md) | 221 | `result-track:3c097e16347612fda6f79033469d1217b68759341b336e37e731ac0ad311d2b3` |
| 39 | `theorem` | [U_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/u-comp--91b7a49f980b3c135cc43c2a.md) | 226 | `result-track:91b7a49f980b3c135cc43c2a768601592332929750024af27b7952f752062ab6` |
| 40 | `theorem` | [V_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/v-comp--aa43975c84ba71c9bb440901.md) | 231 | `result-track:aa43975c84ba71c9bb44090194a9b62a2c32d147b330d56718f8e0e87983eefe` |
| 41 | `theorem` | [U_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/u-inverse--a53b8940059f9f97482cc01f.md) | 236 | `result-track:a53b8940059f9f97482cc01fc279688e712e27ad5ebcb5c2a4f6b80f0436722d` |
| 42 | `theorem` | [V_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/v-inverse--a61db92efbc2a4f8eede2c9a.md) | 241 | `result-track:a61db92efbc2a4f8eede2c9abc37c00cb25f10dcd5610a381d56c203e776662b` |
| 43 | `theorem` | [U_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/u-norm--f2c886e29253ec44a31f3ab9.md) | 246 | `result-track:f2c886e29253ec44a31f3ab9ee43d576b2ffb5d1e30a96b427ee93d15a6309e8` |
| 44 | `theorem` | [V_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2b04338360281086e212d51f3c1a59c3246e34e667b50c908881ebda0af991ad.lean/declarations/v-norm--d345dfb5c3524c3f8bc9fcf5.md) | 250 | `result-track:d345dfb5c3524c3f8bc9fcf59b9c643210fdf45c7a4fb3f57bd882351570bb13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
