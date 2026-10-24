# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PoleSourceZetaDetection.Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e31607c8a1a02aad72d25c79f9287e64fad5063e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e31607c8a1a02aad72d25c79f9287e64fad5063e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleSourceDetection` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.ZetaZeros` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nontrivial_zeta_zero_of_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean/declarations/nontrivial-zeta-zero-of-strip--e6407dc60d617184dcd0d1a8.md) | 30 | `result-track:e6407dc60d617184dcd0d1a8c327b5aff6196c5726a4c73b87f620dcd130115c` |
| 2 | `theorem` | [source_detects_off_critical_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean/declarations/source-detects-off-critical-zero--47e9b413e1317d73301d90fd.md) | 44 | `result-track:47e9b413e1317d73301d90fda78189f517a864e96b33c469058e73f6899ebe8a` |
| 3 | `theorem` | [source_detects_off_critical_riemann_zeta_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean/declarations/source-detects-off-critical-riemann-zeta-zero--4b3819812b993fa6e66fc99a.md) | 51 | `result-track:4b3819812b993fa6e66fc99a3e8f405f9e9aa108e88ad753a44232a177e60b87` |
| 4 | `theorem` | [source_detects_off_critical_mathlib_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean/declarations/source-detects-off-critical-mathlib-zero--cc924b02057d62c049c1fc6f.md) | 58 | `result-track:cc924b02057d62c049c1fc6f489953b077046ee91b0ab57fd53dccea99b269ac` |
| 5 | `theorem` | [source_detects_off_critical_zero_all_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variant62aa9661ce908013518fd771ac3010ce3bcc584da6de0f6c78f4d14dff919dda.lean/declarations/source-detects-off-critical-zero-all-positive--e3ee9402518033fbb5889d20.md) | 66 | `result-track:e3ee9402518033fbb5889d209e526f104d713163f1e13e18b12dde3eb7f96601` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
