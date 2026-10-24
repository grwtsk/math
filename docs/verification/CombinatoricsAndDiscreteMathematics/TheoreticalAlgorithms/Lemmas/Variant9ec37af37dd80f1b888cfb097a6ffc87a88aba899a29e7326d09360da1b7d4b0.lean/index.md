# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "019595f8bef98aa379bf0d973cff904281d45d88",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `019595f8bef98aa379bf0d973cff904281d45d88`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_cons_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/declarations/mem-cons-eq--238a3d5eec549eef13c50cc8.md) | 69 | `result-track:238a3d5eec549eef13c50cc8db5d3274fd674bc83f1a0f487a2591a801851764` |
| 2 | `theorem` | [not_bex_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/declarations/not-bex-nil--4e0575007d440e713e52215a.md) | 83 | `result-track:4e0575007d440e713e52215ad15111bb338b35600d68e1b8816323cdc76d471a` |
| 3 | `theorem` | [bex_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/declarations/bex-cons--be66d28e4a1aac5978e386ac.md) | 88 | `result-track:be66d28e4a1aac5978e386ac5ed2237daa62b8227e9f464b9310a16d937b3070` |
| 4 | `def` | [mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/declarations/mapaccumr--5aefc5d81eb9996fc7887426.md) | 146 | `declaration-track:5aefc5d81eb9996fc788742634be1865828fb211f62b0544228224d7b9f546d2` |
| 5 | `theorem` | [length_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/declarations/length-mapaccumr--6083f802bd4b70fd9769e431.md) | 156 | `result-track:6083f802bd4b70fd9769e4312eefe0e08da650f26bd40036e1471791fd33bb12` |
| 6 | `def` | [mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/declarations/mapaccumr--e5519569317bc2715c3ac187.md) | 169 | `declaration-track:e5519569317bc2715c3ac187715f6d609efb9dac806d0b6422728d3b11881e2e` |
| 7 | `theorem` | [length_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant9ec37af37dd80f1b888cfb097a6ffc87a88aba899a29e7326d09360da1b7d4b0.lean/declarations/length-mapaccumr--eba27a8bb95e38b1ccfeac22.md) | 180 | `result-track:eba27a8bb95e38b1ccfeac22776024a167d6bf4753ad5c3676438ead8c191c28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
