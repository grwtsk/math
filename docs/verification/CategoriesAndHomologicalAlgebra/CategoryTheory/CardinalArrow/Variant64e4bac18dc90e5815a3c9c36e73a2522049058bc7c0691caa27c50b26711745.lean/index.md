# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CardinalArrow.Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "415c127f4dbdd5e45e029a980f7353c0bc31b777",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `415c127f4dbdd5e45e029a980f7353c0bc31b777`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.HasCardinalLT` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Arrow.finite_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/arrow-finite-iff--50856d795f8ab3bc86cb6917.md) | 33 | `result-track:50856d795f8ab3bc86cb691732b8d9f8a3a9d9d86d1596426937523dd68d4997` |
| 2 | `instance` | [Arrow.finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/arrow-finite--2b52a538d73aef9f2af66636.md) | 50 | `declaration-track:2b52a538d73aef9f2af6663656e5aeaaf6b7bedccb3993c8f41e25abbe93de0f` |
| 3 | `def` | [Arrow.opEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/arrow-opequiv--01e96c355b0f24201c2f4483.md) | 56 | `declaration-track:01e96c355b0f24201c2f4483acd90a365b4873ef51cef29c899b9a41e7c70f86` |
| 4 | `lemma` | [hasCardinalLT_arrow_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/hascardinallt-arrow-op-iff--67544c92eb584c7d8233ad1e.md) | 63 | `result-track:67544c92eb584c7d8233ad1e3ef15ee1c93359d39fb923c16f83ae4305cca99e` |
| 5 | `lemma` | [hasCardinalLT_arrow_discrete_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/hascardinallt-arrow-discrete-iff--5ddaeb1c26cafdabc77f67b1.md) | 68 | `result-track:5ddaeb1c26cafdabc77f67b1a000677e720c46d9dac6f1428709a7dfca94e34b` |
| 6 | `lemma` | [small_of_small_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/small-of-small-arrow--cefb44923a5bfb70a86db321.md) | 72 | `result-track:cefb44923a5bfb70a86db3215428129ef65c9f3bf01d5a5a2767b63cac3cd4bf` |
| 7 | `lemma` | [locallySmall_of_small_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/locallysmall-of-small-arrow--f73af950ffb29e2d4f5c3d4c.md) | 76 | `result-track:f73af950ffb29e2d4f5c3d4ccf88c4140125474bdc393c05afcdd0832048f349` |
| 8 | `def` | [Arrow.shrinkHomsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/arrow-shrinkhomsequiv--989781111055adc57d230324.md) | 84 | `declaration-track:989781111055adc57d230324e83e063030d58a347d6b615a4fb84b8490bf1e52` |
| 9 | `def` | [Arrow.shrinkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/arrow-shrinkequiv--f76043b8f25c9f820cc797b6.md) | 92 | `declaration-track:f76043b8f25c9f820cc797b6869dcf4a5eb3af96da0189be9ff85f8b03932b91` |
| 10 | `lemma` | [hasCardinalLT_arrow_shrinkHoms_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/hascardinallt-arrow-shrinkhoms-iff--c2d197be63a9693e0f819c51.md) | 102 | `result-track:c2d197be63a9693e0f819c51a97fc4f2066ed5b688191c43ee9ff3770f4d6967` |
| 11 | `lemma` | [hasCardinalLT_arrow_shrink_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/hascardinallt-arrow-shrink-iff--fc7bec37dcef6ff20347194c.md) | 108 | `result-track:fc7bec37dcef6ff20347194ccf6b58e946d46e916448e22423db709e0c724e4b` |
| 12 | `lemma` | [hasCardinalLT_of_hasCardinalLT_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745.lean/declarations/hascardinallt-of-hascardinallt-arrow--740401811c8e1657a0933425.md) | 113 | `result-track:740401811c8e1657a09334257ef042190b005dda73ab2e37dd8f81a99f6f1ea9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
