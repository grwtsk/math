# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b82013ad9f41498e4c6367df285e0951e718fa79",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b82013ad9f41498e4c6367df285e0951e718fa79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq.MetaM` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Core` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subsingleton_or_nontrivial_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/declarations/subsingleton-or-nontrivial-elim--0688eccc4eeb0b079be02b87.md) | 17 | `result-track:0688eccc4eeb0b079be02b871b929fea2b2986205a8d700ba7b92c93e42795c3` |
| 2 | `def` | [nontrivialityByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/declarations/nontrivialitybyelim--66792a5338141c391b325cab.md) | 27 | `declaration-track:66792a5338141c391b325cabee0556222f94b9da35ff3df2f05b46b16673bbac` |
| 3 | `def` | [nontrivialityByAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/declarations/nontrivialitybyassumption--1d6d93b32447b1aaaff9be98.md) | 52 | `declaration-track:1d6d93b32447b1aaaff9be989931703401b4ab6481a6d4b78b20475d6ddd4a6f` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/declarations/syntax--971b041d6a7ad9e52651c6e1.md) | 100 | `declaration-track:971b041d6a7ad9e52651c6e1db2b1d7835e307f26d0c77a154ac954ba145f8fd` |
| 5 | `def` | [elabNontriviality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/declarations/elabnontriviality--3457f611db0322510de51ade.md) | 104 | `declaration-track:3457f611db0322510de51ade489ffefbfe0dbcf780a1a50ac7d2317f030a194f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
