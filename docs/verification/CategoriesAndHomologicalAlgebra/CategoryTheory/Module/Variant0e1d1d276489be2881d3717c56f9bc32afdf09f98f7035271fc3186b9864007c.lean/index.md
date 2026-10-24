# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "926e7a41aef7b4a5fccc81ff63d61d4496d1f1b9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `926e7a41aef7b4a5fccc81ff63d61d4496d1f1b9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.FilteredColimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Adjunction` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CondensedMod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensedmod--5a607c09f48abfe9d2cfc373.md) | 46 | `declaration-track:5a607c09f48abfe9d2cfc373d0af08f322cb439e1bcea9badd86178326dba19e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/instance--5a70418d5854c904ac339505.md) | 48 | `declaration-track:5a70418d5854c904ac339505deed55c318eeb80d784c1bd02c50e05828c8744c` |
| 3 | `def` | [Condensed.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensed-forget--79fe9033068fa1ae27e22b2c.md) | 51 | `declaration-track:79fe9033068fa1ae27e22b2c14876feaea2721d81db71aa5845db335b7e4344c` |
| 4 | `def` | [Condensed.free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensed-free--2a955c322853544fcf0484cc.md) | 57 | `declaration-track:2a955c322853544fcf0484cceb88bd1de17e0ec14abbfe0d585811affbe4a527` |
| 5 | `def` | [Condensed.freeForgetAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensed-freeforgetadjunction--6bc520d67876e0bcb489828f.md) | 62 | `declaration-track:6bc520d67876e0bcb489828fa037a4a94e8e18924441bc66d6c2124ed111b1d8` |
| 6 | `abbrev` | [CondensedAb](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensedab--f878d19cacd8dbf19549b001.md) | 67 | `declaration-track:f878d19cacd8dbf19549b001855a1b38ecb1e726438797bf7215e9bf721ad8ba` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/example--99723e3bc9b3bcbdf679d25a.md) | 69 | `declaration-track:99723e3bc9b3bcbdf679d25a5f7232c29a5541a5407e0da9ecf6d8f6a62010ed` |
| 8 | `abbrev` | [Condensed.abForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensed-abforget--8b5ffeac86f5b07de35b4c17.md) | 72 | `declaration-track:8b5ffeac86f5b07de35b4c171d31461c78fd6b6de99ab4a4a539960e84cf5eed` |
| 9 | `abbrev` | [Condensed.freeAb](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensed-freeab--7f13c683b3945dd7eff9f17a.md) | 75 | `declaration-track:7f13c683b3945dd7eff9f17a0daa8fc11ef332dfc6ff9c6a175c1833b66f824f` |
| 10 | `abbrev` | [Condensed.setAbAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/condensed-setabadjunction--a6c81175f2fc2f50a31254bc.md) | 78 | `declaration-track:a6c81175f2fc2f50a31254bcbd2cd42440fde72a1cb58e17517384cd32070ba9` |
| 11 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant0e1d1d276489be2881d3717c56f9bc32afdf09f98f7035271fc3186b9864007c.lean/declarations/hom-naturality-apply--62d442e379bb49edddfac0c2.md) | 82 | `result-track:62d442e379bb49edddfac0c2ce9566f7e7e507030727b4fd2a20f556fc494217` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
