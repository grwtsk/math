# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Defect.Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "285dcdff810124c389be9d533a4dca7f3e7a98b9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `285dcdff810124c389be9d533a4dca7f3e7a98b9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rh_defect_eq_norm_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/declarations/rh-defect-eq-norm-sq--f5be0fc9dbbe676cdd1df46a.md) | 22 | `result-track:f5be0fc9dbbe676cdd1df46af0d5d27d7b859d10214e6beba23bc57b14ac61f0` |
| 2 | `theorem` | [rh_defect_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/declarations/rh-defect-nonneg--78499b3d60963bc68efa9906.md) | 27 | `result-track:78499b3d60963bc68efa99064ad8f8aa662e1c4eb19926283aec4e69692858fe` |
| 3 | `theorem` | [rh_defect_eq_square](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/declarations/rh-defect-eq-square--2218f10e33377539ce3ecbba.md) | 31 | `result-track:2218f10e33377539ce3ecbba5065055b84c86fba4bc57c69d47f82ecc793ef6b` |
| 4 | `theorem` | [rh_defect_eq_zero_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/declarations/rh-defect-eq-zero-iff--0f7e04a3ba95a56646023ef4.md) | 36 | `result-track:0f7e04a3ba95a56646023ef4809a71fe2c333e2384da0648b2bd849049bc0233` |
| 5 | `theorem` | [riemann_hypothesis_iff_defect_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/declarations/riemann-hypothesis-iff-defect-zero--d620bba44bf9d4aa4ba70fcd.md) | 46 | `result-track:d620bba44bf9d4aa4ba70fcdba8181ef07fb62f8dc1feeef581244f8b4a224c6` |
| 6 | `theorem` | [defect_nonnegative_does_not_force_universal_vanishing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defect/Variant2a1dee4f3395034eb20a9e10c2f33f634c5be5ae075f569de2723af63bd603be.lean/declarations/defect-nonnegative-does-not-force-universal-vanishing--5cf062c5cedbf5f64d4d21bf.md) | 56 | `result-track:5cf062c5cedbf5f64d4d21bf37f550917fc4ff01833ec93086371f57341bf731` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
