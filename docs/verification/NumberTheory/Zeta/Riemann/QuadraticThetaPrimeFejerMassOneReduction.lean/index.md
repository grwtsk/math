# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMassOneReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c519b6630c64dfb533b33895a6335d9a0b156a2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c519b6630c64dfb533b33895a6335d9a0b156a2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerSampleNonnegative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerSampleNonnegative.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PeriodFourXFourierModeOrthogonalityClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/declarations/periodfourxfouriermodeorthogonalityclaim--b40b226da7322d562e66e417.md) | 16 | `declaration-track:b40b226da7322d562e66e417a53f15282ce8f4f6cd9f98cfe8d9468002f7dea1` |
| 2 | `theorem` | [periodFourX_zero_mode_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/declarations/periodfourx-zero-mode-sum--5084fb7d4db7790eb94e0562.md) | 29 | `result-track:5084fb7d4db7790eb94e05622136846eb42dd04ea6bbe9ff933c48cb61be4d89` |
| 3 | `theorem` | [fourierModeOrthogonality_to_kernelComplexMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/declarations/fouriermodeorthogonality-to-kernelcomplexmass--0841868f9a5d7b70a1bcffc2.md) | 41 | `result-track:0841868f9a5d7b70a1bcffc20b5fa583ee9a778bfca23fd29cd0e8b043403678` |
| 4 | `theorem` | [fourierModeOrthogonality_to_sampledKernelMassOne](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/declarations/fouriermodeorthogonality-to-sampledkernelmassone--7a97b1600f9bdfd225cd213b.md) | 91 | `result-track:7a97b1600f9bdfd225cd213b29d9937e5d305518ac38f3fafaa6b709db42c8a1` |
| 5 | `def` | [PeriodFourXMassOneReducedFrontier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/declarations/periodfourxmassonereducedfrontier--ae98edd702a0a9b2bb3470e6.md) | 120 | `declaration-track:ae98edd702a0a9b2bb3470e6eccbf9aaf6a08a1ca46a957cdb010f300f6870e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
