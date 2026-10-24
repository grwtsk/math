# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a9c9d85255508aa89e90db555081e588779f659",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a9c9d85255508aa89e90db555081e588779f659`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadrature`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadrature.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thinFourierModeSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/declarations/thinfouriermodeslope--c4cb3dd76328328e9ec264aa.md) | 17 | `declaration-track:c4cb3dd76328328e9ec264aaf1d518e5584b49d51c23b7d9f87c8a495e5c0a28` |
| 2 | `theorem` | [fourierModePrimitive_hasDerivAt_thin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/declarations/fouriermodeprimitive-hasderivat-thin--95e8e071e6eefbdbdf9c319a.md) | 20 | `result-track:95e8e071e6eefbdbdf9c319ab913979351fb622aa5c775fd9651c6de30e11275` |
| 3 | `theorem` | [fourierModeValue_hasDerivAt_thin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/declarations/fouriermodevalue-hasderivat-thin--686662213fec0d429c08f14f.md) | 28 | `result-track:686662213fec0d429c08f14f438a4971281906ae7142aa4b46d209cf9d145ab9` |
| 4 | `theorem` | [norm_thinFourierModeSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/declarations/norm-thinfouriermodeslope--4522c104860dfe15b38c3cda.md) | 36 | `result-track:4522c104860dfe15b38c3cda4c8796f01d4a884c5364fab52628f81c71b7826c` |
| 5 | `theorem` | [greenFourierBackgroundIntegrand_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/declarations/greenfourierbackgroundintegrand-hasderivat--03af953a288671c5c1e8f65c.md) | 41 | `result-track:03af953a288671c5c1e8f65cf4c9d8804a858e3c9ca971c71e34d23fd6daf573` |
| 6 | `def` | [GreenCellDerivativeBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/declarations/greencellderivativebound--bf8c783000442bfa77a7b996.md) | 66 | `declaration-track:bf8c783000442bfa77a7b9968b4cfb0bfab83e85b86208826563ff2c28886683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
