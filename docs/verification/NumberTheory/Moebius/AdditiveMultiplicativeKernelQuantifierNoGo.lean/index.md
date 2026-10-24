# Verification target: GRWTSK.NumberTheory.Moebius.AdditiveMultiplicativeKernelQuantifierNoGo

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce245b9cf4572583235440da5bb4a62bed514784",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce245b9cf4572583235440da5bb4a62bed514784`.

Source path: `GRWTSK/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AdditiveMultiplicativeBridgeObstruction`](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [additivePairKernelTransform_empty](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/additivepairkerneltransform-empty--3f581e719094c52194e247ad.md) | 38 | `result-track:3f581e719094c52194e247adf68879f49a33dc33d8bc5711a0cf57f412f06f37` |
| 2 | `theorem` | [coefficientKernel_allPackets_forces_zero](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/coefficientkernel-allpackets-forces-zero--220d7849caced033c05a7ae2.md) | 46 | `result-track:220d7849caced033c05a7ae288ac7530ea13f2cce96b5178b50711a224f12500` |
| 3 | `def` | [twoFactorization](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/twofactorization--774d3daeab6e639af04fb299.md) | 57 | `declaration-track:774d3daeab6e639af04fb29970aaebb517f1345a71b5abff6311ac9b43468043` |
| 4 | `theorem` | [twoFactorization_coefficient_eq_log_two](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/twofactorization-coefficient-eq-log-two--b0b76debe2552e57afdd510a.md) | 64 | `result-track:b0b76debe2552e57afdd510a4a4f7e9ee845e9d47974abca21103f192d61d647` |
| 5 | `theorem` | [twoFactorization_coefficient_pos](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/twofactorization-coefficient-pos--95ee9f5e0d7503ef10a93d60.md) | 71 | `result-track:95ee9f5e0d7503ef10a93d6004cac2ff5b48b5184c8faaca5fa76aa0e097a6e3` |
| 6 | `theorem` | [not_additiveMultiplicativeCoefficientKernelExists](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/not-additivemultiplicativecoefficientkernelexists--c291dbaf8fede1c1b125ef4d.md) | 78 | `result-track:c291dbaf8fede1c1b125ef4dc4d2485b4a2d6bff427293e39524f1aeeae54763` |
| 7 | `theorem` | [additiveMultiplicativeNormControlledKernelExists_zero](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/additivemultiplicativenormcontrolledkernelexists-zero--18aad6c58541ecf114374a68.md) | 89 | `result-track:18aad6c58541ecf114374a685ee6f1b9d7e2c526f4ce6815b8349f87397fbfd5` |
| 8 | `theorem` | [additiveMultiplicativeKernelQuantifierObstruction](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeKernelQuantifierNoGo.lean/declarations/additivemultiplicativekernelquantifierobstruction--26e9760ff119a625d6b08f06.md) | 98 | `result-track:26e9760ff119a625d6b08f0632504e505e39c23350d8475303fa08fa45e2a29d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
