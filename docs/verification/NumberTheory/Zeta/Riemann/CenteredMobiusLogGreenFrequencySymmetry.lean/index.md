# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFrequencySymmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "790879fa0c646d0dc87ccdd38a1069d3ab1f3f78",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `790879fa0c646d0dc87ccdd38a1069d3ab1f3f78`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFrequencyClassification`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourier_neg_frequency_conj](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/fourier-neg-frequency-conj--d6856c5cef7e881225eb4be5.md) | 17 | `result-track:d6856c5cef7e881225eb4be53b73b0d3009dfcee6764176f152b6f4039af8ab1` |
| 2 | `theorem` | [fourierModePrimitive_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/fouriermodeprimitive-neg--5b1e0716afaeea778f51c008.md) | 25 | `result-track:5b1e0716afaeea778f51c0081c7f2f2299970808271acd077de3705cbb4545da` |
| 3 | `theorem` | [fourierModeValue_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/fouriermodevalue-neg--524c62f00e9b2055b5c98891.md) | 35 | `result-track:524c62f00e9b2055b5c9889164c4b02f79389f1915616523299643160571956f` |
| 4 | `theorem` | [greenFourierBackgroundCoordinate_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/greenfourierbackgroundcoordinate-neg--c6992ae2385131fec0d088ee.md) | 45 | `result-track:c6992ae2385131fec0d088eecc9697dfc5abc1276f63e559ed848245dac59efc` |
| 5 | `theorem` | [greenDiscreteHarmonicFourierCorrection_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/greendiscreteharmonicfouriercorrection-neg--37878dbf3fd9dfac5a1c90ba.md) | 58 | `result-track:37878dbf3fd9dfac5a1c90ba46fddde619f7f3e81037412852e039f8626e12d9` |
| 6 | `theorem` | [greenCenteringResidual_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/greencenteringresidual-neg--447162c74b5ce8d18f940d3b.md) | 73 | `result-track:447162c74b5ce8d18f940d3b7a227de66672e705e55fa1fc37941d988c5be159` |
| 7 | `theorem` | [norm_greenCenteringResidual_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/norm-greencenteringresidual-neg--5c314c83636111acd878aa27.md) | 83 | `result-track:5c314c83636111acd878aa27a1b7edb5aee2c6bfee619a6d0db691b5a8ee4986` |
| 8 | `theorem` | [sq_norm_greenCenteringResidual_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencySymmetry.lean/declarations/sq-norm-greencenteringresidual-neg--5ab6dee2effd4f01b1130a6e.md) | 90 | `result-track:5ab6dee2effd4f01b1130a6e88675b234f81c5aba1b093156ddac16e23cf1640` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
