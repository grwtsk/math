# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainFullAudit.Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6b03adbcc0735f3e16aa7822db8a806846fce06",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6b03adbcc0735f3e16aa7822db8a806846fce06`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisorremaindercore--ba456e709355362157f16f50.md) | 16 | `declaration-track:ba456e709355362157f16f505ea0289b5bd30468c316f0db33596eae36796da7` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisorremaindercore-measurable--8c8e0ae153fcc743fc9a1d87.md) | 22 | `result-track:8c8e0ae153fcc743fc9a1d874f186402a8a809b6e3903f3655d60523b8948a1f` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisorremaindercore-sq-le--c7f48a14bca520a4f9e5d991.md) | 34 | `result-track:c7f48a14bca520a4f9e5d991f5f47abec070db60621882cac36f8046b08c587c` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/remaindermajorant-integrable--894a030881eeb5da35322def.md) | 63 | `result-track:894a030881eeb5da35322def9b886f7211942dfe33dca858c1025c1021c76f8f` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisorremaindercore-memlp--a757c2766bd7a2cf62d8da95.md) | 70 | `result-track:a757c2766bd7a2cf62d8da95a3b98b42bb7f4343846e83ac4191d3200f02e8e0` |
| 6 | `def` | [divisorRemainderVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisorremaindervector--c08db015b5db9df656bf9148.md) | 81 | `declaration-track:c08db015b5db9df656bf914858912e29991d266146d8d799b1ec00e2d06fd71c` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisorremaindervector-norm-le--4a339e2b2efd6374e91bfe64.md) | 85 | `result-track:4a339e2b2efd6374e91bfe646ab163ee52cde5ac961a57ce9c66ecc817176dc7` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/sourcemultiplier-divisorremainder-norm-le--df9e3a537f8ce22790483cf8.md) | 108 | `result-track:df9e3a537f8ce22790483cf8dd85a9a0fafb08ca1e56e822d3b468211f3dad82` |
| 9 | `def` | [divisorMainResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisormainresidual--55657252d4cffb6e1368a818.md) | 133 | `declaration-track:55657252d4cffb6e1368a81813759455bd5079f4a2930e8b3980996dfc046267` |
| 10 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/arithmeticresidual-eq-main-sub-remainder--e1e05640e3e9076223a51691.md) | 143 | `result-track:e1e05640e3e9076223a5169175893d0c84e4712446711276f2cf42b1051f7c4d` |
| 11 | `def` | [divisorMainCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisormaincore--cebf437c56aa1696bc1d043a.md) | 154 | `declaration-track:cebf437c56aa1696bc1d043afc82a48da5343a0737d8f6132d8ea564d4ff2740` |
| 12 | `theorem` | [mainCore_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/maincore-eq-add--182327e7399c690087485fc4.md) | 158 | `result-track:182327e7399c690087485fc4960a0109b30840df52c71843996f22f99e788ed2` |
| 13 | `theorem` | [divisorMainCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisormaincore-memlp--6c49684795bfdafdaee109a0.md) | 173 | `result-track:6c49684795bfdafdaee109a0172b65ea743c5237d011ad5d22add0539363c7e3` |
| 14 | `def` | [divisorMainVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/divisormainvector--91d80f809aa64685d50b039d.md) | 181 | `declaration-track:91d80f809aa64685d50b039da0fef9395a66f590a860730589d888215bbb0e12` |
| 15 | `theorem` | [mainVector_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/mainvector-eq-add--5e4faf02346ab05aae908483.md) | 185 | `result-track:5e4faf02346ab05aae908483800d87b18ce9b0ef22a0182e9ca9cdbb18c01b67` |
| 16 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/declarations/filtered-core-main-norm-difference-le--ccd36cde40d39bed36ca928b.md) | 203 | `result-track:ccd36cde40d39bed36ca928bd05fc8bf7f51be6e55e3813fb51eb2c81af9f774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
