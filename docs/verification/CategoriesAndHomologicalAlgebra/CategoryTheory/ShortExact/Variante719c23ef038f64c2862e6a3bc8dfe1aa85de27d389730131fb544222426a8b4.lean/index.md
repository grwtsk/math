# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShortExact.Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8a355754ec0e662ea382a53fa7a8c9be2795c5e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8a355754ec0e662ea382a53fa7a8c9be2795c5e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ShortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact--32c56990f4f804fbebb60fb2.md) | 31 | `declaration-track:32c56990f4f804fbebb60fb2d71a5207459d2685a0bf34ad82868dea617b7dd6` |
| 2 | `lemma` | [ShortExact.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-mk--47cbccbf40edd5ddaeffd848.md) | 38 | `result-track:47cbccbf40edd5ddaeffd8482d5ad22fe41806550c90712906ba5695240c8048` |
| 3 | `lemma` | [shortExact_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-of-iso--103ce474fdd934e23a01e6a1.md) | 41 | `result-track:103ce474fdd934e23a01e6a1ed13cc44d79824a93b4baba12a5251739aeee8ed` |
| 4 | `lemma` | [shortExact_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-iff-of-iso--a373751ffe587972e7314b42.md) | 56 | `result-track:a373751ffe587972e7314b42f80926d561411532512d43edac023722710a211d` |
| 5 | `lemma` | [ShortExact.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-op--a353988d3953240c617e4afc.md) | 61 | `result-track:a353988d3953240c617e4afcd779d8490cd8f432a9d383ae6436a7ae4152e144` |
| 6 | `lemma` | [ShortExact.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-unop--9da0acd577ac5024293fdd1d.md) | 72 | `result-track:9da0acd577ac5024293fdd1d559155ea294f31f2cb8ffe7f2b6de829ea8548f3` |
| 7 | `lemma` | [shortExact_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-iff-op--a84778a88407c8753bf49e89.md) | 85 | `result-track:a84778a88407c8753bf49e89cccfa5e24da745b36823f41c73ef00cbfa0dd89b` |
| 8 | `lemma` | [shortExact_iff_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-iff-unop--ab8a2771a53142a79deb090e.md) | 88 | `result-track:ab8a2771a53142a79deb090ec76871890748689d74149010845baea6f4a3d228` |
| 9 | `lemma` | [ShortExact.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-map--bf10c9a3f6875ca5830d4e97.md) | 93 | `result-track:bf10c9a3f6875ca5830d4e979bca759b79da6d59f728b354abe3bf4c9071a687` |
| 10 | `lemma` | [ShortExact.map_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-map-of-exact--f0bb09bafc826b6b21720bc8.md) | 101 | `result-track:f0bb09bafc826b6b21720bc8800db92833ef8656a208b130a6a894857d6baa7b` |
| 11 | `lemma` | [ShortExact.isIso_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-isiso-f-iff--89099189173c1f1b397d3b82.md) | 116 | `result-track:89099189173c1f1b397d3b8228358c56e8a03a77674f6df86a98d77b971d4468` |
| 12 | `lemma` | [ShortExact.isIso_g_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-isiso-g-iff--c4ddc4a771ec6088b7439aa5.md) | 129 | `result-track:c4ddc4a771ec6088b7439aa5f0125894c9c6a20cd3b4fc9d4aea894cc1a67242` |
| 13 | `lemma` | [isIso₂_of_shortExact_of_isIso₁₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/isiso-of-shortexact-of-isiso--fe09238f081531f906baf5a4.md) | 142 | `result-track:fe09238f081531f906baf5a4bdc13ac4dc992a3daec6bcc5070683813c01cd34` |
| 14 | `lemma` | [isIso₂_of_shortExact_of_isIso₁₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/isiso-of-shortexact-of-isiso--966786b79b32030c57fce29b.md) | 152 | `result-track:966786b79b32030c57fce29bbbb435a4530f3d2195ff0d871ab6260e2a026954` |
| 15 | `def` | [ShortExact.fIsKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-fiskernel--c2214831f7b55f1dfeb920ce.md) | 158 | `declaration-track:c2214831f7b55f1dfeb920ce281df1a5ce83d94ecb171f08c6fa200799e2c621` |
| 16 | `def` | [ShortExact.gIsCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/shortexact-giscokernel--7fd3e455cc569dba307db8a4.md) | 165 | `declaration-track:7fd3e455cc569dba307db8a43fdd2379e5fc78cabde5b0ec2be895ddc8069607` |
| 17 | `lemma` | [Exact.shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/exact-shortexact--ad1c9a97c0be982c979633a9.md) | 172 | `result-track:ad1c9a97c0be982c979633a9ae40370a9aa789bdb188803ed70f1b3fff8d525e` |
| 18 | `lemma` | [Splitting.shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/splitting-shortexact--41a90da839725efcfe4ce61b.md) | 191 | `result-track:41a90da839725efcfe4ce61b2fec50f58698f744fbc9ec3e12388e4a77ba36e7` |
| 19 | `def` | [splittingOfInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/splittingofinjective--933934ecf5470b0c7fea278e.md) | 201 | `declaration-track:933934ecf5470b0c7fea278eee2c47e521f0292ecf4e22309af4d6562d970cbc` |
| 20 | `def` | [splittingOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variante719c23ef038f64c2862e6a3bc8dfe1aa85de27d389730131fb544222426a8b4.lean/declarations/splittingofprojective--bfd6f82966e6b89e1e196dc0.md) | 209 | `declaration-track:bfd6f82966e6b89e1e196dc098b73d38d2ee2cc83ab207662e10499b6791dbd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
