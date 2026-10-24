# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8db14f9f62b3e2dc4324a828f3dd18755bc00eed",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8db14f9f62b3e2dc4324a828f3dd18755bc00eed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/declarations/surjective--ec5a15e88829b2b02f80cedc.md) | 57 | `result-track:ec5a15e88829b2b02f80cedcb6f9b5007f3cacfc88a94f505cc03c31a49b8072` |
| 2 | `lemma` | [injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/declarations/injective--b0a875de2eb0bdd436a16eed.md) | 110 | `result-track:b0a875de2eb0bdd436a16eed68cce3236bb37d72bcea646dff4bf2639ba6f628` |
| 3 | `def` | [isColimitMapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/declarations/iscolimitmapcocone--f7eb02f8ea32ae09e0775010.md) | 146 | `declaration-track:f7eb02f8ea32ae09e077501069689ef54651b25a90c40607b54ee94d9d24e978` |
| 4 | `lemma` | [isCardinalAccessible_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/declarations/iscardinalaccessible-of-islimit--4e36113f5fe63e8af7be2447.md) | 158 | `result-track:4e36113f5fe63e8af7be2447525f2be6265fc90506268f4479504691482743c7` |
| 5 | `lemma` | [isCardinalPresentable_of_isColimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/declarations/iscardinalpresentable-of-iscolimit--8ae5ef2b339901c6a4e37d63.md) | 172 | `result-track:8ae5ef2b339901c6a4e37d63ed82940f02d82643b4fd8615830addb5ab740e39` |
| 6 | `lemma` | [isCardinalPresentable_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2009399c64f4decddefadd0a87f6bbd4fada0b0df3e4e3fa0c5130b516402baf.lean/declarations/iscardinalpresentable-of-iscolimit--1922edafd6cb2400b94d63fc.md) | 183 | `result-track:1922edafd6cb2400b94d63fc39cdb63a0a7d28c4f0778b541ccc0d23d404c4bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
