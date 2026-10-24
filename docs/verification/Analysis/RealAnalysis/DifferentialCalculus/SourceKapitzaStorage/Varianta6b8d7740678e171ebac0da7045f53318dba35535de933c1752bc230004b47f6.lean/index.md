# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e62617613538707a7969b346bf1e7fecaffe00c8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e62617613538707a7969b346bf1e7fecaffe00c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/storage--db46929d468db5b9b2f32969.md) | 26 | `declaration-track:db46929d468db5b9b2f329690ec3a794e478e519a0960efa391f6eeb15b79d5d` |
| 2 | `def` | [initialStorage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/initialstorage--364be13ef17b6d693fb0f7ae.md) | 29 | `declaration-track:364be13ef17b6d693fb0f7aed3bcc9308dbd6dcde0f99b59c6f0d4b6fb23b67a` |
| 3 | `theorem` | [drift_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/drift-identity--fa7f2a8cdd2cf8fd8a605ac0.md) | 32 | `result-track:fa7f2a8cdd2cf8fd8a605ac03cd7f0b31e46525980ab7ca91c234787ebdda3c6` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/hasderivat-storage--02a2bd1059aee6ca3dc7018e.md) | 39 | `result-track:02a2bd1059aee6ca3dc7018e29191a9899683a4fdc78a51de4dcae066730941d` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/hasderivat-weight--136d8423188ed70640c3ce4a.md) | 48 | `result-track:136d8423188ed70640c3ce4a6ef9124dc86211a972dea03cf2a326dfbcb6a5c7` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/corrector-cancellation--0c2d5f0f9b4122af2a18fde9.md) | 55 | `result-track:0c2d5f0f9b4122af2a18fde973e770dd2c8ac5550a57da4ce985a8388441e0ad` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/hasderivat-corrector--8a9dc4131cfa7444e2901a60.md) | 61 | `result-track:8a9dc4131cfa7444e2901a60c40cf43e5db790a4209a1c9d15ea8f7e9ff68d24` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/jump-continuous-corrector--f958edec4e14ab14c5db45ff.md) | 71 | `result-track:f958edec4e14ab14c5db45ffaf62a247abd5e805a552fa4a039e70137f245fd4` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/jump-jumping-corrector--770d5fefd5159cd11ecaa65c.md) | 77 | `result-track:770d5fefd5159cd11ecaa65cba504dadc04ae8bb33fc45512d9b198d1cffa417` |
| 10 | `theorem` | [storage_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/storage-endpoint--67e68f26c75ecaf2d3acd716.md) | 84 | `result-track:67e68f26c75ecaf2d3acd716b1f87331be8590c1daed25343bad767390e8e237` |
| 11 | `theorem` | [storage_complete_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/storage-complete-square--1793e177f4b84d8fe289b17b.md) | 87 | `result-track:1793e177f4b84d8fe289b17be6b5abbf646d52ede66be6a45f13462bae019a2b` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/initialstorage-reconstruction--495ad1b4c3ef44ee0b79904d.md) | 93 | `result-track:495ad1b4c3ef44ee0b79904df018e1187ac1ba75b94da393af7f2916504139a1` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/initialstorage-abs-sub-four--ab696c2b4fd838b43730caee.md) | 99 | `result-track:ab696c2b4fd838b43730caee3292a37dcf21f9ebebdc94bac2d5a42cc279a6c4` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/initialstorage-abs-sub-four-linear--6b777ad6b6b560c84a9c16ed.md) | 120 | `result-track:6b777ad6b6b560c84a9c16edaf5cbf9318e155cdcef06dfe72231b65f19a7b87` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/initialstorage-epsilon--33b25b9ced3feae8705b0276.md) | 128 | `result-track:33b25b9ced3feae8705b02769996ba03488fb5204848ff75aed2d0dfde8a7c7b` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/obstruction-coefficients--97987edafaa2cd32d9c44c81.md) | 144 | `result-track:97987edafaa2cd32d9c44c8185bf8cf09edca22d73f1a864fd672b3a7d3adabb` |
| 17 | `theorem` | [obstruction_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/obstruction-product--ef8f94253c27a97a7a103a37.md) | 153 | `result-track:ef8f94253c27a97a7a103a376a652d43c5a16201d76b7d5a4945a38aadb5d82a` |
| 18 | `def` | [quadraticImpulse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticimpulse--5ec28c2fdd5a03fb703411d9.md) | 162 | `declaration-track:5ec28c2fdd5a03fb703411d9bf83019f116ab43a597dcc6a77b86e7fb8269160` |
| 19 | `def` | [quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticmajorant--b554c87278ac8dc5df8a3b3b.md) | 166 | `declaration-track:b554c87278ac8dc5df8a3b3b1e160ba54aa42874df682e7b03e7cc129ed5afcf` |
| 20 | `def` | [quadraticPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticprimitive--741def7a0f3b3e20879bbdb5.md) | 170 | `declaration-track:741def7a0f3b3e20879bbdb5e07a79403be27b0950343874deefbb0ebdf28959` |
| 21 | `def` | [quadraticConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticconstant--6649917d6f79ad1573b22641.md) | 174 | `declaration-track:6649917d6f79ad1573b22641071f467d0179bb51f30144927362495cdb42010f` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticimpulse-nonneg--22098753eee0ab749603cd89.md) | 176 | `result-track:22098753eee0ab749603cd89e9c7aecd298ebfa347f7022f0bac7cbb2f485411` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticimpulse-le-log--745922b132eada83321637fa.md) | 181 | `result-track:745922b132eada83321637fa42fe002811f72b70f7ba48c57a2be19fb05378c9` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/log-atom-le-quadraticmajorant--cfca39e256f0220725aa5399.md) | 188 | `result-track:cfca39e256f0220725aa5399949f8ecd469054d1fd1321d10ce2f226afd15bd1` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticprimitive-hasderivat--4e7cb7126c2ec7513c577234.md) | 204 | `result-track:4e7cb7126c2ec7513c577234a4057b01e2bc350ecc777a9912dda4c62f0fceee` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticprimitive-one--1831c76fc2dc4a59749c5c17.md) | 239 | `result-track:1831c76fc2dc4a59749c5c171617124b7054a5754ac30ba6426b6f8b54377fa0` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticprimitive-nonpos--967edd3c47032d8801cd35c9.md) | 243 | `result-track:967edd3c47032d8801cd35c9447000641fc41bdac70d488372663c1c287f2fb6` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticmajorant-continuouson--244945763d58bb160af2de82.md) | 252 | `result-track:244945763d58bb160af2de826895687e2ebb090208cbb94e025575e94507b8e2` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticmajorant-integral--df31d14595568a1efd78df63.md) | 262 | `result-track:df31d14595568a1efd78df63934250ee52c96c5d4e3a4b4612e26712adc8dd0e` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticmajorant-integral-le--9df16ade9b7e017eb2f10cd1.md) | 275 | `result-track:9df16ade9b7e017eb2f10cd1baa95e01bc7dd7a3f9548c2ae2916abf32f1175f` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticimpulse-sum-le--2638971d0786e9841f2c1ab4.md) | 282 | `result-track:2638971d0786e9841f2c1ab44b8d812c169d04ce4a2964ea00b4f80942785c58` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6.lean/declarations/quadraticimpulse-closed-cutoff-le--8c89256d80dcb2ed0bd73018.md) | 324 | `result-track:8c89256d80dcb2ed0bd7301858c7922c9f93458072bde0b699a8385b605de9a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
