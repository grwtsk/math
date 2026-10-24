# Verification target: GRWTSK.Algebra.LinearAlgebra.ModuleCat.Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c79340f55c336fc38919aaa378f7869fa6cbdaa0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c79340f55c336fc38919aaa378f7869fa6cbdaa0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Subobject` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [homology_ext](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/declarations/homology-ext--b4ef32b035864ddbcfebcfac.md) | 46 | `result-track:b4ef32b035864ddbcfebcfacfaddc06c82c29073b957279e631e1c6bba9069f1` |
| 2 | `abbrev` | [toCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/declarations/tocycles--ff32c9dc7b4ddea4197a2a5c.md) | 63 | `declaration-track:ff32c9dc7b4ddea4197a2a5c17d4736d055c91921e405fcb401d40214231b58c` |
| 3 | `theorem` | [cycles_ext](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/declarations/cycles-ext--1ed9ed934e97cd19f82cba28.md) | 70 | `result-track:1ed9ed934e97cd19f82cba28c5dfdac3d2a51e96c45d72eab8bcf7a59e9bdef7` |
| 4 | `theorem` | [cyclesMap_toCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/declarations/cyclesmap-tocycles--d889ba476d27df4839797b4e.md) | 81 | `result-track:d889ba476d27df4839797b4e193f1dc80b15f920f0afc7bd1ecc5cab721ee756` |
| 5 | `abbrev` | [toHomology](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/declarations/tohomology--bc20b328942b5d1f94680938.md) | 90 | `declaration-track:bc20b328942b5d1f94680938a4433e1557c21cad2750777370fbe905970a05ad` |
| 6 | `theorem` | [homology_ext'](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/declarations/homology-ext--f2ed0278a6389312e0bca79a.md) | 97 | `result-track:f2ed0278a6389312e0bca79a438bf91df493fb5a68edef040af9dc7ba971c3b6` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/declarations/example--1a08524b36eddebd00bab953.md) | 109 | `declaration-track:1a08524b36eddebd00bab953d53146dc781adccc6e9192340f8f684e5061ce99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
