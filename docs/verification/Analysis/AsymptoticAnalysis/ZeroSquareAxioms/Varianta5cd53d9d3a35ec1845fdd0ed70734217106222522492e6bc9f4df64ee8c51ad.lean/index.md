# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroSquareAxioms.Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af186a99e2103e66b20b5c51058d1ea3f378055",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af186a99e2103e66b20b5c51058d1ea3f378055`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/declarations/polynomial-norm-le--e6747ec9b6a549237df7f141.md) | 21 | `result-track:e6747ec9b6a549237df7f1411103e0273e0a9ebb3ff776ecf0ab3c383ade6aab` |
| 2 | `def` | [decayConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/declarations/decayconstant--e06e5bfefd004f5a7cf053c7.md) | 45 | `declaration-track:e06e5bfefd004f5a7cf053c7a3cb896f855cfc19c4b558c7ab2bc819da01e1f4` |
| 3 | `theorem` | [transform_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/declarations/transform-norm-le--cdd1c3b762f7b70e5429ba82.md) | 48 | `result-track:cdd1c3b762f7b70e5429ba82e710d9198c9d1020c268aeccdc76940b7f618305` |
| 4 | `theorem` | [transform_square_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/declarations/transform-square-norm-le--e9703b85b2b84fb3b60db40c.md) | 102 | `result-track:e9703b85b2b84fb3b60db40cd24eb58cf51b81d36f531d56917d760f35e192fb` |
| 5 | `theorem` | [eventually_one_le_shifted_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/declarations/eventually-one-le-shifted-norm--b1aa1fc950fc0798fee569b8.md) | 128 | `result-track:b1aa1fc950fc0798fee569b8ab88a9fad9b99203717279aa056184b01b7af64c` |
| 6 | `theorem` | [source_transform_square_norms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/declarations/source-transform-square-norms-summable--007fcedd1c0c5ccca8df16c5.md) | 137 | `result-track:007fcedd1c0c5ccca8df16c559a4544edef1309cfead3691c0491036c33f52f3` |
| 7 | `theorem` | [source_transform_squares_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/declarations/source-transform-squares-summable--059397814bfa36cf14696565.md) | 149 | `result-track:059397814bfa36cf14696565a0613be1d3692a08836004cd8b8f3bf471f45e3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
