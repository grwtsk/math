# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerSampleNonnegative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "978ba118c3b456f2d8ce0038edd7d0943b0b0f38",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `978ba118c3b456f2d8ce0038edd7d0943b0b0f38`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerDiscreteReproduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetricTriangularKernel_re_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean/declarations/symmetrictriangularkernel-re-nonnegative--fea85e9e36b2cae8f45e7c93.md) | 14 | `result-track:fea85e9e36b2cae8f45e7c9359fe71a3b84397dce475153714370eb0c41c4139` |
| 2 | `theorem` | [periodFourXSampledKernelNonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean/declarations/periodfourxsampledkernelnonnegative--6445a9ac71de0d80c90dcc22.md) | 38 | `result-track:6445a9ac71de0d80c90dcc22ff27c6342c27d4107d32e745a7da2ae7ed27040d` |
| 3 | `def` | [PeriodFourXSampledKernelMassOneOnlyFrontier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean/declarations/periodfourxsampledkernelmassoneonlyfrontier--201b697f3e32980c0b800059.md) | 53 | `declaration-track:201b697f3e32980c0b800059f2874a0b4c5bae1a0e2c4e7e393ab68edcdcb691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
