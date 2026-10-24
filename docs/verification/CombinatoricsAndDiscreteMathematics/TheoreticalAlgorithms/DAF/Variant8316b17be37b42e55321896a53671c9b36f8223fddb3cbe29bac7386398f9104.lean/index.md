# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAF.Variant8316b17be37b42e55321896a53671c9b36f8223fddb3cbe29bac7386398f9104

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce8cd91293a2a332179792998c8441bcb0ad4a50",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAF/Variant8316b17be37b42e55321896a53671c9b36f8223fddb3cbe29bac7386398f9104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAF/Variant8316b17be37b42e55321896a53671c9b36f8223fddb3cbe29bac7386398f9104.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAF/Variant8316b17be37b42e55321896a53671c9b36f8223fddb3cbe29bac7386398f9104.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce8cd91293a2a332179792998c8441bcb0ad4a50`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAF/Variant8316b17be37b42e55321896a53671c9b36f8223fddb3cbe29bac7386398f9104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAF/Variant8316b17be37b42e55321896a53671c9b36f8223fddb3cbe29bac7386398f9104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.System` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Codec` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Causal` — import line 8; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObservableRecursion` — import line 9; external provider; requires a separately pinned dependency.
- `DAF.Causal.CausalState` — import line 10; external provider; requires a separately pinned dependency.
- `DAF.Causal.PredictiveRepresentation` — import line 11; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 12; external provider; requires a separately pinned dependency.
- `DAF.Causal.QuantizerTower` — import line 13; external provider; requires a separately pinned dependency.
- `DAF.Causal.ReversibleCausalState` — import line 14; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObservableAdapter` — import line 15; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 16; external provider; requires a separately pinned dependency.
- `DAF.DependencyGraph` — import line 17; external provider; requires a separately pinned dependency.
- `DAF.Manifest` — import line 18; external provider; requires a separately pinned dependency.
- `DAF.BuildModel` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Project` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.Upgrade` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Integration.CertifiedUpgrade` — import line 22; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Permutation` — import line 23; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.FirstReturn` — import line 24; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.GradedFirstReturn` — import line 25; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Generic` — import line 26; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 27; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.InvolutiveCycle` — import line 28; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.CycleTransport` — import line 29; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.CycleConvolution` — import line 30; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.InvolutiveConvolution` — import line 31; external provider; requires a separately pinned dependency.
- `DAF.Homology.HomologicalLift` — import line 32; external provider; requires a separately pinned dependency.
- `DAF.ObserverDynamics.Spectral` — import line 33; external provider; requires a separately pinned dependency.
- `DAF.Runtime.ReducerIR` — import line 34; external provider; requires a separately pinned dependency.
- `DAF.Runtime.RingState` — import line 35; external provider; requires a separately pinned dependency.
- `DAF.Comparison` — import line 36; external provider; requires a separately pinned dependency.
- `DAF.Determinant` — import line 37; external provider; requires a separately pinned dependency.
- `DAF.Arithmetic` — import line 38; external provider; requires a separately pinned dependency.
- `DAF.Fabric` — import line 39; external provider; requires a separately pinned dependency.
- `DAF.Prismatic` — import line 40; external provider; requires a separately pinned dependency.
- `DAF.Cyclotomic.Defect` — import line 41; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GlobalProjection` — import line 42; external provider; requires a separately pinned dependency.
- `BitMatrix.Algebra.InvolutionProjection` — import line 43; external provider; requires a separately pinned dependency.
- `BitMatrix.Network.IntegralPermutationLift` — import line 44; external provider; requires a separately pinned dependency.
- `BitMatrix.Surgery.Submatrix` — import line 45; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Surgery` — import line 46; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Refinement` — import line 47; external provider; requires a separately pinned dependency.
- `DAF.Terrain.WindowCover` — import line 48; external provider; requires a separately pinned dependency.
- `DAF.Geometry.RasterRefinement` — import line 49; external provider; requires a separately pinned dependency.
- `DAF.Geometry.RasterSurgery` — import line 50; external provider; requires a separately pinned dependency.
- `DAF.Geometry.LegalDiffusion` — import line 51; external provider; requires a separately pinned dependency.
- `DAF.Fabric.SurgeryAdapter` — import line 52; external provider; requires a separately pinned dependency.
- `DAF.Prismatic.TerrainRealization` — import line 53; external provider; requires a separately pinned dependency.
- `DAF.Prismatic.SourceRealizationFunctoriality` — import line 54; external provider; requires a separately pinned dependency.
- `DAF.Prismatic.RasterBridge` — import line 55; external provider; requires a separately pinned dependency.
- `DAF.Prismatic.SurgeryBridge` — import line 56; external provider; requires a separately pinned dependency.
- `DAF.Integration.GloballyAnchoredWindowDiffusion` — import line 57; external provider; requires a separately pinned dependency.
- `DAF.Integration.InvolutivePrismaticMove` — import line 58; external provider; requires a separately pinned dependency.
- `DAF.Integration.BinaryChargedPrismaticTerrain` — import line 59; external provider; requires a separately pinned dependency.
- `DAF.Integration.AvalancheReconciliation` — import line 60; external provider; requires a separately pinned dependency.
- `DAF.Integration.SurgeryTransaction` — import line 61; external provider; requires a separately pinned dependency.
- `DAF.Integration.BoundedPrismaticDiffusion` — import line 62; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
