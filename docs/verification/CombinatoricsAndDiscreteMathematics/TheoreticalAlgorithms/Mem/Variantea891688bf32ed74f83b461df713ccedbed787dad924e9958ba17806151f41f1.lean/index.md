# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mem.Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c058907ddb7d512452462889d209f05fcc86182d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c058907ddb7d512452462889d209f05fcc86182d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.BasicAux` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sizeOf_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/declarations/sizeof-lt-of-mem--476bf278ae885933effb3e7e.md) | 30 | `result-track:476bf278ae885933effb3e7ec5b41a45d41eb1e32b39ccca93cb46c2194fd263` |
| 2 | `theorem` | [sizeOf_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/declarations/sizeof-get--5c3fddd681bb40d36cbaf867.md) | 34 | `result-track:5c3fddd681bb40d36cbaf867f4d0b2668a4e66ecdb30b9583789ddb318e6e6f7` |
| 3 | `theorem` | [sizeOf_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/declarations/sizeof-getelem--f7ab190fe9b0c75f5e72d443.md) | 38 | `result-track:f7ab190fe9b0c75f5e72d443e5546b4098a145af7ea3d0fbcf3610fc9499f0a3` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/declarations/macro--3d7675e4e5dc6d9b37a4ab59.md) | 44 | `declaration-track:3d7675e4e5dc6d9b37a4ab59bc105cfc1673ff5664286b01d6a9b2d220efc4e0` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/declarations/macro-rules--984c85b3dcc0f6501bf2e1ff.md) | 53 | `declaration-track:984c85b3dcc0f6501bf2e1ff5611932d744b762a93cb96b309ba8302cd27eb6e` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/declarations/macro--b2f3342606221a257c87a0fd.md) | 59 | `declaration-track:b2f3342606221a257c87a0fd2998a02acaaa4cbca34816851f9472c8288fc8c4` |
| 7 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantea891688bf32ed74f83b461df713ccedbed787dad924e9958ba17806151f41f1.lean/declarations/macro-rules--1eab088f66a92b1a11eec825.md) | 67 | `declaration-track:1eab088f66a92b1a11eec825debcbcaef3eda510da17e0b781f6de51336d88db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
