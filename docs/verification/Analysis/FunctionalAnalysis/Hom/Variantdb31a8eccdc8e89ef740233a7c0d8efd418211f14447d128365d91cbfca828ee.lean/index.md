# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hom.Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3511a743fa95edbb31ad675ba427e9bcab7543b0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3511a743fa95edbb31ad675ba427e9bcab7543b0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.VectorBundle.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contMDiffOn_continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/declarations/contmdiffon-continuouslinearmapcoordchange--7ad289812aabb663b5016a67.md) | 45 | `result-track:7ad289812aabb663b5016a678912e1104a6a13c9a55346d4670ad955006b2a5f` |
| 2 | `theorem` | [hom_chart](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/declarations/hom-chart--060ac0a0e6d5482544934793.md) | 61 | `result-track:060ac0a0e6d548254493479355fcff5335aa7bdf5aef4c6f0708de5f07a2a58a` |
| 3 | `theorem` | [contMDiffAt_hom_bundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/declarations/contmdiffat-hom-bundle--5e1233576abfd7e92cc684c4.md) | 68 | `result-track:5e1233576abfd7e92cc684c4752718d420efb2e709b94ff0835a690cbeeccf1a` |
| 4 | `instance` | [Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/declarations/bundle-continuouslinearmap-vectorprebundle-iscontmdiff--2dee69a48e8be10d2c9d1d9a.md) | 80 | `declaration-track:2dee69a48e8be10d2c9d1d9ae5552bbe76c56d16cb2e0008ff4e291a60fa73e7` |
| 5 | `instance` | [ContMDiffVectorBundle.continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/declarations/contmdiffvectorbundle-continuouslinearmap--d04e1c0fbbf56e0150a8f3dd.md) | 92 | `declaration-track:d04e1c0fbbf56e0150a8f3dde2e1dfc44f619b48226e862be996685e35b083ce` |
| 6 | `lemma` | [ContMDiffWithinAt.clm_apply_of_inCoordinates](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/declarations/contmdiffwithinat-clm-apply-of-incoordinates--762b879975386484f13ea148.md) | 138 | `result-track:762b879975386484f13ea1483e790cd5e98686aa6f74a829f297ad7e4ede2828` |
| 7 | `lemma` | [ContMDiffAt.clm_apply_of_inCoordinates](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/declarations/contmdiffat-clm-apply-of-incoordinates--86eabc8746a373656c35be41.md) | 176 | `result-track:86eabc8746a373656c35be41b5a8971637a6979dcfe79797a5144f0e2a266299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
