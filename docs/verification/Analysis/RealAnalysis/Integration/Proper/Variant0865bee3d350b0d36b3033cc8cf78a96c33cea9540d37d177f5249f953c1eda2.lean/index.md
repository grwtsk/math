# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Proper.Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38a02a4cdf3979d79cd03f68c28c9ce726e74d41",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38a02a4cdf3979d79cd03f68c28c9ce726e74d41`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.CompNotation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsProper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper--0881660704f564cba0075655.md) | 43 | `declaration-track:0881660704f564cba0075655e86dda4a2c196b8ee49de720268db8e7144f1490` |
| 2 | `lemma` | [isProper_iff_restrict_eq_indicator_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-iff-restrict-eq-indicator-smul--70cd5a81f6f009338eadb3bc.md) | 48 | `result-track:70cd5a81f6f009338eadb3bc40bd2afbdb4f313cdee83d9e28c55c963cf19008` |
| 3 | `lemma` | [isProper_iff_inter_eq_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-iff-inter-eq-indicator-mul--b20ed9adfbeeba31a3487da0.md) | 53 | `result-track:b20ed9adfbeeba31a3487da0e56c14f5d46560267575064e7273ac44ef993fc0` |
| 4 | `lemma` | [IsProper.setLIntegral_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-setlintegral-eq-comp--4feb9ef9f3412d2019f3d7a1.md) | 69 | `result-track:4feb9ef9f3412d2019f3d7a1439d3c49eaf8bf85a6aab1af1a724baca662da8b` |
| 5 | `lemma` | [IsProper.lintegral_indicator_mul_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-lintegral-indicator-mul-indicator--354c29127924d275a5ec9b04.md) | 82 | `result-track:354c29127924d275a5ec9b042aa7d5301f726dd4a61df755449e351959f3dd63` |
| 6 | `lemma` | [IsProper.lintegral_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-lintegral-indicator-mul--93b55f11ba2d44d30b70872c.md) | 95 | `result-track:93b55f11ba2d44d30b70872ceb9cc97522967702f64dd574da5fa1e4973a73bc` |
| 7 | `lemma` | [IsProper.setLIntegral_eq_indicator_mul_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-setlintegral-eq-indicator-mul-lintegral--975f66cbaa39fe21c7bc7277.md) | 112 | `result-track:975f66cbaa39fe21c7bc727786321c2588fa858398f573a1ccf29bec63aa77e5` |
| 8 | `lemma` | [IsProper.setLIntegral_inter_eq_indicator_mul_setLIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-setlintegral-inter-eq-indicator-mul-setlintegral--7542215adc4a794909a745d4.md) | 118 | `result-track:7542215adc4a794909a745d4083295d71437d49c530437843b478f5b6af9a0fe` |
| 9 | `lemma` | [IsProper.lintegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/declarations/isproper-lintegral-mul--e261c94b8eab254a7d4c89a3.md) | 124 | `result-track:e261c94b8eab254a7d4c89a3c2d3b8478f1376de0938fe224928748807959c7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
