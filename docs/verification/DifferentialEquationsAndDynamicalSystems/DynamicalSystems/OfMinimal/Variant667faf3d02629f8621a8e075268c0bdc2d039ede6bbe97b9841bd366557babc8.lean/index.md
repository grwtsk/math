# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.OfMinimal.Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe3da2656dfc755db1e455df63c338834da14c3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe3da2656dfc755db1e455df63c338834da14c3`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.Action.Regular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ContinuousPreimage` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeconst_of_dense_setOf_preimage_smul_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/aeconst-of-dense-setof-preimage-smul-ae--59602b0f7299d95bddb89df8.md) | 51 | `result-track:59602b0f7299d95bddb89df80e583fe03ae105520d08f032332595c2bd7b01da` |
| 2 | `theorem` | [aeconst_of_dense_setOf_preimage_smul_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/aeconst-of-dense-setof-preimage-smul-eq--f15ac2bca3d2672df2514334.md) | 61 | `result-track:f15ac2bca3d2672df251433452fad21371b9d70e85f6d303bdbc6a0b7b486599` |
| 3 | `theorem` | [ergodic_smul_of_denseRange_pow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/ergodic-smul-of-denserange-pow--abdf5d0927902644cb6b5008.md) | 73 | `result-track:abdf5d0927902644cb6b5008a828cc616e4007bf7a73d3f3d8cd9518fd4e5676` |
| 4 | `theorem` | [ErgodicSMul.trans_isMinimal](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/ergodicsmul-trans-isminimal--ee339455d817e8fdb3f5d953.md) | 96 | `result-track:ee339455d817e8fdb3f5d953d2aa42969f428e6f5c29d89007ce692b812a0e4c` |
| 5 | `theorem` | [aeconst_of_dense_aestabilizer_smul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/aeconst-of-dense-aestabilizer-smul--25872523b223b7f470ba99d9.md) | 118 | `result-track:25872523b223b7f470ba99d9178c8bb05290ee38e73e834acc4d0b71038e3b8d` |
| 6 | `theorem` | [ergodic_smul_of_denseRange_zpow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/ergodic-smul-of-denserange-zpow--f2499c211174fdb80956cc13.md) | 131 | `result-track:f2499c211174fdb80956cc137fa86ecc55112844e5cbc724ee0e4b71d939743c` |
| 7 | `theorem` | [DenseRange.zpow_of_ergodic_mul_left](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/denserange-zpow-of-ergodic-mul-left--c24025513f5dfdde33a528ac.md) | 152 | `result-track:c24025513f5dfdde33a528acf6e3d77aa1c3daae51653a9aa5e5c9888b3ec1fc` |
| 8 | `theorem` | [ergodic_mul_left_of_denseRange_pow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/ergodic-mul-left-of-denserange-pow--7e424c61c832cd7656b40f17.md) | 185 | `result-track:7e424c61c832cd7656b40f171a894cd9a3b9d20f34fd01de0c9b7805f1594c7c` |
| 9 | `theorem` | [ergodic_mul_left_of_denseRange_zpow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/ergodic-mul-left-of-denserange-zpow--2ead53790785966a8f679f6d.md) | 191 | `result-track:2ead53790785966a8f679f6df56dda255ce6b543a0b4ae1ccd2a4018f96a6bca` |
| 10 | `theorem` | [ergodic_mul_left_iff_denseRange_zpow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/ergodic-mul-left-iff-denserange-zpow--5a6c60168b53143018d98e7e.md) | 197 | `result-track:5a6c60168b53143018d98e7e6ccad7c698693a9af4ec6d23d7b80b5b6b641816` |
| 11 | `theorem` | [preErgodic_of_dense_iUnion_preimage_one](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/preergodic-of-dense-iunion-preimage-one--32e5bef7140d4bec631d4e09.md) | 216 | `result-track:32e5bef7140d4bec631d4e097e71bf28c1d7a2f4f3d3ad652ec55ae7932ddc59` |
| 12 | `theorem` | [ergodic_of_dense_iUnion_preimage_one](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variant667faf3d02629f8621a8e075268c0bdc2d039ede6bbe97b9841bd366557babc8.lean/declarations/ergodic-of-dense-iunion-preimage-one--45ad3d9ef38c370ae07d4a02.md) | 236 | `result-track:45ad3d9ef38c370ae07d4a0298d5093263b0de145d4b05415f4e265fcc03fffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
