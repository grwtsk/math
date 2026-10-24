# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Applicative.Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10e90117b919491c35b4adcc0c77fc209e07b378",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10e90117b919491c35b4adcc0c77fc209e07b378`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Applicative.map_seq_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/applicative-map-seq-map--137a7f7f15a574e85e641811.md) | 41 | `result-track:137a7f7f15a574e85e641811d0971fd77281afd61546a9d97a2cd54a6097410b` |
| 2 | `theorem` | [Applicative.pure_seq_eq_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/applicative-pure-seq-eq-map--36873f8198b3a6f02eafd6f7.md) | 45 | `result-track:36873f8198b3a6f02eafd6f7140edee62f5012227b3be8dab0e4835c60a5a512` |
| 3 | `theorem` | [Applicative.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/applicative-ext--19bdd2af85a09d6b3cdbf2b4.md) | 49 | `result-track:19bdd2af85a09d6b3cdbf2b4dbec1d6f9ccba2b4bd6522d9b1f642fbc470a2a1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/instance--aa266521d9fbb9774097bf94.md) | 83 | `declaration-track:aa266521d9fbb9774097bf9490b160d8de791625d00483ec6393d84ecf53f5a7` |
| 5 | `theorem` | [map_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/map-pure--a87eb4c32f8eb5d19e1f4076.md) | 101 | `result-track:a87eb4c32f8eb5d19e1f4076138a01a4e441198c145cf1a2e4818f7323a39145` |
| 6 | `theorem` | [seq_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/seq-pure--d0ebd58845fe3dfe31df23ea.md) | 105 | `result-track:d0ebd58845fe3dfe31df23ea288dc45c2d1727b63a8ad9c26ae601253418f492` |
| 7 | `theorem` | [seq_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/seq-assoc--c33320051024e66724c54fde.md) | 109 | `result-track:c33320051024e66724c54fdea00bbaaf359d184ad1dd446f023815ee26ce5fe5` |
| 8 | `theorem` | [pure_seq_eq_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/pure-seq-eq-map--9360b216a9904770290110b0.md) | 114 | `result-track:9360b216a9904770290110b0ef6e57efa1c058edb828730dd90f1b1bcb70e0cc` |
| 9 | `instance` | [instLawfulApplicativeComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/instlawfulapplicativecomp--fed9f3bc81ba335a0cc81938.md) | 119 | `declaration-track:fed9f3bc81ba335a0cc81938eb6e6ce696ef8feaf137265fc1bc0e1bb03b91af` |
| 10 | `theorem` | [applicative_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/applicative-id-comp--0a0f0de2d569dbdf2d49129f.md) | 129 | `result-track:0a0f0de2d569dbdf2d49129f70298c555cb5e6082c447a3e4d0a0043c4561e9e` |
| 11 | `theorem` | [applicative_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/applicative-comp-id--a7f9c5e2b2c1d2d4df407b2e.md) | 135 | `result-track:a7f9c5e2b2c1d2d4df407b2e817df818061b58f5d39b6b203a81c68499b72456` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/instance--c13e84644312fcd601d18f08.md) | 143 | `declaration-track:c13e84644312fcd601d18f084ed58961f44a253bb025b55a98fcedcff3827387` |
| 13 | `theorem` | [Comp.seq_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/comp-seq-mk--284ebadbc243b7f619442db0.md) | 162 | `result-track:284ebadbc243b7f619442db0d478e0d8623e08536c85f9471f94963e60044543` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/instance--41a083efc9adf1e59804980b.md) | 170 | `declaration-track:41a083efc9adf1e59804980b69b9a176fc0f7e8066b9dfad394be04c04f95608` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/instance--425324b1d31bce9ba0cd2f6a.md) | 177 | `declaration-track:425324b1d31bce9ba0cd2f6a0c4e2dd1f6de073d19099abfb1b9f9ab1f750883` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/instance--ee548d7fe3a96b32d2d888a6.md) | 180 | `declaration-track:ee548d7fe3a96b32d2d888a6f4ec3e6dba4872d679f885c21023270aa3c4f9c3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant37d4c7927acf67ec58a3862c42ac077d688a1a187f81c4ad4d1fb6629dc38abf.lean/declarations/instance--758dcb3048d4ad07e0c1681a.md) | 184 | `declaration-track:758dcb3048d4ad07e0c1681a1e162c5e17890c08cbcfd834608a9d0c6e7038ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
