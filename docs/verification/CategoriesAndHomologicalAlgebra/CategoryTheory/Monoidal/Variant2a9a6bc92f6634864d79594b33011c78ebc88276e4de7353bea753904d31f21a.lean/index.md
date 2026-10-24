# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23be5027ee239188cd031fbe53396b1def12516e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23be5027ee239188cd031fbe53396b1def12516e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.FunctorCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Monoidal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Localization` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.SheafHom` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorEnrichedHomCoyonedaObjEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/functorenrichedhomcoyonedaobjequiv--5ee6f33253615dd5909eb768.md) | 46 | `declaration-track:5ee6f33253615dd5909eb768acc32daf1612feb255998efc40d5340c6e9cda30` |
| 2 | `lemma` | [functorEnrichedHomCoyonedaObjEquiv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/functorenrichedhomcoyonedaobjequiv-naturality--7d4cde4fd8de9bc146cdeb49.md) | 84 | `result-track:7d4cde4fd8de9bc146cdeb493b0e24a2d3ba0fa10299b4869caa2bacfe85162d` |
| 3 | `lemma` | [isSheaf_functorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/issheaf-functorenrichedhom--887e9cd4f1a71d779e2d3d0b.md) | 97 | `result-track:887e9cd4f1a71d779e2d3d0baf6383b4085ce38f7f634dcee60f4f068e07181a` |
| 4 | `lemma` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/whiskerleft--f0ae3abc76de6d128028ec99.md) | 118 | `result-track:f0ae3abc76de6d128028ec997fca36637a346620e081307068fd803af9ea795d` |
| 5 | `lemma` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/whiskerright--e7d12ecf29038f715804e1ce.md) | 130 | `result-track:e7d12ecf29038f715804e1ce497f143f9b7cde3a44bd837edf232ad8d3925ede` |
| 6 | `instance` | [monoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/monoidal--9667990e5b2ce3d851371c89.md) | 135 | `declaration-track:9667990e5b2ce3d851371c892e40b222807ad422fd8738234f3badf36b1c18e6` |
| 7 | `def` | [monoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/monoidalcategory--d072cb05dc7aeeef3e3697c8.md) | 150 | `declaration-track:d072cb05dc7aeeef3e3697c80e5d1a107d75bf32f9d06331c630192bb574436e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/instance--87005a46ea15fa6aa36cbe0d.md) | 155 | `declaration-track:87005a46ea15fa6aa36cbe0dd032cf5f8fe2c047fffc059513d1f191ca3e8db8` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2a9a6bc92f6634864d79594b33011c78ebc88276e4de7353bea753904d31f21a.lean/declarations/example--817315c252d13951bbeb38fb.md) | 161 | `declaration-track:817315c252d13951bbeb38fb4691501b817bf70304b73f9c872c1e5dbc28a5d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
