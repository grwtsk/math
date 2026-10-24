# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LIntegral.Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c87cf3179f75867cfa825a0da303e81606f5297",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c87cf3179f75867cfa825a0da303e81606f5297`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean/declarations/lintegral-mul-left-eq-self--5ceaf953c976cf6f682c9b56.md) | 34 | `result-track:5ceaf953c976cf6f682c9b56f64d128840bbdb4bd4f4f63eb35476a1995ee214` |
| 2 | `theorem` | [lintegral_mul_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean/declarations/lintegral-mul-right-eq-self--9db833200bf8f18bd2f47c20.md) | 46 | `result-track:9db833200bf8f18bd2f47c20766eabbf5436912cc7f2d6ad28e099e8c1cd9d4c` |
| 3 | `theorem` | [lintegral_div_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean/declarations/lintegral-div-right-eq-self--efcf46455cb80da0df80e393.md) | 54 | `result-track:efcf46455cb80da0df80e393f847ebeefeaabddd21e78c67c9b7277a8ccf3f99` |
| 4 | `theorem` | [lintegral_eq_zero_of_isMulLeftInvariant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95.lean/declarations/lintegral-eq-zero-of-ismulleftinvariant--9e9ba2900f2a9950d18b6714.md) | 71 | `result-track:9e9ba2900f2a9950d18b6714e3101f87704284b37d7c387917d0b4c28b483e24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
