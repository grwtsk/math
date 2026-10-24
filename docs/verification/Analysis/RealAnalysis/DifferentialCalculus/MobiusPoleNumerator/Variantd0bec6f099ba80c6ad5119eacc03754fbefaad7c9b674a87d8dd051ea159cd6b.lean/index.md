# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPoleNumerator.Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06d6ca9acab19120496446e17dfd65dbcdd0aff3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06d6ca9acab19120496446e17dfd65dbcdd0aff3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/dirichletnumerator--614ffbcec6a00d7d1c152ce0.md) | 14 | `declaration-track:614ffbcec6a00d7d1c152ce04525e074588032a8c7d8f618274e8056e5fe8c00` |
| 2 | `def` | [correctedNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctednumerator--968c03e62aa281e5d3b06263.md) | 19 | `declaration-track:968c03e62aa281e5d3b062635e64069eb0d783bcbaa6936933a5051699db18d6` |
| 3 | `def` | [logNormalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/lognormalization--b4aae298794c4e116ca9e36e.md) | 24 | `declaration-track:b4aae298794c4e116ca9e36ea391afcd7c5275032bae8d4e111f9f0ee705a33f` |
| 4 | `theorem` | [exponential_at_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/exponential-at-half--870dacc8f99a8de913aa3846.md) | 29 | `result-track:870dacc8f99a8de913aa3846b7fad34053470d129c0bb6dbf80404ae9dc1d210` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/dirichletnumerator-half--4239cb71b880239e2e943ac0.md) | 39 | `result-track:4239cb71b880239e2e943ac043ef0ade0bb9950adc6fb1b41636f29ef28af80b` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctednumerator-half--28f0a71642b54de1b596190f.md) | 50 | `result-track:28f0a71642b54de1b596190f6d80a3808b9ff1dbf23692eeec4167d220b507d8` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctednumerator-differentiable--df222e8189eb5ed65aeded50.md) | 55 | `result-track:df222e8189eb5ed65aeded50b65a898e47665529a3aabe6b9428a233cb01c560` |
| 8 | `theorem` | [correctedNumerator_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctednumerator-hasderivat--d62f88a86a90bc8425079f12.md) | 60 | `result-track:d62f88a86a90bc8425079f12f339e858218ff037a3fbedd2bae43a6379775cfd` |
| 9 | `theorem` | [logNormalization_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/lognormalization-eq--9d197317c3d3cf56f9ce1844.md) | 79 | `result-track:9d197317c3d3cf56f9ce1844ebc94be679e7ff427ba5000b848aa712a465e9c9` |
| 10 | `theorem` | [correctedNumerator_hasDerivAt_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctednumerator-hasderivat-half--efe07f6172e628a4c841bbea.md) | 95 | `result-track:efe07f6172e628a4c841bbeada649a2d3878d8226e0cb77d826944461416d183` |
| 11 | `def` | [correctedQuotient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctedquotient--12bc60c8c39fe2462e2e7504.md) | 114 | `declaration-track:12bc60c8c39fe2462e2e75042e174d28d9bafbeea8410d2cd7c0274b50bf3e19` |
| 12 | `theorem` | [correctedQuotient_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctedquotient-of-ne--65f95ec097237df445a0cdfc.md) | 117 | `result-track:65f95ec097237df445a0cdfc1ce4b67918cf77f0d0968f07fa3ebebe20eb67e2` |
| 13 | `theorem` | [correctedNumerator_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctednumerator-factor--71f3f15d6b094f300a1226ce.md) | 123 | `result-track:71f3f15d6b094f300a1226ce3b436b48acf587c356e22c005992dec85b7dcf9a` |
| 14 | `theorem` | [correctedQuotient_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctedquotient-differentiable--1a9adf1627ca0e48d695f08e.md) | 129 | `result-track:1a9adf1627ca0e48d695f08e4c2e767444e367c8441b8af34978ec08876875b5` |
| 15 | `theorem` | [correctedQuotient_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctedquotient-half--e2bfb43beedb239a0c1acaab.md) | 135 | `result-track:e2bfb43beedb239a0c1acaab7c53702c37e819616e78c90ccb858b5e368c0940` |
| 16 | `theorem` | [correctedQuotient_tendsto_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/declarations/correctedquotient-tendsto-half--6fd7a1474b0dc31025829999.md) | 141 | `result-track:6fd7a1474b0dc310258299996f98c24034d02005c914828cdfcd21917883deec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
