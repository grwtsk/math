# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Chamber.Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638393b6f3e4546caf8b420b8b2dd373c4256d87",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638393b6f3e4546caf8b420b8b2dd373c4256d87`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `IndiscreteTerminalTopos.Representation` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePowerEvent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/primepowerevent--c5d2ad1a65c28473514c58b4.md) | 23 | `declaration-track:c5d2ad1a65c28473514c58b48136c41d6e132841d77bc6a6afa260409c65154f` |
| 2 | `structure` | [ChamberState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/chamberstate--c689c7f5e3b6cbad4f962d71.md) | 36 | `declaration-track:c689c7f5e3b6cbad4f962d717c14e7bb79c201fe09798a65abe4cd797ab591fa` |
| 3 | `structure` | [ScalarKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/scalarkernel--be01223e6c705e0009defda1.md) | 45 | `declaration-track:be01223e6c705e0009defda187054c2621f05b68ee21c888b10805e8687d3661` |
| 4 | `def` | [initialState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/initialstate--e53994e3f3336e4e35d6f160.md) | 76 | `declaration-track:e53994e3f3336e4e35d6f160131f1e98d131786406b118d3891033f64e52b461` |
| 5 | `def` | [advance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/advance--fcb7ffd50fb59759bfbc4f0b.md) | 80 | `declaration-track:fcb7ffd50fb59759bfbc4f0ba5eb8d3705702325817728eb15230d43fd05a4a5` |
| 6 | `theorem` | [stateRecurrence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/staterecurrence--49290e9f957aa87e6e748c0a.md) | 91 | `result-track:49290e9f957aa87e6e748c0a05cd2e71bd54fc936a5280e828cb3be7f973c23a` |
| 7 | `inductive` | [ClampRegime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/clampregime--66c2a77c8ea41c0919d5f376.md) | 101 | `declaration-track:66c2a77c8ea41c0919d5f376db6962f2489a9326ab92ab044fb64993b26e3e70` |
| 8 | `def` | [chamberFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/chamberfunction--46310bf9db81dab52561511b.md) | 108 | `declaration-track:46310bf9db81dab52561511bff0b0904837a688f0e2b35a55917684d7758fe61` |
| 9 | `def` | [ChamberConvexity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/chamberconvexity--427a85821806934232c0dd5b.md) | 117 | `declaration-track:427a85821806934232c0dd5b2f55588a2ad3323a585878e03cf604761a444c40` |
| 10 | `def` | [clampedMinimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/clampedminimum--992b0304f7a0741471e750fb.md) | 124 | `declaration-track:992b0304f7a0741471e750fb3eba665201ae92158f0a0f42567f63e8dd8b3eeb` |
| 11 | `def` | [OnePointCriterion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/onepointcriterion--c2323395dd09442e7060f605.md) | 131 | `declaration-track:c2323395dd09442e7060f6059c8c27fc8dff461873178e9ca1e366c6ab99a003` |
| 12 | `def` | [legendreState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/legendrestate--ac36487b3063a96c839169f4.md) | 139 | `declaration-track:ac36487b3063a96c839169f4488446b461bb1872d75d3b8ad639cb51a1c36745` |
| 13 | `def` | [LegendreImpulseIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/legendreimpulseidentity--c197a5a71bd34d1a1149c3d5.md) | 145 | `declaration-track:c197a5a71bd34d1a1149c3d5d56edafdf7197ead70c83d42e77777a322712e1a` |
| 14 | `structure` | [HardyGramData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/hardygramdata--98c0443d0d70459f9e3e20d6.md) | 155 | `declaration-track:98c0443d0d70459f9e3e20d638e92163a870646d6e4937af358a981c96e4a539` |
| 15 | `def` | [GramPositivity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/grampositivity--186d869db8d966b81b23e533.md) | 164 | `declaration-track:186d869db8d966b81b23e5332e68c4104e8ec492ef3029749f7e12b36e5da980` |
| 16 | `structure` | [FiniteFrontCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/finitefrontcertificate--f8ba005ab81f3278a2b708b7.md) | 170 | `declaration-track:f8ba005ab81f3278a2b708b7711ab044a7530786e8f5f2cd7c1d39d79499177f` |
| 17 | `def` | [LinearDriftObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/lineardriftobligation--6727c3574f6d86ef9b42a11f.md) | 178 | `declaration-track:6727c3574f6d86ef9b42a11f15e539bed8b2969c857ed6c33eff7a3575eb9019` |
| 18 | `def` | [HardyTailObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/hardytailobligation--97f6b481dbaeba56b25c9b48.md) | 186 | `declaration-track:97f6b481dbaeba56b25c9b48d9f4f743c2d7ff190aa77e83a7ff3f5361a6088f` |
| 19 | `structure` | [ChamberObject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/chamberobject--fb12d04b0a2542fdeed6ee30.md) | 192 | `declaration-track:fb12d04b0a2542fdeed6ee302c09324371d689334c3b7812e62a6133689c452c` |
| 20 | `def` | [mkChamberObject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/mkchamberobject--e5da5d81c989d93dfca4a13d.md) | 203 | `declaration-track:e5da5d81c989d93dfca4a13d3f43812e34e101cf85ee04b595c3f3b3911d84d7` |
| 21 | `def` | [RoundTripStatement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/declarations/roundtripstatement--f0737bfe914cd52151d0d880.md) | 214 | `declaration-track:f0737bfe914cd52151d0d880c1d94543886ac0fd072e556677c6c8c679aa4535` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
