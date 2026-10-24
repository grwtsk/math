# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Completion.Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba23511efb8ba3eefc8d415e58b54583761f1a8a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba23511efb8ba3eefc8d415e58b54583761f1a8a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Completion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformField` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/instance--d683b412226283ac9be6389a.md) | 32 | `declaration-track:d683b412226283ac9be6389a85accfbe48664f3634409227ab438098f7a4fa98` |
| 2 | `def` | [toComplₗᵢ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/tocompl--68d4d97774a535b325ce9f7e.md) | 42 | `declaration-track:68d4d97774a535b325ce9f7e7efa423c5627fb269171141e014207590e48dfdb` |
| 3 | `theorem` | [coe_toComplₗᵢ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/coe-tocompl--f813416cb3062a83df72b439.md) | 49 | `result-track:f813416cb3062a83df72b4397a04e6908b013ce5a9e6e4b47585c4813eda2351` |
| 4 | `def` | [toComplL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/tocompll--9d9f3fe60ed88cec58e0957d.md) | 53 | `declaration-track:9d9f3fe60ed88cec58e0957d9742e3c63e66c0ddfc24eb831694840e00bb4ce7` |
| 5 | `theorem` | [coe_toComplL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/coe-tocompll--93dcd60c07c6056e5785e4f7.md) | 57 | `result-track:93dcd60c07c6056e5785e4f744f60742d64f53a570091c4d5cfdbd9f482fd377` |
| 6 | `theorem` | [norm_toComplL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/norm-tocompll--41205a8eb6dc966431689af8.md) | 61 | `result-track:41205a8eb6dc966431689af8e6d5ab8329e04df7b147e39cec00526fccc6621a` |
| 7 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/instance--56b859fa4c51097f1ae2de1a.md) | 71 | `declaration-track:56b859fa4c51097f1ae2de1ada200aacadb132437da8dea4d3f6c2182cc65fc6` |
| 8 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/instance--923da6f98f6e57a890da0745.md) | 79 | `declaration-track:923da6f98f6e57a890da0745fed642c5c7392ac1803327553d967a42a3fc5c62` |
| 9 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/instance--8a5b066c7dad216b34e879b9.md) | 83 | `declaration-track:8a5b066c7dad216b34e879b9d4d4143502d4276036e3b020d7996c1c0fcb8944` |
| 10 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variant5147aaf0b59b81f5c383095ccea172694279203322d53403f7f91469e02fd3b6.lean/declarations/instance--d462425cb6ed6d56a922a444.md) | 87 | `declaration-track:d462425cb6ed6d56a922a44489d140babca9c1c6cd01fe6a9b1cd6e345719b89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
