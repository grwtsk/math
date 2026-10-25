# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "327af7bb763c0bc160aa31f490758333de7e31a6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `327af7bb763c0bc160aa31f490758333de7e31a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.FreimanHom` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCorner](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscorner--b77a60cf792da760ca29057d.md) | 36 | `declaration-track:b77a60cf792da760ca29057d4744a3da88f39082fcc527efcb4f76fb84221af6` |
| 2 | `def` | [IsCornerFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscornerfree--f31bfa57ead08772a92fba12.md) | 43 | `declaration-track:f31bfa57ead08772a92fba128547de2c35554b9686a5be3e4e8d5e42d2619974` |
| 3 | `lemma` | [isCornerFree_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscornerfree-iff--dca6e7819b1b0980baf6ea49.md) | 46 | `result-track:dca6e7819b1b0980baf6ea49a42a921eac8f931078186c1bd2d92102f35a99fd` |
| 4 | `lemma` | [IsCorner.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscorner-mono--8c11f11d06ed3b6e33b92818.md) | 53 | `result-track:8c11f11d06ed3b6e33b92818dd43db75c6949ab5840da5cf556f5bea27aa5e29` |
| 5 | `lemma` | [IsCornerFree.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscornerfree-mono--55addd3eff63d11917cefb6a.md) | 59 | `result-track:55addd3eff63d11917cefb6a5ab9ab492bed6d90e209e0f7eb3cb931b7d4d5b6` |
| 6 | `lemma` | [not_isCorner_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/not-iscorner-empty--e653c3dc0d3709ab2cf9d049.md) | 62 | `result-track:e653c3dc0d3709ab2cf9d0497804e9838e0ddc866f07a3630a62a0aa05de7e0d` |
| 7 | `lemma` | [Set.Subsingleton.isCornerFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/set-subsingleton-iscornerfree--106180d97724977f99281d72.md) | 64 | `result-track:106180d97724977f99281d72deefd44b42374375c6c55faa0fdfb31d3e51c09f` |
| 8 | `lemma` | [isCornerFree_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscornerfree-empty--4f8d0134e0db661cecf1354e.md) | 67 | `result-track:4f8d0134e0db661cecf1354eeec6ad8b95cc56bc1d7cdee6786ed0dfbdb1d3fc` |
| 9 | `lemma` | [isCornerFree_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscornerfree-singleton--f96b9aa522fa8e4a930d21ce.md) | 68 | `result-track:f96b9aa522fa8e4a930d21ceddd279521922c18385e889075d8a7405e1229464` |
| 10 | `lemma` | [IsCorner.image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscorner-image--3efeb34166abbae11826503c.md) | 71 | `result-track:3efeb34166abbae11826503c95762e75703dbd34014ee604fec8414ddf49ef99` |
| 11 | `lemma` | [IsCornerFree.of_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscornerfree-of-image--f700886b46613f6cd457e6bf.md) | 78 | `result-track:f700886b46613f6cd457e6bfc8d4ac0dad9863f33b31b4cb2d7bb7f26d8219c4` |
| 12 | `lemma` | [isCorner_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscorner-image--efc91d2520dc33c6ec9841b9.md) | 83 | `result-track:efc91d2520dc33c6ec9841b9504bd970a2f2d57583d0f361d0238e946217431c` |
| 13 | `lemma` | [isCornerFree_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/declarations/iscornerfree-image--2e13c892ee6a51122aadf905.md) | 94 | `result-track:2e13c892ee6a51122aadf9058665ef3251df3af188821069d3b57d4beb6d0df9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
