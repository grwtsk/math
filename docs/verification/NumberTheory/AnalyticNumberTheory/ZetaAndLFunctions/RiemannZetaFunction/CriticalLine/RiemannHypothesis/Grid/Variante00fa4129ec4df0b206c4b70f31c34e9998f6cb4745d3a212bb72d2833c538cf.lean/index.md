# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Grid.Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6153778406ddd1c251d3e3d2d5b354acad63114",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6153778406ddd1c251d3e3d2d5b354acad63114`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Tail.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inv_pow_four_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/declarations/inv-pow-four-step--2bb34e3ea89c3ced4ba0f55b.md) | 29 | `result-track:2bb34e3ea89c3ced4ba0f55b1f03ea96bb590dbf657a9a32722b014765eb8329` |
| 2 | `lemma` | [sum_inv_pow_four_le_telescope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/declarations/sum-inv-pow-four-le-telescope--0c2bea9fc579b1607f9c7ae5.md) | 41 | `result-track:0c2bea9fc579b1607f9c7ae58c064edbe89c8399c5ddf32e0e2acf126089db7d` |
| 3 | `lemma` | [sum_inv_pow_four_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/declarations/sum-inv-pow-four-le--1346884ec0d6c94ccb7d2938.md) | 63 | `result-track:1346884ec0d6c94ccb7d293880328442d335066bd4380ccb76d9761bbb29cbf2` |
| 4 | `lemma` | [grid_const_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/declarations/grid-const-bound--5f47b0daa3f3627704b78483.md) | 75 | `result-track:5f47b0daa3f3627704b7848321be42a98484d522b1c42e3700cf341ee4c8a020` |
| 5 | `theorem` | [grid_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/declarations/grid-sum-le--df140e90457834c5b3570b4a.md) | 95 | `result-track:df140e90457834c5b3570b4afbc5b2951b480707e7296bbcd01e227ac2f43545` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
