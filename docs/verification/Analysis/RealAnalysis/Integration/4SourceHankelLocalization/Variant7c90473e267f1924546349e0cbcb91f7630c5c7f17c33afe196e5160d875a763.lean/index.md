# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.4SourceHankelLocalization.Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7571140908b4fa723225c10195a805dea55ff639",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7571140908b4fa723225c10195a805dea55ff639`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [overlapWindow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/overlapwindow--6e6ec630178e3c5e55767378.md) | 32 | `declaration-track:6e6ec630178e3c5e5576737867229728f8d8126f5b8ac8ed6e862fb839ef0e8c` |
| 2 | `theorem` | [overlapWindow_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/overlapwindow-measurable--6b69be4e1d6e291ce8153119.md) | 36 | `result-track:6b69be4e1d6e291ce8153119cab7f13a3cabeef6743cd607b13cb1f42dca4a92` |
| 3 | `theorem` | [overlapWindow_empty_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/overlapwindow-empty-iff--567ed372e26464b464e03e2a.md) | 40 | `result-track:567ed372e26464b464e03e2ad694110749109bf237b3cd247b06dc34cd0752c1` |
| 4 | `theorem` | [forward_atom_zero_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/forward-atom-zero-of-le--05765700620d089abfc9c1bd.md) | 46 | `result-track:05765700620d089abfc9c1bd0e2418abf16dfbdef019509ba4cbcc7c37d56a29` |
| 5 | `theorem` | [reflected_atom_zero_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/reflected-atom-zero-of-le--1000b74e5ffbec807c0d936e.md) | 56 | `result-track:1000b74e5ffbec807c0d936e26f2889590a06da391b0ef6661df36ebb1748b04` |
| 6 | `theorem` | [forwardProfile_zero_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/forwardprofile-zero-of-le--4980a0b1ec2e281726f6e815.md) | 66 | `result-track:4980a0b1ec2e281726f6e815e246014b97efc699c9e6c9a98095f7fae3f00db5` |
| 7 | `theorem` | [reflectedProfile_zero_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/reflectedprofile-zero-of-le--103ee1078bdbfe867dd9c418.md) | 75 | `result-track:103ee1078bdbfe867dd9c41830a81c8ef8ff022252de1f5cd0d2c4d102f2e099` |
| 8 | `theorem` | [profile_product_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/profile-product-zero-outside--aba244af4e13d0af96560e41.md) | 84 | `result-track:aba244af4e13d0af96560e4186ab25694ac4880f977863f9b388ae7892b72c69` |
| 9 | `def` | [localizedForwardProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localizedforwardprofile--d8aa5aeaf3a57a8754fd5eda.md) | 96 | `declaration-track:d8aa5aeaf3a57a8754fd5eda7dc5923bab678adb431bf86ab649af75bb043d47` |
| 10 | `def` | [localizedReflectedProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localizedreflectedprofile--7c749d7613daf7110aba8fde.md) | 100 | `declaration-track:7c749d7613daf7110aba8fdecc266862c223ab8d44446c0892c17a1dab670145` |
| 11 | `theorem` | [localized_product_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localized-product-eq--b5e97858e8a7fc7abfcf23cc.md) | 104 | `result-track:b5e97858e8a7fc7abfcf23cc6e232d631bcb07aea08847c4fea52fa66ddf0ea7` |
| 12 | `theorem` | [pairing_eq_overlap_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/pairing-eq-overlap-integral--8e53c7759945b1314a27a6c9.md) | 115 | `result-track:8e53c7759945b1314a27a6c903e7c7d93955baf9e7cab56ceca9857e86eb246a` |
| 13 | `theorem` | [localizedForwardProfile_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localizedforwardprofile-memlp--446f44947de6b0f5c4d756cc.md) | 128 | `result-track:446f44947de6b0f5c4d756ccf123ba36ee19102443d5d8daa35470b8f23a2e28` |
| 14 | `theorem` | [localizedReflectedProfile_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localizedreflectedprofile-memlp--d9e5f88bad89faf966fd4f64.md) | 134 | `result-track:d9e5f88bad89faf966fd4f646de4b667103ecc43f3a156f162bf56ec50ccf7a7` |
| 15 | `def` | [localizedForwardL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localizedforwardl2--7d476eef44eb49754886538d.md) | 140 | `declaration-track:7d476eef44eb49754886538d925a6cec26889dcc4f4ab5fa369190e4ef1ed94e` |
| 16 | `def` | [localizedReflectedL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localizedreflectedl2--f6542538fff83703c85dcb32.md) | 145 | `declaration-track:f6542538fff83703c85dcb32fc76206636a0777753e78bd9b817f133dda60db9` |
| 17 | `theorem` | [localized_l2_inner_eq_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localized-l2-inner-eq-pairing--7c06fbf2c2b65efcbcde7d87.md) | 150 | `result-track:7c06fbf2c2b65efcbcde7d8762d5d82b869e73a5b22455d32f4ad93d4bba1ea8` |
| 18 | `theorem` | [localized_signed_l2_energy_surplus](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localized-signed-l2-energy-surplus--d76f885a2ea6508c9ff76ed2.md) | 165 | `result-track:d76f885a2ea6508c9ff76ed25c9007a39f2c529db2588921a89331022147e5b9` |
| 19 | `theorem` | [localized_square_sectors_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localized-square-sectors-integrable--7845faddd752993e0f382bd4.md) | 175 | `result-track:7845faddd752993e0f382bd4157360963cee117dd02045dfd986630276a6b264` |
| 20 | `theorem` | [localized_signed_integral_surplus](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localized-signed-integral-surplus--6422be4c30ed0b8e2fcd5299.md) | 187 | `result-track:6422be4c30ed0b8e2fcd52999b2d83142522f9285a1239e428ac8c05243324b5` |
| 21 | `theorem` | [normalized_source_one_zero_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/normalized-source-one-zero-ne--ea654351ce9039919f289ba5.md) | 206 | `result-track:ea654351ce9039919f289ba57210cfe7eff705c00c5d7e9938cb32cdf7ccd439` |
| 22 | `theorem` | [localized_forward_atom_ne_original](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/declarations/localized-forward-atom-ne-original--bd216bd51822fa32d5767b74.md) | 217 | `result-track:bd216bd51822fa32d5767b7402c2219d95e389a8d59027dc449ecb414d3662cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
