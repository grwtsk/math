# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PhragmenLindelof.Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f32921e752cd12d6e087e8468d3fe443cf558bf",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f32921e752cd12d6e087e8468d3fe443cf558bf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SuperpolynomialDecay` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/macro-rules--c6353e6220f11e41616da34c.md) | 59 | `declaration-track:c6353e6220f11e41616da34c818376020577a9c7365d5f9f3dd57c7a22df5b32` |
| 2 | `theorem` | [isBigO_sub_exp_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/isbigo-sub-exp-exp--54e8308428fa151e562e9084.md) | 72 | `result-track:54e8308428fa151e562e908423b0d910a380535944d4f51e894ee58ba4fd526c` |
| 3 | `theorem` | [isBigO_sub_exp_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/isbigo-sub-exp-rpow--817c9cf69ce7bbf45b3f9854.md) | 92 | `result-track:817c9cf69ce7bbf45b3f985441bb2dbc6891b7d25769189b181cb4fd5faf3b24` |
| 4 | `theorem` | [horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/horizontal-strip--c729ed520ee3f0b7d9d2c801.md) | 130 | `result-track:c729ed520ee3f0b7d9d2c801eaabd14554dd20e14fce543f9620bd1351bae54a` |
| 5 | `theorem` | [eq_zero_on_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eq-zero-on-horizontal-strip--4df4aa7774ba4f1866f6e9b3.md) | 248 | `result-track:4df4aa7774ba4f1866f6e9b3fb8349dac29fee15ef53c4e086a49ad26dafea48` |
| 6 | `theorem` | [eqOn_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eqon-horizontal-strip--e91fe8a1c1cf96a1b625cc11.md) | 267 | `result-track:e91fe8a1c1cf96a1b625cc1183f5f8a125f50cbdcc6bbd5346425d425d9fbab0` |
| 7 | `theorem` | [vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/vertical-strip--b216b4d7d29cb428c2ac6820.md) | 294 | `result-track:b216b4d7d29cb428c2ac6820bcee627a8b81870ea742e320c00f88b37f4f159d` |
| 8 | `theorem` | [eq_zero_on_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eq-zero-on-vertical-strip--938a309a1b6a21ca5898569a.md) | 323 | `result-track:938a309a1b6a21ca5898569aad758e918cb9a6964b848962bf929400690e9647` |
| 9 | `theorem` | [eqOn_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eqon-vertical-strip--6b593e3cba753fad661065d2.md) | 342 | `result-track:6b593e3cba753fad661065d2b617bce69450996afc9415a92b0f6f7cd375e3c3` |
| 10 | `theorem` | [quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/quadrant-i--d5bd2acba85b32cbe25bffef.md) | 366 | `result-track:d5bd2acba85b32cbe25bffef7014e293540963caf791c94e0140b46da472b1a5` |
| 11 | `theorem` | [eq_zero_on_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eq-zero-on-quadrant-i--13cfcf097b27dd54d04aa7ab.md) | 436 | `result-track:13cfcf097b27dd54d04aa7ab1b883e674bd1e19edf226a074fd6b4cd89e5527e` |
| 12 | `theorem` | [eqOn_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eqon-quadrant-i--05b7e95ebfa1f09d8f9ba55d.md) | 455 | `result-track:05b7e95ebfa1f09d8f9ba55dd32f18337349b1de2e16624ef11c84643424ca24` |
| 13 | `theorem` | [quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/quadrant-ii--b56462246879f13d29261acc.md) | 477 | `result-track:b56462246879f13d29261acc8192e22c4e3629238db74405a7ec38e6fbb7efb9` |
| 14 | `theorem` | [eq_zero_on_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eq-zero-on-quadrant-ii--cf8bd91c7a18cbf0baaa37f2.md) | 505 | `result-track:cf8bd91c7a18cbf0baaa37f2697acf85a3ff5fe0634a315e7acc8e48ac76bca9` |
| 15 | `theorem` | [eqOn_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eqon-quadrant-ii--0d2366f1fb92d2cfdfd46fea.md) | 524 | `result-track:0d2366f1fb92d2cfdfd46fea77aa93ab5683d054fba7924ed7dc7515800f3735` |
| 16 | `theorem` | [quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/quadrant-iii--46dc90afafe60cdac89ea93b.md) | 545 | `result-track:46dc90afafe60cdac89ea93ba23b08b9a9de156cc1483c5f6aa7c0478d450fbe` |
| 17 | `theorem` | [eq_zero_on_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eq-zero-on-quadrant-iii--e9ccc1443c5c519c3f1d953c.md) | 578 | `result-track:e9ccc1443c5c519c3f1d953c40650211e5c37b3aa226382933f25a970eb63f3e` |
| 18 | `theorem` | [eqOn_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eqon-quadrant-iii--b753598ce52998ac39d6bd7c.md) | 596 | `result-track:b753598ce52998ac39d6bd7c542183bf426cd6a3259e7945e150ee97ba98cb56` |
| 19 | `theorem` | [quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/quadrant-iv--540e450cc96e388520c88ca9.md) | 617 | `result-track:540e450cc96e388520c88ca9365c0fc1d5bc63237abb3dd1fe5038e7e62c8523` |
| 20 | `theorem` | [eq_zero_on_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eq-zero-on-quadrant-iv--c02a732c777d6fc33c7e511c.md) | 648 | `result-track:c02a732c777d6fc33c7e511cf44b302014811a9dc827c1f520ce9517112bab08` |
| 21 | `theorem` | [eqOn_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eqon-quadrant-iv--af7347231f666c422cd99d1e.md) | 667 | `result-track:af7347231f666c422cd99d1e03d17647066c49bae71b1caa58e2a8e7bff5dc61` |
| 22 | `theorem` | [right_half_plane_of_tendsto_zero_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/right-half-plane-of-tendsto-zero-on-real--f6406795e49fd06f4e0fdcbf.md) | 695 | `result-track:f6406795e49fd06f4e0fdcbfac8ff3183b43673cacb64e652742366fcd86ff8a` |
| 23 | `theorem` | [right_half_plane_of_bounded_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/right-half-plane-of-bounded-on-real--a3348d136f61fb836026a06e.md) | 768 | `result-track:a3348d136f61fb836026a06e89ddb82024c7d16e4dd37ffc500bd24a681cf988` |
| 24 | `theorem` | [eq_zero_on_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eq-zero-on-right-half-plane-of-superexponential-decay--fb04d4e8a464dea0a6d047f8.md) | 812 | `result-track:fb04d4e8a464dea0a6d047f857fa932efa279e6ea4548556052cc15fef2b1abe` |
| 25 | `theorem` | [eqOn_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/declarations/eqon-right-half-plane-of-superexponential-decay--25e8991a6ba1c0edda94e8c6.md) | 869 | `result-track:25e8991a6ba1c0edda94e8c670a42d88f2eb7a83201139a851c18a44c3a9a2e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
