# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Bridge.Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28053bba407b751c9ae432fd8445898a3bbecba8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28053bba407b751c9ae432fd8445898a3bbecba8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.Grid` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.PairCeiling.NumericCert` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [massOf](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/massof--970ed9648b176f383f7238d7.md) | 39 | `declaration-track:970ed9648b176f383f7238d73ce82f9636cbc4ab63ee7cbcf3144ba0ef15e3c1` |
| 2 | `lemma` | [Csum_massOf](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/csum-massof--7508d967bfa23be93dce5da5.md) | 41 | `result-track:7508d967bfa23be93dce5da568147102b35d85cd147e27a8fb61a3e057fb0689` |
| 3 | `lemma` | [Dfun_grid_eq_Dright](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/dfun-grid-eq-dright--e0a7bc89ef41ce3a7d1342f9.md) | 47 | `result-track:e0a7bc89ef41ce3a7d1342f9966e98edc18cce25aa428a5d4ce8ed141a470ee5` |
| 4 | `lemma` | [Dfun_cell_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/dfun-cell-bounds--6549a5d864b2b6f852a27937.md) | 54 | `result-track:6549a5d864b2b6f852a279371f7e116a65a14b3b085675d4ee21278e58460c8c` |
| 5 | `theorem` | [abs_Dfun_le_of_grid](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/abs-dfun-le-of-grid--ab1408b271424e8236868d4d.md) | 74 | `result-track:ab1408b271424e8236868d4d17972772a843d1d03c3d604e357400de246f1790` |
| 6 | `lemma` | [Efun_grid_eq_Egrid](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/efun-grid-eq-egrid--d818caa6b1a84962287e5dc7.md) | 112 | `result-track:d818caa6b1a84962287e5dc70c13cedbff3cf5df96b8fd0b69988770d7a312be` |
| 7 | `theorem` | [abs_Efun_le_of_grid](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/abs-efun-le-of-grid--4795105b8d2e87e3728d1c2d.md) | 127 | `result-track:4795105b8d2e87e3728d1c2d7f6eeb4350c93d32cc226b9b3e1f2b2f2a6ff730` |
| 8 | `theorem` | [package_of_check](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/declarations/package-of-check--e95a6a4da640cc990be7c008.md) | 214 | `result-track:e95a6a4da640cc990be7c008e853c78c4abef5476d75a01d8f85db9909fe18ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
