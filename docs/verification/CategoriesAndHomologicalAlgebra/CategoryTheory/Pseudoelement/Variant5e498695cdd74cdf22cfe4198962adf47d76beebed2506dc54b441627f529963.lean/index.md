# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudoelement.Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b53f07373e85dac706ceb6a142dc3d5fc6987e1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b53f07373e85dac706ceb6a142dc3d5fc6987e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Pseudoelements` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/x--b5dba325322baddc00fef65e.md) | 56 | `declaration-track:b5dba325322baddc00fef65e919dee4eae52a0520650b2ad2f389645f62af113` |
| 2 | `def` | [y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/y--8910e6fad2d2e0cff0b48f48.md) | 61 | `declaration-track:8910e6fad2d2e0cff0b48f48b865dde5fe98a1b4dd523d168b26635e9bc94f1b` |
| 3 | `theorem` | [fst_x_pseudo_eq_fst_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/fst-x-pseudo-eq-fst-y--2d53fc453fa53b526628884d.md) | 66 | `result-track:2d53fc453fa53b526628884da0c3e1eaa70676cc81f6f956927abdb4561b6223` |
| 4 | `theorem` | [snd_x_pseudo_eq_snd_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/snd-x-pseudo-eq-snd-y--dcf3061607010a07fbac9764.md) | 74 | `result-track:dcf3061607010a07fbac97643639b9492e21e529a946923f6cfb8ceb12d5d70c` |
| 5 | `theorem` | [x_not_pseudo_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/x-not-pseudo-eq--554bd30e6cf10d00da66f84f.md) | 86 | `result-track:554bd30e6cf10d00da66f84ff58d91165b08f01c46aa91570c0be0cacd93551c` |
| 6 | `theorem` | [fst_mk'_x_eq_fst_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/fst-mk-x-eq-fst-mk-y--e7b6b2570fd19290dd064e6f.md) | 119 | `result-track:e7b6b2570fd19290dd064e6f82b7a47003f85438daf114f25ad83dca1f52a090` |
| 7 | `theorem` | [snd_mk'_x_eq_snd_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/snd-mk-x-eq-snd-mk-y--64bfba6dd72b6949fad0c796.md) | 125 | `result-track:64bfba6dd72b6949fad0c79692c5595ca4928c5b4fe57e30a2eba24449f5197a` |
| 8 | `theorem` | [mk'_x_ne_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/mk-x-ne-mk-y--ec1d4455a2d7dc010e1c0bc7.md) | 134 | `result-track:ec1d4455a2d7dc010e1c0bc73d6493df94a42ed608f94e044d3bf1d9eebc2be3` |
| 9 | `theorem` | [exist_ne_and_fst_eq_fst_and_snd_eq_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant5e498695cdd74cdf22cfe4198962adf47d76beebed2506dc54b441627f529963.lean/declarations/exist-ne-and-fst-eq-fst-and-snd-eq-snd--71368f359e1d1662a1833202.md) | 140 | `result-track:71368f359e1d1662a1833202326d58b7391eb2ba56acaa9075de2dbb2c91dd2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
