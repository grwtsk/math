# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c09c34def31b2af59f4cc8b86c583e98bec9583b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c09c34def31b2af59f4cc8b86c583e98bec9583b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_congr_forget_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/forall-congr-forget-type--8b12e2622f2cb6d91d10f65b.md) | 45 | `result-track:8b12e2622f2cb6d91d10f65b47be85c87d9b4c5e50a1811025613dc37a3e5310` |
| 2 | `theorem` | [forget_hom_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/forget-hom-type--064a8f8e064a51c773caeade.md) | 50 | `result-track:064a8f8e064a51c773caeade4a2eccc3cb2419a07df63dfacd74099d551127b3` |
| 3 | `theorem` | [hom_elementwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/hom-elementwise--ece771ce3792b9d00153aa7e.md) | 52 | `result-track:ece771ce3792b9d00153aa7ea42a1c5446f4f38f5016a96a9b699b9c3b8d64f3` |
| 4 | `def` | [elementwiseThms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/elementwisethms--6301a956f284f2819a06fba0.md) | 58 | `declaration-track:6301a956f284f2819a06fba0f53a3b721882617d17f2b68f1c5dc921d2df7dea` |
| 5 | `def` | [elementwiseExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/elementwiseexpr--0eba912e2c7c96fd059bb009.md) | 79 | `declaration-track:0eba912e2c7c96fd059bb0099e893b81e3c2d0c3a910c6c8585a11874258176d` |
| 6 | `def` | [mkUnusedName](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/mkunusedname--171e42d6fbbc0d685d697baf.md) | 133 | `declaration-track:171e42d6fbbc0d685d697baf9564c8128c0d75b676cd283e7867f118a7740c2b` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/syntax--71b57953810841459503611c.md) | 182 | `declaration-track:71b57953810841459503611c166e3153df6c44cf2ca65914d79b0f124dc5e2ff` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/initialize--14d2b1a827934e48b27f308f.md) | 185 | `declaration-track:14d2b1a827934e48b27f308fd37241ebbbbeb9a18cf011811de1492058c4e52d` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/elab--5a67a654ade0953f507d329c.md) | 227 | `declaration-track:5a67a654ade0953f507d329ca8c857845be9558f96d7b53960233e61691a22c9` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/syntax--1914795d8088c159bf3bc21a.md) | 233 | `declaration-track:1914795d8088c159bf3bc21a726e1daad11354ff3ba05313dfeff6f77988f056` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/declarations/syntax--e7deed62a9ac0f9dabb533cd.md) | 234 | `declaration-track:e7deed62a9ac0f9dabb533cdc3da3720baa632934b8db21feef9ccb281311a37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
