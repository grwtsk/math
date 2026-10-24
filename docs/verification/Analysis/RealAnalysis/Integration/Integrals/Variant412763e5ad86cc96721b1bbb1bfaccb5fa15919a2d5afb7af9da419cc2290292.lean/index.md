# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integrals.Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63808139107096a31908c1f89271770de31578ad",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63808139107096a31908c1f89271770de31578ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean/declarations/integral-eq-tsum--ca63c5f0245c7cb5522a89fa.md) | 28 | `result-track:ca63c5f0245c7cb5522a89fa3c0d17c4e0a43795f56429f15b60e701ac1600be` |
| 2 | `theorem` | [integral_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean/declarations/integral-eq-sum--d6e609d6d562a440129d9d40.md) | 43 | `result-track:d6e609d6d562a440129d9d40ec1a68b23e1b37329582dc9adb6ab365126657a8` |
| 3 | `theorem` | [bernoulli_expectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant412763e5ad86cc96721b1bbb1bfaccb5fa15919a2d5afb7af9da419cc2290292.lean/declarations/bernoulli-expectation--170071a36f676a63a1821f6c.md) | 53 | `result-track:170071a36f676a63a1821f6c384ff2a4cbe21d7ace43517709a1e4281d2c446e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
