# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyDiscrete.Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "147bae96ecc21a6734cd3fabe1e18a07e5d344b8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `147bae96ecc21a6734cd3fabe1e18a07e5d344b8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.LocallyDiscrete` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pseudofunctorOfIsLocallyDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/declarations/pseudofunctorofislocallydiscrete--41e9c024c1ea04af52239bb3.md) | 44 | `declaration-track:41e9c024c1ea04af52239bb33605c1ef1c3652c5df55104db3e3d29f6bc78cd8` |
| 2 | `def` | [oplaxFunctorOfIsLocallyDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/declarations/oplaxfunctorofislocallydiscrete--e95223b8e6767a24145c7d07.md) | 78 | `declaration-track:e95223b8e6767a24145c7d07ba9bcdafff02678787c4612b61d3e4cf5bb72848` |
| 3 | `def` | [Functor.toPseudoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/declarations/functor-topseudofunctor--92d90017dddab6f178c4d15d.md) | 121 | `declaration-track:92d90017dddab6f178c4d15db86cf568972bdf56d58c5e8733abccc2e32e70b0` |
| 4 | `def` | [Functor.toOplaxFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/declarations/functor-tooplaxfunctor--7d76672d01d6b13a6762cc82.md) | 131 | `declaration-track:7d76672d01d6b13a6762cc82c4a386b3bea77d1d5a409939378629eef0defdae` |
| 5 | `def` | [mkPseudofunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/declarations/mkpseudofunctor--d149b9622cc1439943c68d28.md) | 143 | `declaration-track:d149b9622cc1439943c68d28b83d67f3561841ecf86658948172b7194ad8b921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
