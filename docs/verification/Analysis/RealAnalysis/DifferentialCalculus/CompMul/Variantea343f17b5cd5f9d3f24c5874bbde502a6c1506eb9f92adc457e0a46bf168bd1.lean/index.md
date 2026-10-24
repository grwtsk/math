# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompMul.Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b4d1aadd940dd54456d60a6c7a7d25852904b61",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b4d1aadd940dd54456d60a6c7a7d25852904b61`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivWithinAt_comp_mul_left_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean/declarations/hasderivwithinat-comp-mul-left-smul-iff--98619e86799a75c172ea312f.md) | 34 | `result-track:98619e86799a75c172ea312f88d03f525b79c8569e9ee634f5cfd7ac5f945178` |
| 2 | `theorem` | [derivWithin_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean/declarations/derivwithin-comp-mul-left--38b553c29477ec34965376ec.md) | 42 | `result-track:38b553c29477ec34965376ece475ee551db846dfff47b21459705b5f6b51f296` |
| 3 | `theorem` | [deriv_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variantea343f17b5cd5f9d3f24c5874bbde502a6c1506eb9f92adc457e0a46bf168bd1.lean/declarations/deriv-comp-mul-left--d5db3deddfef718d2cc9df8b.md) | 49 | `result-track:d5db3deddfef718d2cc9df8be8b7d67593a3726c4801a5c3907851f7a50fa303` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
