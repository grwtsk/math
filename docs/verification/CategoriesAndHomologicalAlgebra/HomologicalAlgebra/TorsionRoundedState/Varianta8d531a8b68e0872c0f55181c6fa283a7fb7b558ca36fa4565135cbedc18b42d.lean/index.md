# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TorsionRoundedState.Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bd07553217180c9f5a405d8c885ab2deadb6864",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bd07553217180c9f5a405d8c885ab2deadb6864`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.PhaseSplitting` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Homology.TorsionLedger` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionRoundedState](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/torsionroundedstate--5d052c4d895b2bf6d4ebf409.md) | 22 | `declaration-track:5d052c4d895b2bf6d4ebf40910a3818a29575a47adbaec3ea4a8db6b9ef474e5` |
| 2 | `theorem` | [exact_continuous_split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/exact-continuous-split--4e8b87b184e265b17115f607.md) | 107 | `result-track:4e8b87b184e265b17115f60733e2a5367a0cfdc5f6c89c31603f487020f49c75` |
| 3 | `theorem` | [branch_is_exact_minimizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/branch-is-exact-minimizer--5eb58084224bab260f003608.md) | 114 | `result-track:5eb58084224bab260f00360854c9a3b64c37b9a7844c1a353ba9406332209640` |
| 4 | `theorem` | [bockstein_agrees](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/bockstein-agrees--f6dd2b10589aaf9300d96fc9.md) | 120 | `result-track:f6dd2b10589aaf9300d96fc96a74df2109fb89eda7f5a87a9db113c96ce5cf9e` |
| 5 | `theorem` | [phaseTorsionFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/phasetorsionfinite--b0f7f04fe55d6ddf9feaa02b.md) | 130 | `result-track:b0f7f04fe55d6ddf9feaa02b90a25fab9d7ded5ebe44b2764a6cdf83ecb80f0b` |
| 6 | `def` | [bocksteinCoordinates](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/bocksteincoordinates--7ce980608ee73f6bd090e67b.md) | 138 | `declaration-track:7ce980608ee73f6bd090e67be8d7b31ae65a73a4ee13a7cc7b3156911c765c14` |
| 7 | `theorem` | [bocksteinCoordinates_agree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/bocksteincoordinates-agree--9247067022e86da88febdfa9.md) | 145 | `result-track:9247067022e86da88febdfa944d23eb866e1aa46d993582dc0707ce97d6ffeb9` |
| 8 | `theorem` | [torsionLift_eq_splitting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/declarations/torsionlift-eq-splitting--f41635809ccb7c9ea83523a1.md) | 155 | `result-track:f41635809ccb7c9ea83523a1b150ee61db25f3f77d37e202341dcc57c83b2b9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
