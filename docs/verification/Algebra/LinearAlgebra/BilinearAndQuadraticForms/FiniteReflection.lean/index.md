# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.FiniteReflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b54d24eb1a0ccd89308144c3e4838b5ca3bbe2b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b54d24eb1a0ccd89308144c3e4838b5ca3bbe2b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Std` — import line 2; external provider; requires a separately pinned dependency.
- `Init.Data.Rat` — import line 3; external provider; requires a separately pinned dependency.
- `Init.GrindInstances.Ring.Rat` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [V](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/v--9fe5efa9d43093931982a04f.md) | 15 | `declaration-track:9fe5efa9d43093931982a04f9e9f6a09e9dbc0e6c9b38925f416a57ee2744859` |
| 2 | `abbrev` | [Flags](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/flags--73152aa9aadf05ef9976953d.md) | 16 | `declaration-track:73152aa9aadf05ef9976953d45f83e9e2d882e567094aaf9b9d6477303a788b9` |
| 3 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/zero--c8393d748487ce36c9c05424.md) | 18 | `declaration-track:c8393d748487ce36c9c05424aad0bbe0c93dafd1ebe284962922e3ced907e310` |
| 4 | `def` | [uniform](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/uniform--24e9c427db20b020b7283dc1.md) | 19 | `declaration-track:24e9c427db20b020b7283dc126a34c1c0b02cb06ef2e3297144e0b115510c601` |
| 5 | `def` | [dot](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/dot--e4c486cd16dd5a1c01386357.md) | 20 | `declaration-track:e4c486cd16dd5a1c0138635768a8ad4cc1c42d248ff99356747549b74df2dda8` |
| 6 | `def` | [normSq](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/normsq--9d698f2d93f7df7859bb6088.md) | 21 | `declaration-track:9d698f2d93f7df7859bb60881e6dfd6bc3f65894528ced0a65dd0d0ae1d1400b` |
| 7 | `def` | [mean](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/mean--e9e632f2d1e048483708594d.md) | 22 | `declaration-track:e9e632f2d1e048483708594d883f4d438e214b1e232676ff4592a383dee7b250` |
| 8 | `def` | [harmonic](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/harmonic--28c0411408e4188d9aa3dd48.md) | 23 | `declaration-track:28c0411408e4188d9aa3dd48699b6b8fc6721325e3c80fa0e9cdafdab0d47141` |
| 9 | `def` | [diffuse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/diffuse--6d6889569bf26fa270fd4b7d.md) | 24 | `declaration-track:6d6889569bf26fa270fd4b7d4154f9c2bababe04a209593507ba2c284af56100` |
| 10 | `def` | [laplacian](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/laplacian--454572c09167a094d7ebc75d.md) | 25 | `declaration-track:454572c09167a094d7ebc75d07f1f9de34be47f7d29007b65dc41ad6563c5249` |
| 11 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/flip--5529ee235d00063f35ef65b2.md) | 26 | `declaration-track:5529ee235d00063f35ef65b21b3d4edc7c9887d7dbb557e06c6517ae48016f3b` |
| 12 | `def` | [phase](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/phase--6420a1eb54ac935d6aade51f.md) | 27 | `declaration-track:6420a1eb54ac935d6aade51f24e8f9f42eec46bd22a1762cc2000461ee58b3d2` |
| 13 | `def` | [step](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/step--3ab845e3b995c5dac5de5438.md) | 28 | `declaration-track:3ab845e3b995c5dac5de5438b28c0f56bc1473c572d6453c14c0d023eb1cddc2` |
| 14 | `def` | [inverseStep](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/inversestep--89ed3522aa6e7ce0c63a71dd.md) | 29 | `declaration-track:89ed3522aa6e7ce0c63a71dd4e0952a5ea717c4edc2dd2ea8673b802485c65d1` |
| 15 | `theorem` | [flip_involution](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/flip-involution--7c865ccf511bc5a7f1692679.md) | 31 | `result-track:7c865ccf511bc5a7f16926795a6c185abd63f4bb661b330d22080477fa4dae5c` |
| 16 | `theorem` | [flip_square](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/flip-square--09425adb08da0fc30c83f68f.md) | 34 | `result-track:09425adb08da0fc30c83f68f25b7b4454e4b21eacc0faf3191e92bca0defba4c` |
| 17 | `theorem` | [phase_involution](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/phase-involution--571613cbf46e1447b12c5de6.md) | 37 | `result-track:571613cbf46e1447b12c5de6e9c2b05eb3d4d5fb90b740b16951cd180b9ae5e3` |
| 18 | `theorem` | [phase_norm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/phase-norm--c29ca64d3791e9fa4b03559e.md) | 40 | `result-track:c29ca64d3791e9fa4b03559e358b2fbc100f1ee9f0d969ea7dc5032b3fda7f18` |
| 19 | `theorem` | [harmonic_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/harmonic-idempotent--e4e1d5da3e275fe47a640dd6.md) | 43 | `result-track:e4e1d5da3e275fe47a640dd62cef8bcff1a93776967ea700028766c1d069a5bb` |
| 20 | `theorem` | [harmonic_kernel](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/harmonic-kernel--d31f529231999bb1b7aceaa0.md) | 51 | `result-track:d31f529231999bb1b7aceaa0aebe7f09e500be1d25487172fcbf44afdd4a399d` |
| 21 | `theorem` | [diffusion_involution](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/diffusion-involution--8833cac4b231e9bf155b9b44.md) | 59 | `result-track:8833cac4b231e9bf155b9b447b1aa2f40588601667d464cfd08414ddfa473a7a` |
| 22 | `theorem` | [diffusion_norm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/diffusion-norm--ccbc7bac71d3d6cf19f5e062.md) | 66 | `result-track:ccbc7bac71d3d6cf19f5e0623a49cb81dd2e232edc5cffdde81e58d22e501093` |
| 23 | `theorem` | [step_norm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/step-norm--76cc9206b28e4247e8f61980.md) | 70 | `result-track:76cc9206b28e4247e8f619800a3a9f20a4c3ed854d45ef89e1a77c1e027755e7` |
| 24 | `theorem` | [inverse_step](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/inverse-step--38136a7fbd69930d63e93321.md) | 73 | `result-track:38136a7fbd69930d63e93321bbaf9ced4ebd1af4a84663231df6182e1e428b57` |
| 25 | `theorem` | [uniform_normalized](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/uniform-normalized--c6640b8543e396b8425bead6.md) | 76 | `result-track:c6640b8543e396b8425bead6439ac09e22a2430efddc74dd24fc173824a64c25` |
| 26 | `theorem` | [single_marked_example](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/single-marked-example--cbbd28dbc15ba80cb0866e4b.md) | 80 | `result-track:cbbd28dbc15ba80cb0866e4b359f4a0864e16f3aa0a6738bd58f2e19fbf4e432` |
| 27 | `def` | [halfHeat](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/halfheat--2be2dce93dffee144e987edc.md) | 85 | `declaration-track:2be2dce93dffee144e987edca3da929440e43a7f8818270e38ca1f90eb7ee746` |
| 28 | `theorem` | [heat_is_not_diffusion](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FiniteReflection.lean/declarations/heat-is-not-diffusion--1b5cb0be73819db83ca7d2b5.md) | 88 | `result-track:1b5cb0be73819db83ca7d2b5b50439f798f71391de294c1d6de1e5370483ae37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
