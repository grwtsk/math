# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebiusCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3d58f02fc4408622637418d882ec489b43660a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3d58f02fc4408622637418d882ec489b43660a`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityMoebiusFunction](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/declarations/densitymoebiusfunction--213ab63d94e4f38895fdb4a5.md) | 21 | `declaration-track:213ab63d94e4f38895fdb4a5395f90c74d9a84e8f05253770b4b4783ba6d9b0e` |
| 2 | `def` | [densityMoebiusCorrection](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/declarations/densitymoebiuscorrection--7033dfd27574e2bbf00184aa.md) | 25 | `declaration-track:7033dfd27574e2bbf00184aa6285aa8116c827334061d760e6c64b377c77452a` |
| 3 | `theorem` | [density_moebius_correction_return](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-return--32fb151e315598e259fedc16.md) | 29 | `result-track:32fb151e315598e259fedc16d76e94697a86591e1c8737c1a60331970953ff16` |
| 4 | `theorem` | [density_moebius_correction_divisors](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-divisors--b25c1fd8e4af27e3c6004c5d.md) | 39 | `result-track:b25c1fd8e4af27e3c6004c5d67a529ceb6f8cd302dc8c16af8f3d467d3eee5f7` |
| 5 | `theorem` | [density_moebius_correction_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-one--9f3b4a24fd839d28bc52be4a.md) | 44 | `result-track:9f3b4a24fd839d28bc52be4a51ff021a9200812b22d454d42fe9958e645e10bf` |
| 6 | `theorem` | [density_moebius_correction_prime](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/declarations/density-moebius-correction-prime--82415615bd7827454da5b6fd.md) | 49 | `result-track:82415615bd7827454da5b6fdaa8cba30af9ab4011b2e6ec3a88a99fa5d0cc503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
