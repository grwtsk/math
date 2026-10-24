# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hom.Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "054dc88186226735ca61ceebce8be5b4e6874df7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `054dc88186226735ca61ceebce8be5b4e6874df7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.VectorBundle.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contMDiffOn_continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/declarations/contmdiffon-continuouslinearmapcoordchange--78704fe95d5ae5aaa4535464.md) | 53 | `result-track:78704fe95d5ae5aaa4535464a87a261541eee528dee40018e78bbda897b119ce` |
| 2 | `theorem` | [hom_chart](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/declarations/hom-chart--9b51636a015b5a3ab485f6b4.md) | 69 | `result-track:9b51636a015b5a3ab485f6b43df5c450b9102ec3dc70a2b32b08799d8c04856b` |
| 3 | `theorem` | [contMDiffAt_hom_bundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/declarations/contmdiffat-hom-bundle--a09ddd3f8771f6f554126176.md) | 76 | `result-track:a09ddd3f8771f6f554126176d6c91a37763f2c2543677cabd3f866eb63b99f84` |
| 4 | `instance` | [Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/declarations/bundle-continuouslinearmap-vectorprebundle-iscontmdiff--c587d2e2d5bc10fd010a332e.md) | 88 | `declaration-track:c587d2e2d5bc10fd010a332e730e35eea7d0ab2c09e218ce64d9fc87fba99ef8` |
| 5 | `instance` | [ContMDiffVectorBundle.continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/declarations/contmdiffvectorbundle-continuouslinearmap--389259d11fbc77c536cb798f.md) | 100 | `declaration-track:389259d11fbc77c536cb798f6bb4bc68181bd4168c5d0f62dc5b21dff168f25a` |
| 6 | `lemma` | [ContMDiffWithinAt.clm_apply_of_inCoordinates](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/declarations/contmdiffwithinat-clm-apply-of-incoordinates--0da6bcaf60425dcd74236185.md) | 146 | `result-track:0da6bcaf60425dcd742361852d797bd4be034e43c12f28abe08a7025cd2d8564` |
| 7 | `lemma` | [ContMDiffAt.clm_apply_of_inCoordinates](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/declarations/contmdiffat-clm-apply-of-incoordinates--0b29512bf374c50bd4ad1fbf.md) | 184 | `result-track:0b29512bf374c50bd4ad1fbff95d6084d870f79b163ae0663389d80469137af8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
