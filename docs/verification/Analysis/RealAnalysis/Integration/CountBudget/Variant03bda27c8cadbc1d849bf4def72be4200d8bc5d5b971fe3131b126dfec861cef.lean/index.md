# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CountBudget.Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cecdb253bb0c844418c5f46c464d94f69d600d55",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cecdb253bb0c844418c5f46c464d94f69d600d55`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_stieltjes_20261004.CountBudgetReduction` — import line 1; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.LogMoments` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_main_kernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/declarations/count-main-kernel-eq--b8904196cee1b758e76f4dbf.md) | 18 | `result-track:b8904196cee1b758e76f4dbfa27cf1fdc7449749cada3100af095043451183a0` |
| 2 | `theorem` | [count_main_seventh_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/declarations/count-main-seventh-integrable--99df72ab57ec2f508f0b889c.md) | 29 | `result-track:99df72ab57ec2f508f0b889c9f9cc670ee23fd6c9ddc0cfedd0b676eac573a91` |
| 3 | `theorem` | [count_main_seventh_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/declarations/count-main-seventh-integral--6d52b5a9d824403a0330e63c.md) | 41 | `result-track:6d52b5a9d824403a0330e63c1026ff1c7bcde3bb8948555baad6aeecdf29995d` |
| 4 | `theorem` | [corrected_count_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/declarations/corrected-count-budget--f1ba490901be3aa238e286f1.md) | 62 | `result-track:f1ba490901be3aa238e286f1dd491315e99b3cba304ad5349f99ffd248471de7` |
| 5 | `theorem` | [actual_positive_sixth_count_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CountBudget/Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef.lean/declarations/actual-positive-sixth-count-bound--a40d9119dfa928d8526fe91e.md) | 74 | `result-track:a40d9119dfa928d8526fe91e48c43a360c0d23e3a97ed53683afa606dd340aa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
