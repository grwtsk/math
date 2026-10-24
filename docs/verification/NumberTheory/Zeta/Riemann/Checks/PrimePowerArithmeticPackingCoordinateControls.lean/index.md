# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimePowerArithmeticPackingCoordinateControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "844fa14c7a118cfec5ad30b61266c3a57903bec7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `844fa14c7a118cfec5ad30b61266c3a57903bec7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerArithmeticPackingCoordinate`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeTwo](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/declarations/primetwo--b590b3b5d4011c72a5489da9.md) | 14 | `declaration-track:b590b3b5d4011c72a5489da9ec517b5efa7575f0bbe6062c7bb6f683ad5fffe9` |
| 2 | `def` | [twoSquaredEvent](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/declarations/twosquaredevent--f739ebbf85d6b96692868695.md) | 16 | `declaration-track:f739ebbf85d6b96692868695a468eb775f1cad01416f38ee36cac9b932dba1d4` |
| 3 | `theorem` | [twoSquared_logScale](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/declarations/twosquared-logscale--56da0aad2a04e432e2931bc2.md) | 22 | `result-track:56da0aad2a04e432e2931bc25297378ed28eb288d8b5ff56823732c8ea9908d1` |
| 4 | `theorem` | [twoSquared_mangoldtScale](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/declarations/twosquared-mangoldtscale--013f8121425cf024dc6e9589.md) | 28 | `result-track:013f8121425cf024dc6e9589c8f4d26382f24f4cda5750112f7bab0dad8fa7dd` |
| 5 | `theorem` | [twoSquared_natValue](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/declarations/twosquared-natvalue--e40818ae6fb55b46721dddfa.md) | 33 | `result-track:e40818ae6fb55b46721dddfa99839d6a6951d99474c972ac5bdf2a021c6c4393` |
| 6 | `theorem` | [four_is_primePowerEventValue](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean/declarations/four-is-primepowereventvalue--facdf28c0bd8f09aa165fe7a.md) | 38 | `result-track:facdf28c0bd8f09aa165fe7a5c97f7d12b220cb17814004cf252d01c8046a9a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
