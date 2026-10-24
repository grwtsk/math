# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Core.Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3699407de5039b0be2af525c55006dae47af18a4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3699407de5039b0be2af525c55006dae47af18a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Whiskering` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/core--458966b0bb2dfa5ed291649e.md) | 39 | `declaration-track:458966b0bb2dfa5ed291649e6a55c1b699f48f00cbb0c44086d91beaa084587c` |
| 2 | `structure` | [CoreHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corehom--9584ee106244f55fa266f785.md) | 48 | `declaration-track:9584ee106244f55fa266f7855a3acf61ff90b9a6b1204cfd628cd526a548bfba` |
| 3 | `instance` | [coreCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corecategory--a97a3130a3c53a886f10fecc.md) | 53 | `declaration-track:a97a3130a3c53a886f10fecc8025e0229ed355322c0bfaaa49823e0db4b0bc38` |
| 4 | `lemma` | [coreCategory_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corecategory-comp-iso--9de150c0184d591129403714.md) | 60 | `result-track:9de150c0184d59112940371481375417e4beeb3008fbde58b9275311b04f41fb` |
| 5 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/inclusion--55af9d8290758cb16de6543a.md) | 68 | `declaration-track:55af9d8290758cb16de6543a844d5250e2d98929c676a98f20c395f66f434f36` |
| 6 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/hom-ext--a8b6f5ff15925cc22614ffd5.md) | 73 | `result-track:a8b6f5ff15925cc22614ffd57510ae09b71f149c200cddd3d549910ca86545b6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/instance--a67f14f3a22d8bd3b416eabc.md) | 80 | `declaration-track:a67f14f3a22d8bd3b416eabc76a41aacfb29f004d96a03917a26e0e5c6a1fcaf` |
| 8 | `def` | [functorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/functortocore--09b2043af735275d6782a10c.md) | 88 | `declaration-track:09b2043af735275d6782a10cb92301233b090f7e60c5fd715cbf7a03320ea293` |
| 9 | `def` | [forgetFunctorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/forgetfunctortocore--fa1abf6f061e8b0f82088138.md) | 96 | `declaration-track:fa1abf6f061e8b0f82088138130afe0dc2873388da3084c9d5640df24b135eb8` |
| 10 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/core--4769d7a2ef14a6a512ceeae7.md) | 109 | `declaration-track:4769d7a2ef14a6a512ceeae75a2da0677085963d5635da3adab53ba112cd57f2` |
| 11 | `def` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/coreid--a1e8f548d7e648a5c4e43e75.md) | 114 | `declaration-track:a1e8f548d7e648a5c4e43e757c25ae1dd8c700b839bb7842c9d101b96b69259c` |
| 12 | `def` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corecomp--31cca21492deb4f315c34982.md) | 118 | `declaration-track:31cca21492deb4f315c349827e3cc42158102fe80ff1816e704aee3682882e7f` |
| 13 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/core--bcfcc92499c87547f5874665.md) | 129 | `declaration-track:bcfcc92499c87547f5874665b4ebc445b1e03822c3807821a82be6c58c191eed` |
| 14 | `lemma` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corecomp--f902726dc7029dc2ed783705.md) | 134 | `result-track:f902726dc7029dc2ed783705581d84aa185b60b36ecc5e018841e36df4f2bc0d` |
| 15 | `lemma` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/coreid--2653562460fa63e38489857c.md) | 137 | `result-track:2653562460fa63e38489857cefbec45b53fbd766288f7a3a68f5a144c9635930` |
| 16 | `lemma` | [coreWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corewhiskerleft--83a0d0c0d01183c63365f02d.md) | 139 | `result-track:83a0d0c0d01183c63365f02d928604e3df57a54934c454f43e0a287a540d74f4` |
| 17 | `lemma` | [coreWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corewhiskerright--56b46ba5ffd29479916dec41.md) | 144 | `result-track:56b46ba5ffd29479916dec41c8f521a4f2e54c3db8eb706fa5d85f49747851cb` |
| 18 | `lemma` | [coreLeftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/coreleftunitor--f64c7c5ff65294846b896bdb.md) | 149 | `result-track:f64c7c5ff65294846b896bdbf026cfb3a5f729602ee3ba5b4bfb4b726308f9e0` |
| 19 | `lemma` | [coreRightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corerightunitor--f5a4c64e8a58ee0e792ecea6.md) | 154 | `result-track:f5a4c64e8a58ee0e792ecea616fe731b91bcacc3f947dd57ebcbf64223cce80e` |
| 20 | `lemma` | [coreAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/coreassociator--3377dc8fcbfea523c105c993.md) | 159 | `result-track:3377dc8fcbfea523c105c9936c8dcae68a7190c2cb734fa7ac3a99201a9204b4` |
| 21 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/core--e34214ef20f25726de57ead7.md) | 176 | `declaration-track:e34214ef20f25726de57ead76fb9ea1d029978e72a583f1ec6952e190d3c2e48` |
| 22 | `def` | [coreFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/corefunctor--0160efe9eb3da6b3cae9fecb.md) | 188 | `declaration-track:0160efe9eb3da6b3cae9fecbb2bb08d06bc069dee14b39fe7427aadad5fc92f1` |
| 23 | `def` | [ofEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/declarations/ofequivfunctor--dfaa0d574f8dd0985529e4dc.md) | 197 | `declaration-track:dfaa0d574f8dd0985529e4dcff898f9d9e6f507c8aaaa7cf3a3c8b9595d14692` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
