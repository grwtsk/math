# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Bridge.Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7d0d26e944e626559e985530a2ec6d3e3e97b70`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.Grid` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.PairCeiling.NumericCert` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [massOf](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/massof--57e87776db118aaf18057118.md) | 31 | `declaration-track:57e87776db118aaf18057118b58e4f0adc4a2fe602111d511c5dffc2109a3628` |
| 2 | `lemma` | [Csum_massOf](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/csum-massof--546ded349fa0e9f356e0b89f.md) | 33 | `result-track:546ded349fa0e9f356e0b89f8022984c77fbddd24c21f86fa98d00f569b052ff` |
| 3 | `lemma` | [Dfun_grid_eq_Dright](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/dfun-grid-eq-dright--7506f52e00e7626d9c4990a6.md) | 39 | `result-track:7506f52e00e7626d9c4990a66348c0a4f17e64a473fe26672e5f4ac27deab36c` |
| 4 | `lemma` | [Dfun_cell_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/dfun-cell-bounds--effafaf51bf95abd263ef9d7.md) | 46 | `result-track:effafaf51bf95abd263ef9d7618891754f6e6d21a2bb398cad65d8bbbbfd1933` |
| 5 | `theorem` | [abs_Dfun_le_of_grid](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/abs-dfun-le-of-grid--825a702efaa733432039b018.md) | 66 | `result-track:825a702efaa733432039b018def2d1383bd0e9d2b4d56c5db0152fe48d49dfa5` |
| 6 | `lemma` | [Efun_grid_eq_Egrid](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/efun-grid-eq-egrid--6d55b4545d8d6f17199ba4a5.md) | 104 | `result-track:6d55b4545d8d6f17199ba4a581a82065fce2ad1844b675dca666937a498c9527` |
| 7 | `theorem` | [abs_Efun_le_of_grid](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/abs-efun-le-of-grid--9208a72f00e001c46a06b915.md) | 119 | `result-track:9208a72f00e001c46a06b9157cee2cd6137d43ec74559f37b46bb30495aa11e4` |
| 8 | `theorem` | [package_of_check](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/declarations/package-of-check--f3a0be067b268fa50375ed49.md) | 206 | `result-track:f3a0be067b268fa50375ed497f6f1b93924f817b2a2e614422b0db46c693a33b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
