# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverPreserving.Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f79e747351cc3d1015d1576f131b3fb95449dc5f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f79e747351cc3d1015d1576f131b3fb95449dc5f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Flat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Continuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/coverpreserving--b1c8fd8719b43e2ac620190d.md) | 54 | `declaration-track:b1c8fd8719b43e2ac620190defb4ddbc68b5e813df49fc7d48d6364804810fb9` |
| 2 | `theorem` | [idCoverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/idcoverpreserving--9f0bf9e1316f8b5f5465879e.md) | 58 | `result-track:9f0bf9e1316f8b5f5465879e9d6351ff987575944263a82cee3b64403a483e9d` |
| 3 | `theorem` | [CoverPreserving.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/coverpreserving-comp--bb3be5cf336235dcb747fa67.md) | 62 | `result-track:bb3be5cf336235dcb747fa67da53aeb01d1bd55ad44913e80495233e03434f36` |
| 4 | `structure` | [CompatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/compatiblepreserving--ff5bc84dd685f6b78ea9e254.md) | 74 | `declaration-track:ff5bc84dd685f6b78ea9e254faa27d3cf27c19ae1594ff04725960f2193ebc93` |
| 5 | `theorem` | [Presieve.FamilyOfElements.Compatible.functorPushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/presieve-familyofelements-compatible-functorpushforward--e40bf8b77ae92e07e7cfa4c3.md) | 87 | `result-track:e40bf8b77ae92e07e7cfa4c3bcdd5901d06226ad8274206e8b768b739393dfdb` |
| 6 | `theorem` | [CompatiblePreserving.apply_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/compatiblepreserving-apply-map--e88b1f70746c9b3ac474d5f6.md) | 99 | `result-track:e88b1f70746c9b3ac474d5f6320f378ff70e012815c095eca717b3e844b38995` |
| 7 | `theorem` | [compatiblePreservingOfFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/compatiblepreservingofflat--177cb7b72a7d931ac4466259.md) | 110 | `result-track:177cb7b72a7d931ac4466259165024860bdc3a7d91eb7c2a44d047f705e1a975` |
| 8 | `theorem` | [compatiblePreservingOfDownwardsClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/compatiblepreservingofdownwardsclosed--748295100b1d1f4ab5c38a13.md) | 144 | `result-track:748295100b1d1f4ab5c38a13a66e8d7303e5c77b08a012444592914747f13a6c` |
| 9 | `lemma` | [Functor.isContinuous_of_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/declarations/functor-iscontinuous-of-coverpreserving--6d7af58d251e39b1d0d451fc.md) | 159 | `result-track:6d7af58d251e39b1d0d451fccc3ff8190bb5bd5d71727a09173afc02856312a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
