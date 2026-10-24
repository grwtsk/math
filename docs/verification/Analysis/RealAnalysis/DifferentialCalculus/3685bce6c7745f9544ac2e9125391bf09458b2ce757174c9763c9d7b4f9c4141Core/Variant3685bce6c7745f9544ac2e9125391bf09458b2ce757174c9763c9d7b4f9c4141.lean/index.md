# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core.Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b99f93f0dde6843cda470e71a2f105bd957701d6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b99f93f0dde6843cda470e71a2f105bd957701d6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhi_poly_exp_norm_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetaphi-poly-exp-norm-le-tail--c763588f9f48274442e3ae60.md) | 15 | `result-track:c763588f9f48274442e3ae6061c58e6413978d06accbe99612a262c755430982` |
| 2 | `theorem` | [thetaPhi_poly_exp_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetaphi-poly-exp-integrableon--31647b22081999b486f9b653.md) | 56 | `result-track:31647b22081999b486f9b653af99a75def53102e10dc62f9b1170c59a68703b9` |
| 3 | `theorem` | [thetaPhi_evenBasis_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetaphi-evenbasis-integrableon--9f8e55c7add997fe9e772718.md) | 82 | `result-track:9f8e55c7add997fe9e7727183e0463012ae7e879ff191f5bb9404802a39ccc4c` |
| 4 | `def` | [thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetaphiexpmomentintegrand--edc706a23ea4cdd6beecfc94.md) | 98 | `declaration-track:edc706a23ea4cdd6beecfc947027a3a964c7448bb6358c1c56f3a1eacbc6f571` |
| 5 | `def` | [thetaPhiExpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetaphiexpmoment--431a225121330361bff18034.md) | 102 | `declaration-track:431a225121330361bff1803432f53b54b502e63422522adbbf49aaaf1b9a7498` |
| 6 | `theorem` | [continuous_thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/continuous-thetaphiexpmomentintegrand--3d2136e4b93816073b79e056.md) | 106 | `result-track:3d2136e4b93816073b79e0560661efa4fccdd4aeac73cd132eaa053b1581fc37` |
| 7 | `theorem` | [thetaPhiExpMomentIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetaphiexpmomentintegrand-norm-le--a6c2ed19617ed5d3b5793794.md) | 114 | `result-track:a6c2ed19617ed5d3b5793794373d484f38cce536ee8c599b80db34b09f23195b` |
| 8 | `theorem` | [thetaPhiExpMomentIntegrand_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetaphiexpmomentintegrand-integrableon--e7231c38eb203df5b7a2e44d.md) | 134 | `result-track:e7231c38eb203df5b7a2e44d55dc6ceec7ea33f66f15110923685eeb34fafef1` |
| 9 | `theorem` | [hasDerivAt_thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/hasderivat-thetaphiexpmomentintegrand--fb40f804e6308889ccb82aa8.md) | 142 | `result-track:fb40f804e6308889ccb82aa89803a77e937f24adae137a5f9b26e5eb8bc025e4` |
| 10 | `theorem` | [hasDerivAt_thetaPhiExpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/hasderivat-thetaphiexpmoment--7eea549b29881ee895882ec4.md) | 152 | `result-track:7eea549b29881ee895882ec4a98b8c76d5e4a2990759a7c55a7bc2283b01d285` |
| 11 | `def` | [thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetacenteredmomentjet--2f10b14d21a44858aabb8cfa.md) | 179 | `declaration-track:2f10b14d21a44858aabb8cfacec960553c9a12a95ccd1c4c94addaea2c6c0194` |
| 12 | `theorem` | [hasDerivAt_thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/hasderivat-thetacenteredmomentjet--063a9b39dfe57d06aaafd37b.md) | 183 | `result-track:063a9b39dfe57d06aaafd37b0f7b9cc0d4e226f4502925e77fd475867b44ebbf` |
| 13 | `theorem` | [iteratedDeriv_thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/iteratedderiv-thetacenteredmomentjet--c7d129653f66ac73c30133f4.md) | 192 | `result-track:c7d129653f66ac73c30133f47915f77fabcefaeac367885bcd7564b3b087c881` |
| 14 | `theorem` | [thetaCenteredMomentJet_even_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/declarations/thetacenteredmomentjet-even-zero--3b8c614b5d44fead55fb501b.md) | 201 | `result-track:3b8c614b5d44fead55fb501b981d24a757d46662156679a909e6e0b67f33a9db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
