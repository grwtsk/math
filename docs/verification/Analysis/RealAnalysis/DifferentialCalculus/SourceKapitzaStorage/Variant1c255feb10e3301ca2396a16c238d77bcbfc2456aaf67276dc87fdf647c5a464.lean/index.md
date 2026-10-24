# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb537056757731e4111de3ee0201af57743032d1",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb537056757731e4111de3ee0201af57743032d1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/storage--ad354ba9154f7aa63e8d47cf.md) | 34 | `declaration-track:ad354ba9154f7aa63e8d47cf84abc944ea04217708860ef2ee484353fdf73e63` |
| 2 | `def` | [initialStorage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/initialstorage--68b175ee8e5fb2621dec266c.md) | 37 | `declaration-track:68b175ee8e5fb2621dec266c677500fb3aa9aa72d94d8384b587891a52337198` |
| 3 | `theorem` | [drift_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/drift-identity--9eb00813bff05941041df37d.md) | 40 | `result-track:9eb00813bff05941041df37d8911ed702e41829aea2d30ecef5d0cb847b59ad8` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/hasderivat-storage--b4b3cde5baa4080350321bb6.md) | 47 | `result-track:b4b3cde5baa4080350321bb6d29aef8ffe46077e7e10c6307c0ba8d74cfbad37` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/hasderivat-weight--1d95f58bffa349ad9134c783.md) | 56 | `result-track:1d95f58bffa349ad9134c7837f071767e8b9249b8cee1973bda6ffdd766a46ff` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/corrector-cancellation--52d20bec6e304c11abc00e2b.md) | 63 | `result-track:52d20bec6e304c11abc00e2b044d3bc271e5f686774978a9945595e7aa04e24e` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/hasderivat-corrector--f89038da642a73c45e0066c5.md) | 69 | `result-track:f89038da642a73c45e0066c5bf731de1623b6c73c5aab8895ac8a34811078593` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/jump-continuous-corrector--fd908e3caf622d8f51d22953.md) | 79 | `result-track:fd908e3caf622d8f51d229532c6c675dbaffad4f015e2d2cd674b7738291a981` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/jump-jumping-corrector--3c4d44f4d9217109cdee0f71.md) | 85 | `result-track:3c4d44f4d9217109cdee0f714a4312f989bd10d953a372f9bf0937ab3ba1852e` |
| 10 | `theorem` | [storage_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/storage-endpoint--417ae5b270574292d5a396d4.md) | 92 | `result-track:417ae5b270574292d5a396d4ee536c881a31324838188ad28ee5c03a6f90f5a0` |
| 11 | `theorem` | [storage_complete_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/storage-complete-square--590ab2671f3771fe2f576e85.md) | 95 | `result-track:590ab2671f3771fe2f576e8561433b61686bb60ecb42ec33baf52371f6e3dcbb` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/initialstorage-reconstruction--3f5d4dab79c3e33a16746952.md) | 101 | `result-track:3f5d4dab79c3e33a16746952af62026e7564ad5ae0b3ad010dcb412858cd1999` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/initialstorage-abs-sub-four--1755d8bbabb82feb19722817.md) | 107 | `result-track:1755d8bbabb82feb19722817b3d262d3a3d71b964a408c1c04ed78725e0a1502` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/initialstorage-abs-sub-four-linear--293ab726b049f0d466195997.md) | 128 | `result-track:293ab726b049f0d466195997144e9d6a472ba9e718aaf36d4f9445875d7b8778` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/initialstorage-epsilon--97899cee4bd1f5bbd59da243.md) | 136 | `result-track:97899cee4bd1f5bbd59da243f945dce5ff82a2d374ef784867a6cdb6c4d4fcb6` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/obstruction-coefficients--b699e589d44afe3f44b2c067.md) | 152 | `result-track:b699e589d44afe3f44b2c067c30c83bafc0e89a8354c17ba08d0958455ef195f` |
| 17 | `theorem` | [obstruction_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/obstruction-product--8dcc98cc4309d763e4c2dec4.md) | 161 | `result-track:8dcc98cc4309d763e4c2dec4b5f9e51d6179db1140ab220a6204fe9cc84cbba9` |
| 18 | `def` | [quadraticImpulse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticimpulse--c730e80b6a1193c9f92d9ff4.md) | 170 | `declaration-track:c730e80b6a1193c9f92d9ff4981abf930adc2949a9ee7fecf8185c4ae9e5f3dd` |
| 19 | `def` | [quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticmajorant--7ba9c9913f8439a1e93cc001.md) | 174 | `declaration-track:7ba9c9913f8439a1e93cc001049d36c6099118a7ff510dd1321c298a586aaaad` |
| 20 | `def` | [quadraticPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticprimitive--6840fbfc03135392ad969e80.md) | 178 | `declaration-track:6840fbfc03135392ad969e80b1d83d7b52bb22ba16aa196ec844972937855e45` |
| 21 | `def` | [quadraticConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticconstant--252cb3fd1483b14e99dcf0c2.md) | 183 | `declaration-track:252cb3fd1483b14e99dcf0c26570d44eb0e00aa69168caa17d97491ad27e0295` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticimpulse-nonneg--72bf27f1d20690b6c7672b01.md) | 185 | `result-track:72bf27f1d20690b6c7672b015c9b58efa05282daa1f10f07bff327bd87948862` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticimpulse-le-log--1a623208d4b7983f1451cc3b.md) | 190 | `result-track:1a623208d4b7983f1451cc3be73b2ea30ece6c19a58d28921bf8dbcd6e5b27b9` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/log-atom-le-quadraticmajorant--96b52ac9a0779227f66dd5d9.md) | 197 | `result-track:96b52ac9a0779227f66dd5d95f9bf522e4334b65db700a9c7e91f2746ac87c83` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticprimitive-hasderivat--0a059e94cc70c09a2c615171.md) | 213 | `result-track:0a059e94cc70c09a2c615171dc8439cf03eb9a29189efb0f3649f01900feace0` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticprimitive-one--beac35daa19c1b778cfce698.md) | 248 | `result-track:beac35daa19c1b778cfce698ce9e57d0a9e0dc18ab525632139788430ff4b923` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticprimitive-nonpos--7b3122a628f55ec3ad3dca7f.md) | 252 | `result-track:7b3122a628f55ec3ad3dca7f96211cb253fed7ec5499836f90e2a2722dbc6d24` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticmajorant-continuouson--8db9fc9a4eedd6b052dd6694.md) | 261 | `result-track:8db9fc9a4eedd6b052dd6694446486e6e4affc17108d67b7b78c6c490838a1de` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticmajorant-integral--efc4d86f5a167286dfa4d420.md) | 271 | `result-track:efc4d86f5a167286dfa4d420f4900c3dfec69c2bf5bba68b0448ea558496718c` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticmajorant-integral-le--b7a203730e4a26749b4fbf66.md) | 284 | `result-track:b7a203730e4a26749b4fbf66f11992fad663dac817667975d6f72eac96f5ab68` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticimpulse-sum-le--c17fb4af0c7cd7615bc70825.md) | 291 | `result-track:c17fb4af0c7cd7615bc708255f83a7999aca3cdea8e839de9400ddcc8a2dd2b8` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/declarations/quadraticimpulse-closed-cutoff-le--3c3db65bddfbe33ca82d06f8.md) | 333 | `result-track:3c3db65bddfbe33ca82d06f81b0958437791b624d9c36291f7876d85ed26f94a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
