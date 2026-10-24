# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebiusCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2242cc9862ea31a3a032ff4d341c9249c7e6c462",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2242cc9862ea31a3a032ff4d341c9249c7e6c462`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityMoebiusFunction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/declarations/densitymoebiusfunction--4548f742d9aecf57d26ce8f0.md) | 21 | `declaration-track:4548f742d9aecf57d26ce8f071e40ef9de9af5196192a8c5cf4f9a1c0e20ddbd` |
| 2 | `def` | [densityMoebiusCorrection](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/declarations/densitymoebiuscorrection--0dd5dffa337dbda609315c23.md) | 25 | `declaration-track:0dd5dffa337dbda609315c23e7efa16781b2c3db8a6dd7c4737e7ffa38ff6cbd` |
| 3 | `theorem` | [density_moebius_correction_return](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-return--7f9dd4b3941089f02c2775bc.md) | 29 | `result-track:7f9dd4b3941089f02c2775bc58c170fb3f53fae57120df33a759e5789f9ad3bb` |
| 4 | `theorem` | [density_moebius_correction_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-divisors--a84f9b2772b4aed903d92b48.md) | 39 | `result-track:a84f9b2772b4aed903d92b4875e128045a4bf75a1adf9cd95f4aa0f0a62db125` |
| 5 | `theorem` | [density_moebius_correction_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-one--9deef8f62547fbac85c9c9bc.md) | 44 | `result-track:9deef8f62547fbac85c9c9bc2fb731d501f928c7ce073e4505dbaeb394b1ead9` |
| 6 | `theorem` | [density_moebius_correction_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-prime--36829a800dab95fabec66c56.md) | 49 | `result-track:36829a800dab95fabec66c56732fe846c99822bd955dca012036bdceff514086` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
