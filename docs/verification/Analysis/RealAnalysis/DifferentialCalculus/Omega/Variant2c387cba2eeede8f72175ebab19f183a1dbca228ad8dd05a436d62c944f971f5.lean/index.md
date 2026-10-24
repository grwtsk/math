# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Omega.Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b59711fb5e89609d301390df30d3d2422f9def51",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b59711fb5e89609d301390df30d3d2422f9def51`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Seam` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [omegaW](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw--043e237f4bdb37d46068c2b7.md) | 34 | `declaration-track:043e237f4bdb37d46068c2b732b273c5b00fb6695ca148339f292939d34a3566` |
| 2 | `lemma` | [omegaW_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw-def--8c46c9a9631f5508fee17999.md) | 36 | `result-track:8c46c9a9631f5508fee17999debb7b709d652e55a519071a3127eeb150fb956e` |
| 3 | `theorem` | [omegaW_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw-analyticat--2d6eb5a619092d770b10f66b.md) | 38 | `result-track:2d6eb5a619092d770b10f66ba535bd9ebdd4854001dd2c27688b2f9f65f59070` |
| 4 | `theorem` | [omegaW_analyticOnNhd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw-analyticonnhd--b6cb2b113386bc3e33e3f8e3.md) | 41 | `result-track:b6cb2b113386bc3e33e3f8e3f96c049beab41952e1d4a0704afe86716c635d12` |
| 5 | `theorem` | [omegaW_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw-eq-zero-iff--b57f844870846b7930ed4413.md) | 44 | `result-track:b57f844870846b7930ed4413135d0b1db1a050f24780f633c93310a7ac6c5fea` |
| 6 | `theorem` | [analyticOrderAt_omegaW](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/analyticorderat-omegaw--2d9a28c39d50f3763ee30866.md) | 48 | `result-track:2d9a28c39d50f3763ee30866863414336338f8b3c7b6335e58080722a941123d` |
| 7 | `theorem` | [analyticOrderNatAt_omegaW](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/analyticordernatat-omegaw--58434450c2ce54e6adda30d5.md) | 54 | `result-track:58434450c2ce54e6adda30d50428c46ce8577abeed2ac4898cd5d47d2e2aab67` |
| 8 | `theorem` | [omegaW_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw-one-sub--add8acdfa6d9565796155f73.md) | 58 | `result-track:add8acdfa6d9565796155f733bffaa2d090026e5f700eb5b3ad8e037d90977a5` |
| 9 | `theorem` | [omegaW_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw-conj--c1a334ecf3d36edcb16dd636.md) | 63 | `result-track:c1a334ecf3d36edcb16dd6362de694a91dbcc86cef8be239bf18b26d1d17a1a6` |
| 10 | `theorem` | [omegaW_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/omegaw-differentiableat--5b5bbd35a98a5bbb2d3a55f1.md) | 66 | `result-track:5b5bbd35a98a5bbb2d3a55f1c98b8b1797c051d7b3ed0c493b04528265a86513` |
| 11 | `theorem` | [deriv_omegaW_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/deriv-omegaw-one-sub--87e486976106d4a336536df4.md) | 70 | `result-track:87e486976106d4a336536df4ce4d4a3eb8dbcf3351720a198ee7d3b26940b547` |
| 12 | `theorem` | [deriv_omegaW_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/deriv-omegaw-conj--9f51109fde311835a137df9e.md) | 82 | `result-track:9f51109fde311835a137df9e256b7ccb7ebc054db905552349af463cb7a39ddc` |
| 13 | `theorem` | [logDeriv_omegaW_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/logderiv-omegaw-one-sub--772d0784368ca7a51e38215f.md) | 88 | `result-track:772d0784368ca7a51e38215fa6c7498f645189479975011a73f391df2840cb26` |
| 14 | `theorem` | [logDeriv_omegaW_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/logderiv-omegaw-conj--ef0ab2b96700ae069b9a241b.md) | 91 | `result-track:ef0ab2b96700ae069b9a241b81c39104b8353d824402029deed53317fc08f5c9` |
| 15 | `theorem` | [logDeriv_omegaW_one_sub_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/logderiv-omegaw-one-sub-conj--16f065e0009d4717e050e845.md) | 96 | `result-track:16f065e0009d4717e050e8450644a24f05963c4de387dcd74985962a69c22eb1` |
| 16 | `theorem` | [logDeriv_omegaW_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant2c387cba2eeede8f72175ebab19f183a1dbca228ad8dd05a436d62c944f971f5.lean/declarations/logderiv-omegaw-eq--8cbbd21cd59dc164ebcee59a.md) | 102 | `result-track:8cbbd21cd59dc164ebcee59a615bdaeb1a96cc856531fae89070aed5750de691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
