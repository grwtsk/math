# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaKernelCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af1d976ae85e52dc9db6799085079ff986eda504",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af1d976ae85e52dc9db6799085079ff986eda504`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaQuadraticKernelCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedDyadicThreshold`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPrimeThetaKernelCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/declarations/clauseindexedprimethetakernelcriterion--093da515cb0b9ee0613f3d85.md) | 30 | `declaration-track:093da515cb0b9ee0613f3d85d618fed800019f02f001230daef7a5a88b3149fb` |
| 2 | `theorem` | [clauseIndexedPrimeThetaKernelCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/declarations/clauseindexedprimethetakernelcriterion-to-recurrence--d9a8ab6a5379649eb8146b94.md) | 37 | `result-track:d9a8ab6a5379649eb8146b940584e1b36616066e104553b07b6f52b99b3a05d7` |
| 3 | `theorem` | [clauseIndexedPrimeKernelCriterion_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/declarations/clauseindexedprimekernelcriterion-to-previous--461424d048b17f5802bf7dd5.md) | 46 | `result-track:461424d048b17f5802bf7dd581978ac380427e4bf0f10f2a2c51ff4f0da71821` |
| 4 | `theorem` | [threeClauseIndexedPrimeKernelCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/declarations/threeclauseindexedprimekernelcriterion-iff--970ef06357e68e285b8a9169.md) | 66 | `result-track:970ef06357e68e285b8a91697a23b4c43e78cbb1c7fced77249b7c2a4218bd3e` |
| 5 | `theorem` | [twoClauseIndexedPrimeKernelCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/declarations/twoclauseindexedprimekernelcriterion-iff--2acb622143725bc81a6f1fd8.md) | 74 | `result-track:2acb622143725bc81a6f1fd8858baa622b7dc84b397035ecfe9622dace2732d1` |
| 6 | `theorem` | [clauseIndexedPrimeKernelCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/declarations/clauseindexedprimekernelcriteria-to-rh--d52f9351b953bfcda52e9494.md) | 84 | `result-track:d52f9351b953bfcda52e9494d20a3cb6d4353b40166927e027af8a27ad8e4ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
