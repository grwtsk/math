# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHBootstrap.Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ff6756a42848282512a3cb5d8dcec27f605b7a7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ff6756a42848282512a3cb5d8dcec27f605b7a7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Real.Sqrt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closingRoot](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/closingroot--9bf6f9b002175307bc71dea9.md) | 21 | `declaration-track:9bf6f9b002175307bc71dea92cc3b3d41989a7acd0a87169b4875b3b485cf9db` |
| 2 | `def` | [closingBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/closingbound--56e1a2e99635fae4dcc450d2.md) | 24 | `declaration-track:56e1a2e99635fae4dcc450d2c25fdc4e4cdd51e490e0e529edd9202acf6e8004` |
| 3 | `theorem` | [closingRoot_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/closingroot-nonneg--3f5e29ba4d40d8d3e8413329.md) | 26 | `result-track:3f5e29ba4d40d8d3e84133295918e5cc7acf3f527a61f7df9e16540a6503337a` |
| 4 | `theorem` | [closingRoot_ge_coefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/closingroot-ge-coefficient--b01e099c351c23bb54670f1a.md) | 31 | `result-track:b01e099c351c23bb54670f1a061ac582bedecd69e0170c8d1e53d29d3670e745` |
| 5 | `theorem` | [closingRoot_equation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/closingroot-equation--5b2fee9e64c784b2cc6c096d.md) | 38 | `result-track:5b2fee9e64c784b2cc6c096d97210ce436ab00c57851474a5d933b40603cde68` |
| 6 | `theorem` | [le_closingBound_of_sqrt_inequality](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/le-closingbound-of-sqrt-inequality--e619510f3af2c1d06ee5cacf.md) | 45 | `result-track:e619510f3af2c1d06ee5cacfe04169b46a5a825642b70e76abe787c1204ae118` |
| 7 | `def` | [finiteHorizon](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/finitehorizon--1606a66b0f1dfdbcdcb1f931.md) | 66 | `declaration-track:1606a66b0f1dfdbcdcb1f931d5c8ee9abad6ea03a3e8f69534843173acbaaf3e` |
| 8 | `theorem` | [finiteHorizon_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/finitehorizon-nonneg--e6aed1d71934dd30c45c527d.md) | 69 | `result-track:e6aed1d71934dd30c45c527d947f1418c39cf9f4473ff490cd0a77f6a5cd83a9` |
| 9 | `theorem` | [value_le_finiteHorizon](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/value-le-finitehorizon--3dddab3c0ad459f392acffc9.md) | 73 | `result-track:3dddab3c0ad459f392acffc9ea0b8d3b44b4a16ed35436baa75fa880d12d58fe` |
| 10 | `theorem` | [image_bddAbove_of_upper_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/image-bddabove-of-upper-bound--8762c2f9db970dcf62220597.md) | 80 | `result-track:8762c2f9db970dcf62220597ab307ae783013cec1f63cf253d2d258ed778f40f` |
| 11 | `theorem` | [uniform_cap_of_finite_horizon_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/uniform-cap-of-finite-horizon-sqrt--03a7316df8a3f92ee2b8273b.md) | 88 | `result-track:03a7316df8a3f92ee2b8273b3ac9370ef75e70966e6f08569088d2b30cb445f5` |
| 12 | `theorem` | [le_of_affine_contraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/le-of-affine-contraction--bf41a1385098f250452a7860.md) | 100 | `result-track:bf41a1385098f250452a7860166369cc1c14edd081e85f03ffa677b54d8fd858` |
| 13 | `theorem` | [uniform_cap_of_finite_horizon_contraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantaa702bda48c9fd8f940597da030ffeaaa884442a5fc8fdb9503e3de53332930e.lean/declarations/uniform-cap-of-finite-horizon-contraction--32ad3813b76db7c4cf65c531.md) | 105 | `result-track:32ad3813b76db7c4cf65c53131591cb87b97b53838fa1401e8c11085f9dc56cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
