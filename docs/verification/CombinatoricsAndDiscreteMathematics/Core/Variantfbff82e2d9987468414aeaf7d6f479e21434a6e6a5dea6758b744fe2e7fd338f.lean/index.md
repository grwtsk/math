# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4a69d6feb0ec79de8836f9640c0469a281c4bde",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4a69d6feb0ec79de8836f9640c0469a281c4bde`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Terrain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/declarations/terrain--79390244cf9998d0030bf93f.md) | 28 | `declaration-track:79390244cf9998d0030bf93f3e4ac537436563315e95aeeb2844bc8eeafced83` |
| 2 | `def` | [Adjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/declarations/adjacent--1ce22ca98e9b82889bed02f4.md) | 36 | `declaration-track:1ce22ca98e9b82889bed02f4b81fe9083e18c52f11c286390c8263e9fffbfd36` |
| 3 | `theorem` | [adjacent_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/declarations/adjacent-comm--76b84578ece52dc513267d92.md) | 40 | `result-track:76b84578ece52dc513267d926d9630f130ae3f77acc3fe2ca651059a41a3bec2` |
| 4 | `theorem` | [not_adjacent_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/declarations/not-adjacent-self--4ee16317b6475713ba6b2971.md) | 45 | `result-track:4ee16317b6475713ba6b2971c2ec1045d1c6fd6228557c6f5441798a201b8627` |
| 5 | `structure` | [TerrainSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/declarations/terrainsection--58a040b758b39fd061b3b00f.md) | 53 | `declaration-track:58a040b758b39fd061b3b00f9aef6e6b4d8d52967c52b7f34503d8667b8a9daa` |
| 6 | `structure` | [Obstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f.lean/declarations/obstruction--ef8e2a19c230f2ef18d6c69a.md) | 58 | `declaration-track:ef8e2a19c230f2ef18d6c69aed5d6d943e0a22b7b05a193cba4b59d5414ea1f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
