# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b901f0e5de39bf2f57c0b3c596b4d32a591073ef",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b901f0e5de39bf2f57c0b3c596b4d32a591073ef`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaExpThree_gt_twenty](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetaexpthree-gt-twenty--783d2abe492239ea6d56f3f9.md) | 21 | `result-track:783d2abe492239ea6d56f3f962bf20c2e5f36dab91207245b31b97a340336e3b` |
| 2 | `def` | [gaussianFromThree](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/gaussianfromthree--07caf4105ccfd8d28a56fa89.md) | 26 | `declaration-track:07caf4105ccfd8d28a56fa89b965d77597704259db8ee489874da532764eb5f2` |
| 3 | `theorem` | [gaussian_ratio_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/gaussian-ratio-half--5bc76f87915fb17cb7427eb1.md) | 29 | `result-track:5bc76f87915fb17cb7427eb15eb4676edee569d40fb49c97267a6f8400398114` |
| 4 | `theorem` | [gaussianFromThree_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/gaussianfromthree-succ-le--dde414548fa34e1fd0e8bd07.md) | 40 | `result-track:dde414548fa34e1fd0e8bd07ba8549cd1f41ca7957423d725b9462630770f29a` |
| 5 | `theorem` | [gaussianFromThree_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/gaussianfromthree-geometric--f85f56e869460b0528a7a6e6.md) | 70 | `result-track:f85f56e869460b0528a7a6e6ae99b0ce8a840c5ec7ec393d0363ec2ff27cc226` |
| 6 | `theorem` | [thetaGaussianFromThree_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetagaussianfromthree-summable--2d4d714e153e9eea9d7dcdea.md) | 83 | `result-track:2d4d714e153e9eea9d7dcdea8fb0c29736809e3bc6a31eb32051c912a3a29d49` |
| 7 | `theorem` | [thetaGaussianFromThree_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetagaussianfromthree-tsum-le--8b18f894bb02c739aefb9404.md) | 96 | `result-track:8b18f894bb02c739aefb94041e47c1a5d331946153f7b061715716420ae8e7cb` |
| 8 | `theorem` | [thetaGaussian_exp_neg_eight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetagaussian-exp-neg-eight-le--282b4368d42a52fdfa275b42.md) | 113 | `result-track:282b4368d42a52fdfa275b424bc7de500644c6f852be345958271593c81d98ff` |
| 9 | `theorem` | [thetaGaussian_ninth_power_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetagaussian-ninth-power-bound--3f90519da193c0d9ce760ee4.md) | 125 | `result-track:3f90519da193c0d9ce760ee4421db02ab0b56d777e0c3966dbdb208470093bfa` |
| 10 | `def` | [thetaPhiJetErrorCoefficient](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetaphijeterrorcoefficient--a517c832ce7bbf15897683a4.md) | 162 | `declaration-track:a517c832ce7bbf15897683a49bc2f1e96ee34bfa60f4a8a55b71c2b6e4594745` |
| 11 | `theorem` | [thetaPhiJetErrorCoefficient_values](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetaphijeterrorcoefficient-values--336abe520e82965821c8b1a8.md) | 166 | `result-track:336abe520e82965821c8b1a82776426a6a8987b553d9a572227689773cedee99` |
| 12 | `def` | [jetRemainderTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/jetremainderterm--f525125df138adb0820a7de7.md) | 171 | `declaration-track:f525125df138adb0820a7de768c951b0ce4efdef01564ce213d367873280bb26` |
| 13 | `theorem` | [jetRemainderTerm_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/jetremainderterm-norm-le--501eb1a53a9933fe20b946c0.md) | 175 | `result-track:501eb1a53a9933fe20b946c0fcaca2707b34ee68087018a00580e1f9fb520a75` |
| 14 | `theorem` | [thetaPhiJet_remainder_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetaphijet-remainder-summable--fc8fae0a01cb0efd80ed1821.md) | 193 | `result-track:fc8fae0a01cb0efd80ed1821ce73cd882cca48d9b5086a2686c1b50e84100aea` |
| 15 | `theorem` | [thetaPhiJet_remainder_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean/declarations/thetaphijet-remainder-abs-le--258fe47881e6d6ee920319b6.md) | 203 | `result-track:258fe47881e6d6ee920319b6005f23e14099122e06132ee5f698c6c31b36fcf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
