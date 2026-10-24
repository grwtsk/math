# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NavierStokes.Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "673fb19e26e60818d446363afd953f618719f99b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `673fb19e26e60818d446363afd953f618719f99b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divergence](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/divergence--0c4dc7fc81cd760914ca3fc2.md) | 81 | `declaration-track:0c4dc7fc81cd760914ca3fc288c01f2d2d7ff862755f68358741fb71246247bd` |
| 2 | `theorem` | [divergence_of_not_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/divergence-of-not-differentiableat--de6976391083f803a05b7c73.md) | 88 | `result-track:de6976391083f803a05b7c73d25a4352e37b453fdc891929f73a1b0dbe43330f` |
| 3 | `theorem` | [divergence_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/divergence-zero--8e972d63a854086356bc9b3c.md) | 94 | `result-track:8e972d63a854086356bc9b3ce17fbee20724ff49c94579bb93dcfa933abb481f` |
| 4 | `theorem` | [divergence_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/divergence-const--94f849ef67413f9bb79693b1.md) | 99 | `result-track:94f849ef67413f9bb79693b107e38a7ed4dfd941c5b1c42e0f1d8ea784adde5d` |
| 5 | `theorem` | [divergence_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/divergence-add--9ba0d224729ff677db173ac9.md) | 104 | `result-track:9ba0d224729ff677db173ac9cdded878a932502cf911fa8e1f5e5478785c232b` |
| 6 | `theorem` | [divergence_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/divergence-smul--79121e89b4f9b13eaf93bc0b.md) | 111 | `result-track:79121e89b4f9b13eaf93bc0b95fd30660f0d84a94a8db65feedd1ab1dfd91816` |
| 7 | `def` | [IsOnePeriodic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/isoneperiodic--33d0ccd40ff82ed8efc23a6d.md) | 121 | `declaration-track:33d0ccd40ff82ed8efc23a6d905eab1aff45e9b23c05a3a95c7a0ca31713a217` |
| 8 | `structure` | [InitialVelocityCondition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/initialvelocitycondition--afbbffdf731a14ddd18eedf2.md) | 134 | `declaration-track:afbbffdf731a14ddd18eedf28b2b5be1ffb2601fed3b14a4f4788008b1e8ad70` |
| 9 | `structure` | [InitialVelocityConditionDecay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/initialvelocityconditiondecay--a66d762963edfc934bba9f72.md) | 150 | `declaration-track:a66d762963edfc934bba9f72688a8e9c6b9a922c5349b2bb034317ea233a4af8` |
| 10 | `structure` | [InitialVelocityConditionPeriodic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/initialvelocityconditionperiodic--01e3db798e11f92f0c9a6a80.md) | 164 | `declaration-track:01e3db798e11f92f0c9a6a80b30b0a7beccab365fbb777c4fdc772e4a85833c9` |
| 11 | `structure` | [ForceCondition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/forcecondition--82ce07d75e4a7da99ea2591b.md) | 175 | `declaration-track:82ce07d75e4a7da99ea2591bc8618aa9bbbc9d2efb207ea00afd7c68c11e94ad` |
| 12 | `structure` | [ForceConditionDecay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/forceconditiondecay--ca8c1f80d19e4c648119a05f.md) | 185 | `declaration-track:ca8c1f80d19e4c648119a05f3bde343bbfccd28ca8cfdd59b85d69f5d182c96a` |
| 13 | `structure` | [ForceConditionPeriodic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/forceconditionperiodic--bde9ef7122ba931f37b02a16.md) | 200 | `declaration-track:bde9ef7122ba931f37b02a16b288e125fa5c5a419da82c19d0fad8ec71414386` |
| 14 | `structure` | [NavierStokesExistenceAndSmoothness](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/navierstokesexistenceandsmoothness--c72ef980532140dd6cf277c6.md) | 217 | `declaration-track:c72ef980532140dd6cf277c62d62d36ff431628b717ab407d335158e1a34b685` |
| 15 | `structure` | [NavierStokesExistenceAndSmoothnessRn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/navierstokesexistenceandsmoothnessrn--9c9d2fee3c4d60bef3ab7756.md) | 245 | `declaration-track:9c9d2fee3c4d60bef3ab775697b915761f8f887e6ec58242d5b767c643d84ba8` |
| 16 | `structure` | [NavierStokesExistenceAndSmoothnessPeriodic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/navierstokesexistenceandsmoothnessperiodic--a547198fab096bb3f5ab5de5.md) | 262 | `declaration-track:a547198fab096bb3f5ab5de5699f565182117d92ab1b4a181f41f978dce181f3` |
| 17 | `theorem` | [navier_stokes_breakdown_R3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/navier-stokes-breakdown-r3--90c3aa80802f0f7aca41ec0d.md) | 273 | `result-track:90c3aa80802f0f7aca41ec0d5623f11c6229b4f8bc3c4a521823e59d3c156af8` |
| 18 | `theorem` | [navier_stokes_breakdown_periodic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant0cd193b8d5cbd0266e6e2f72e68dd5abcdcf2430ebd435dd9289737e9aa7da61.lean/declarations/navier-stokes-breakdown-periodic--77400cfdd63b0c1d9f90b34d.md) | 280 | `result-track:77400cfdd63b0c1d9f90b34d3af5b5f277fdd5a27a71d776a9f6311cc20317d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
