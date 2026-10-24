# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ed3c0339f3a5f1513d39aae0bd061442d7f7aee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ed3c0339f3a5f1513d39aae0bd061442d7f7aee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Square` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPullback.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispullback-map--8b6e8c7d1607e4dce28f1247.md) | 38 | `result-track:8b6e8c7d1607e4dce28f12474f5a74c1e295a307a73c07822122ee339c4105e9` |
| 2 | `lemma` | [IsPullback.of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispullback-of-map--5794675b781ef52db88df759.md) | 42 | `result-track:5794675b781ef52db88df759553738f5fd08d5fda785f597c92dfac2a2e789a1` |
| 3 | `lemma` | [IsPullback.map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispullback-map-iff--118e08617ef5f762c0e377c9.md) | 47 | `result-track:118e08617ef5f762c0e377c9f230a9c2ad5a03cfc859ba46f3bfda6345f4b855` |
| 4 | `lemma` | [IsPushout.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispushout-map--2e786105f75fa7513811ab2a.md) | 52 | `result-track:2e786105f75fa7513811ab2aed6d61f9fbcfde83f6b46d5517ee55982cca19d6` |
| 5 | `lemma` | [IsPushout.of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispushout-of-map--fd8e39473a8043195a18a07a.md) | 56 | `result-track:fd8e39473a8043195a18a07a26f12cdbfa45e52eeee10e098bb2a1cb6f15607c` |
| 6 | `lemma` | [IsPushout.map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispushout-map-iff--c8ca5e2004ef0d6c5e2c40b5.md) | 61 | `result-track:c8ca5e2004ef0d6c5e2c40b5a2fede4d2237e93788d6be3c88e19fa100261845` |
| 7 | `lemma` | [isPullback_iff_map_coyoneda_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispullback-iff-map-coyoneda-ispullback--0d7cc057fb67a954d038e751.md) | 68 | `result-track:0d7cc057fb67a954d038e751d178fd9cfc4f9dc801d0f6405ed5b43e30df951b` |
| 8 | `lemma` | [isPushout_iff_op_map_yoneda_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispushout-iff-op-map-yoneda-ispullback--82b3510da5f4d2b75ae91b81.md) | 73 | `result-track:82b3510da5f4d2b75ae91b8124996b2d2bfc29626dfaf061d16b5bb63f17fd8d` |
| 9 | `lemma` | [IsPullback.iff_of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispullback-iff-of-equiv--c62839e5b220d559628639ce.md) | 91 | `result-track:c62839e5b220d559628639cec650b82a0146862844a925a37dbedc3934fd5738` |
| 10 | `lemma` | [IsPullback.of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3.lean/declarations/ispullback-of-equiv--3c691c6fd68337788da9d7b3.md) | 106 | `result-track:3c691c6fd68337788da9d7b30327453f9a77137f7e05bb9bdd1569a1809610f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
