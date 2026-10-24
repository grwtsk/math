# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTwoBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f67ed54be863129d202285ddf6cda797d0cda29",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f67ed54be863129d202285ddf6cda797d0cda29`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicUnitSupport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [octaveRepresentative_sub_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/declarations/octaverepresentative-sub-one--c11accdf48c4dbbdc1690d91.md) | 15 | `result-track:c11accdf48c4dbbdc1690d91d785e80d716b4146f7097bd8d179ac20215845d3` |
| 2 | `theorem` | [cyclicSharpUnitChangeSupport_subset_boundaries](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/declarations/cyclicsharpunitchangesupport-subset-boundaries--d4b7cfa5a753f223d9d273c5.md) | 52 | `result-track:d4b7cfa5a753f223d9d273c59f6a2b67987234557a7043a223c42dfebe087715` |
| 3 | `theorem` | [cyclicSharpUnitBoundarySupportCard](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/declarations/cyclicsharpunitboundarysupportcard--53cbe0680e2b366a45d65df8.md) | 133 | `result-track:53cbe0680e2b366a45d65df8875dcb01cf5a5526b6ce903ea79eb0771488039f` |
| 4 | `theorem` | [cyclicSharpUnitTranslationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/declarations/cyclicsharpunittranslationbound--d84fb0abc398915b06f5c81d.md) | 143 | `result-track:d84fb0abc398915b06f5c81d2fad51158638b057a5db4b87bd0d5e1212b45d84` |
| 5 | `theorem` | [cyclicSharpTranslationCardinality](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/declarations/cyclicsharptranslationcardinality--ef0446d1068715a75fe211d1.md) | 149 | `result-track:ef0446d1068715a75fe211d1dcced4e66db487851d4eaa12ee235c88810b42c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
