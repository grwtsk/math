# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ClosedUnderIsomorphisms.Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e85cd732ddc6a7f4d5d9f518ae310fd33cfe29",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e85cd732ddc6a7f4d5d9f518ae310fd33cfe29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedUnderIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/isclosedunderisomorphisms--a768702153f688d9baec8c5a.md) | 36 | `declaration-track:a768702153f688d9baec8c5af10e8049cf363c462c5c9a41d7b0a84c1b4b11d1` |
| 2 | `lemma` | [prop_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/prop-of-iso--87d114339975cb81f8796649.md) | 41 | `result-track:87d114339975cb81f87966498602a9c1aa8ba7bdcd5a5d24df65da663fcac4c4` |
| 3 | `lemma` | [prop_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/prop-iff-of-iso--81e68470b00f7ab8a97b0639.md) | 44 | `result-track:81e68470b00f7ab8a97b06397bd29b79a6a4adc689e473a201b1a1061d1d29df` |
| 4 | `lemma` | [prop_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/prop-of-isiso--fe326bb4969c3ca9a6634cf6.md) | 47 | `result-track:fe326bb4969c3ca9a6634cf62448031d38b15efaee4cc95e124fd3c452bf9969` |
| 5 | `lemma` | [prop_iff_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/prop-iff-of-isiso--c89b72d23b84d1b8b80d96a8.md) | 51 | `result-track:c89b72d23b84d1b8b80d96a87024a4bca1322129c320f14a08a02f78e3cc9b6a` |
| 6 | `def` | [isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/isoclosure--555d5be17b0aa5a7c90f041e.md) | 55 | `declaration-track:555d5be17b0aa5a7c90f041e5086eee425e7bfcb81ae8ba1c179b34fae115169` |
| 7 | `lemma` | [prop_isoClosure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/prop-isoclosure-iff--26c887f16d0db8a273bf9d2c.md) | 57 | `result-track:26c887f16d0db8a273bf9d2c78472b3245196d1edda0a348b4e4313a8761d21a` |
| 8 | `lemma` | [prop_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/prop-isoclosure--93922369abb5d2123701a5b8.md) | 61 | `result-track:93922369abb5d2123701a5b8cc60ee80538e14f2854ce46747080f4424050621` |
| 9 | `lemma` | [le_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/le-isoclosure--57aaea50f14079e8c669733e.md) | 64 | `result-track:57aaea50f14079e8c669733eb2b1e21a4f7fec424ee19826c43062e90e42e5de` |
| 10 | `lemma` | [monotone_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/monotone-isoclosure--783f99aea349632bff3cf650.md) | 68 | `result-track:783f99aea349632bff3cf65024e46b1b28358ea1f9904a035529330775766427` |
| 11 | `lemma` | [isoClosure_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/isoclosure-eq-self--4da7b6665dc9917ad46535c6.md) | 72 | `result-track:4da7b6665dc9917ad46535c6a005dd68157ef69d20b563d61b800585bc64bc63` |
| 12 | `lemma` | [isoClosure_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/isoclosure-le-iff--f512ff3f93a0c8681b605080.md) | 78 | `result-track:f512ff3f93a0c8681b60508098e2501f4570a793ed7e4157d780edde61439066` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/instance--eda68e1fd7ac0624ec1a8523.md) | 82 | `declaration-track:eda68e1fd7ac0624ec1a85239a15f402f6a190f78137f85ed2a59be9700baffc` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/instance--009b7e2cde407003a1218369.md) | 87 | `declaration-track:009b7e2cde407003a12183693d01abfbb957e2f7b127860d74a4c0edda367975` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f.lean/declarations/instance--78e7bf91a07a1659106efe47.md) | 92 | `declaration-track:78e7bf91a07a1659106efe4732b19dbfe0d1cba39eafa0d45fa09df9d7aa3f9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
