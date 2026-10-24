# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionGroupoid.Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "790670daec1d2c691a9e7b67971cb14f5ae6ae16",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `790670daec1d2c691a9e7b67971cb14f5ae6ae16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.IntrinsicScalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.MonoHierarchy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectionProfile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/projectionprofile--45ea62531ff9ad21b9bacb0c.md) | 29 | `declaration-track:45ea62531ff9ad21b9bacb0c7ff5280babee97a5e64aeaf3899154789417a4e5` |
| 2 | `def` | [Admissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/admissible--77993cd3933307f3e33c2f1f.md) | 42 | `declaration-track:77993cd3933307f3e33c2f1fffdd0511ac663d01bda1a2e4e9c794b1ebbf0707` |
| 3 | `structure` | [ProjectionMorphism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/projectionmorphism--03783afabb13f6fd7872ee26.md) | 48 | `declaration-track:03783afabb13f6fd7872ee26aeb940f876ae9990bc119358e91309a6fab36f0f` |
| 4 | `structure` | [ProjectionGroupoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/projectiongroupoid--c52952a524d462bfc8685975.md) | 58 | `declaration-track:c52952a524d462bfc8685975a43ef142f52a49b344ac7b2b06d5eda7c1d84d6e` |
| 5 | `def` | [projectionOrbit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/projectionorbit--1465f5652f90ef1c6496bd7a.md) | 70 | `declaration-track:1465f5652f90ef1c6496bd7aa5fc5958db5f7db82be6e3e27447ca54ea930094` |
| 6 | `theorem` | [projection_mem_orbit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/projection-mem-orbit--8dbe7c447b582632d543202f.md) | 77 | `result-track:8dbe7c447b582632d543202ff96a5682b79f9394e19998cc8c0d690042163252` |
| 7 | `def` | [IsIntrinsicRepresentative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/isintrinsicrepresentative--2a44263d3df071c35de655c5.md) | 87 | `declaration-track:2a44263d3df071c35de655c5dba341d00f9d174449d13f357c310959d817cd4f` |
| 8 | `structure` | [IntrinsicProjectionLaw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/intrinsicprojectionlaw--e17495c63b479d0e5a204cc1.md) | 99 | `declaration-track:e17495c63b479d0e5a204cc173b7477788ec09660dbbced008345799ec366904` |
| 9 | `def` | [admissibleProjectionEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/admissibleprojectionequiv--7e2546889fce22bc6d064767.md) | 113 | `declaration-track:7e2546889fce22bc6d0647672cbbb62ca841348d55f93df6b22106b7eacda81f` |
| 10 | `theorem` | [projectionGroupoid_determined](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ProjectionGroupoid/Variant76f2d3ee0a923b209684f28eb472b5abbeb6eb571924984addb7acae7fc81e62.lean/declarations/projectiongroupoid-determined--1b3986ea5f6e4ecae75d98bd.md) | 146 | `result-track:1b3986ea5f6e4ecae75d98bddc6eee74d5276118f317a85908fc98b7019cd388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
