# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoryCoherence.Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a19b539a551fb468d26013703a99d70b23586daa",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a19b539a551fb468d26013703a99d70b23586daa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Coherence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoricalComp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LiftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom--a384620d989b84324822b5b2.md) | 35 | `declaration-track:a384620d989b84324822b5b2818ea09bc4b09f404a34b0e6898ab0385a38add4` |
| 2 | `instance` | [liftHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthomid--e215179c6255cce4f2e347db.md) | 40 | `declaration-track:e215179c6255cce4f2e347db2c88e327fd6586f273447349b50459a86af596dc` |
| 3 | `instance` | [liftHomComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthomcomp--3676ea9b6bf97e8e1044bc8a.md) | 42 | `declaration-track:3676ea9b6bf97e8e1044bc8ac8e7b525f3b5aa797326a657f2dde8820758d367` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/instance--b01aad14ab72c0ae5fbd98ca.md) | 45 | `declaration-track:b01aad14ab72c0ae5fbd98ca0f5ffce0416210557088ee06f495e1a621a5cf89` |
| 5 | `class` | [LiftHom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom--63c3f4cfc5b192c35b0eb7a2.md) | 48 | `declaration-track:63c3f4cfc5b192c35b0eb7a245c11266842056508ab58f28aabe2ed6b44c802f` |
| 6 | `instance` | [liftHom₂Id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-id--676d53eab86ce485b854a484.md) | 53 | `declaration-track:676d53eab86ce485b854a48444df5407d9d91faa4f48e2185b0511abd4dcb5df` |
| 7 | `instance` | [liftHom₂LeftUnitorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-leftunitorhom--a00c9dc0ff90f0bf619320a3.md) | 56 | `declaration-track:a00c9dc0ff90f0bf619320a354410a10cccc07ce247e2e1247e88dbad816cb0c` |
| 8 | `instance` | [liftHom₂LeftUnitorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-leftunitorinv--8146d9dc2a04b1ffd5177606.md) | 59 | `declaration-track:8146d9dc2a04b1ffd5177606c53e5f47382650e86fcc3abc0eee7d476f09c4cf` |
| 9 | `instance` | [liftHom₂RightUnitorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-rightunitorhom--89ad176a508762883239df4c.md) | 62 | `declaration-track:89ad176a508762883239df4c6890801a5de9be81cae38faf232fffd5a09a455d` |
| 10 | `instance` | [liftHom₂RightUnitorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-rightunitorinv--82f23fcc5fcfb1b8a575d650.md) | 65 | `declaration-track:82f23fcc5fcfb1b8a575d650859b4efeddc1b206a16adc4bde7dbecb432755da` |
| 11 | `instance` | [liftHom₂AssociatorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-associatorhom--0b61dc21255375c24bcbc37a.md) | 68 | `declaration-track:0b61dc21255375c24bcbc37a5fa46142facb7c5291fdb4c2ddc3849ae9da59d3` |
| 12 | `instance` | [liftHom₂AssociatorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-associatorinv--8e6a3c5f7e257a34954c30f9.md) | 72 | `declaration-track:8e6a3c5f7e257a34954c30f9bda4eab9ee605758b99c1f425031619746b88840` |
| 13 | `instance` | [liftHom₂Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-comp--e2569971356a4cb0589269aa.md) | 76 | `declaration-track:e2569971356a4cb0589269aaae9126273f66d7427aff96e92619c6b4b8eb0226` |
| 14 | `instance` | [liftHom₂WhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-whiskerleft--0bbe2ed2dcb9a8b6c292340e.md) | 80 | `declaration-track:0bbe2ed2dcb9a8b6c292340e20a014132fae5e1a2b247a4f26fe7a4a8962e1ca` |
| 15 | `instance` | [liftHom₂WhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/lifthom-whiskerright--1bd3f70ce6ba87c6165d9e7f.md) | 84 | `declaration-track:1bd3f70ce6ba87c6165d9e7fbd2bdf2cde5ddc2814b12c87ee227e40c7b2e45c` |
| 16 | `def` | [exception](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/exception--10836c4f4ec00029471a4275.md) | 91 | `declaration-track:10836c4f4ec00029471a4275b7ccd880fc0e4f5da12215a1fcc39e12ff670a63` |
| 17 | `def` | [exception'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/exception--ddca4c7952f11ae2c6ae1d12.md) | 95 | `declaration-track:ddca4c7952f11ae2c6ae1d12b6ba496d20650e12d4501deacf262633a113b55b` |
| 18 | `def` | [mkLiftMap₂LiftExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/mkliftmap-liftexpr--8b07531f533dccbcf09330a3.md) | 106 | `declaration-track:8b07531f533dccbcf09330a36f158e899b80f69fb458eacb0e72816332f79691` |
| 19 | `def` | [bicategory_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/bicategory-coherence--d82d1deda16f4ec0f4a28a19.md) | 112 | `declaration-track:d82d1deda16f4ec0f4a28a19d3dfa1e3d54494b283b4ee941f9bdde1f4227324` |
| 20 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/elab--74159424e69e1adbd511dd1f.md) | 132 | `declaration-track:74159424e69e1adbd511dd1fcc36a8230f66298479ec4c90cbcf19d9d3f08004` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/syntax--0548250255deee9c7da955b3.md) | 139 | `declaration-track:0548250255deee9c7da955b3f66990cfdeea3734e97de4aa44aaf6a28ac59148` |
| 22 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/elab-rules--6d19f92ce31b2b55df9827ee.md) | 142 | `declaration-track:6d19f92ce31b2b55df9827eeb20ff9bfef191bb982d19b7fd33af0fe5e9f717b` |
| 23 | `theorem` | [assoc_liftHom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Variant5594cb874bff7d0064497a1c25984547dab9633fe33e83985b740545f304e8b1.lean/declarations/assoc-lifthom--6716babcb0329a0140c89dbd.md) | 160 | `result-track:6716babcb0329a0140c89dbd92ee7da32eaf6f51ca7c6754a68b7db95ac8fa2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
