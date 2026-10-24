# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5954c52cc8f012226c56a9cc4eb17deb40d79894",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5954c52cc8f012226c56a9cc4eb17deb40d79894`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/bifunctor--5d487f332ef69245bdabe8c5.md) | 39 | `declaration-track:5d487f332ef69245bdabe8c534abfd8c318cbad78bd171a8b1eb55e36f3fb7b9` |
| 2 | `class` | [LawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/lawfulbifunctor--ef05063ef7018ce10d50d6fe.md) | 45 | `declaration-track:ef05063ef7018ce10d50d6fe9dd778762d4fac3c75d37ce29599e352b209e02c` |
| 3 | `abbrev` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/fst--3dc0046f7fdb6984727d87b2.md) | 64 | `declaration-track:3dc0046f7fdb6984727d87b2a0ed9b159c784d2e9df50d8da4fd3e4dd8cb644c` |
| 4 | `abbrev` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/snd--0654a7161428d86f704c1363.md) | 68 | `declaration-track:0654a7161428d86f704c1363092b194bd9caf0c397d658acf61fe596c0c27bfa` |
| 5 | `theorem` | [id_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/id-fst--73d9a03e63437ed4554261e0.md) | 74 | `result-track:73d9a03e63437ed4554261e0ffa82faba43faea80ac028c39509fe198b1509c3` |
| 6 | `theorem` | [id_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/id-snd--0ac71b60046a8fb24ad3fbe2.md) | 78 | `result-track:0ac71b60046a8fb24ad3fbe274ca15fbeaf16486bfa555bd995ad4c4d5e3b29f` |
| 7 | `theorem` | [comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/comp-fst--3d86a19288defef3edc903c6.md) | 82 | `result-track:3d86a19288defef3edc903c67317e8dedbf66f13791c4c68ce640ce0c336bb61` |
| 8 | `theorem` | [fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/fst-snd--7bf5b48e0df174deaa1d98ae.md) | 86 | `result-track:7bf5b48e0df174deaa1d98aebfafd60407021cdb147bdac242de87fb6d8b6679` |
| 9 | `theorem` | [snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/snd-fst--2c229c794f4304beecf376d1.md) | 90 | `result-track:2c229c794f4304beecf376d10504777f83f0781df61e8159380d927cec0b742a` |
| 10 | `theorem` | [comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/comp-snd--ffbc78e9de66e276966d3b17.md) | 94 | `result-track:ffbc78e9de66e276966d3b1739d86784e453c1a25eb8364c6c4864dddb401a84` |
| 11 | `instance` | [Prod.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/prod-bifunctor--40c5672de789ff520d626b20.md) | 105 | `declaration-track:40c5672de789ff520d626b20f24863bf14af3e496c9f98cb7a6d69996935ea75` |
| 12 | `instance` | [Prod.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/prod-lawfulbifunctor--8d3f6353ae668da3ac3669c3.md) | 107 | `declaration-track:8d3f6353ae668da3ac3669c344f7a4bc126b8b59c8dd9566ddd62f7045eba5b3` |
| 13 | `instance` | [Bifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/bifunctor-const--c4a1928673d3a68bfd027c13.md) | 111 | `declaration-track:c4a1928673d3a68bfd027c1370d61079d00d851b779f875860418e61a1943ef1` |
| 14 | `instance` | [LawfulBifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/lawfulbifunctor-const--09b293439a1f248939a81bf5.md) | 113 | `declaration-track:09b293439a1f248939a81bf5eb619fd7d78cbfc216df442fa183d7b5983b4a50` |
| 15 | `instance` | [Bifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/bifunctor-flip--f51deb9840df589b0a544db2.md) | 117 | `declaration-track:f51deb9840df589b0a544db2933f6385e8f222ed4036ef08cd95f00466c5abf3` |
| 16 | `instance` | [LawfulBifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/lawfulbifunctor-flip--78ec413f7853edd23815ca48.md) | 120 | `declaration-track:78ec413f7853edd23815ca48dbee38b1ec412d83e49232a79c1af80ee132a81d` |
| 17 | `instance` | [Sum.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/sum-bifunctor--850a4b76375c5ebcbdcdaea4.md) | 124 | `declaration-track:850a4b76375c5ebcbdcdaea495dddd4e2220184456ca927a6cda58aed12af357` |
| 18 | `instance` | [Sum.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/sum-lawfulbifunctor--2d9929bf699496db741ab275.md) | 126 | `declaration-track:2d9929bf699496db741ab27559c6cbb5fd1309c15af814774e5e12e612e08fbc` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/instance--4e72fca22e544ebb4af36a85.md) | 132 | `declaration-track:4e72fca22e544ebb4af36a85e4569be1da42b9c06a6fb002a6d263821f16695d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/instance--34775e76c2214b2b3284e046.md) | 134 | `declaration-track:34775e76c2214b2b3284e04691b2c55448a18048f295ad4970da6e86812228c8` |
| 21 | `instance` | [Function.bicompl.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/function-bicompl-bifunctor--43e44ae65699475fcb3a16ea.md) | 145 | `declaration-track:43e44ae65699475fcb3a16ea92abcd9d23df5fb842cb52ddd093e226ae7f5795` |
| 22 | `instance` | [Function.bicompl.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/function-bicompl-lawfulbifunctor--0d7c170d7438a3cd92539817.md) | 148 | `declaration-track:0d7c170d7438a3cd9253981715ac367f8be8127e18f716e4d9c974cf93e092f0` |
| 23 | `instance` | [Function.bicompr.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/function-bicompr-bifunctor--e72d914fd4b08266fb719473.md) | 158 | `declaration-track:e72d914fd4b08266fb7194739ee351b2c1e494fe0e7b372f43966aa6aa927adf` |
| 24 | `instance` | [Function.bicompr.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/declarations/function-bicompr-lawfulbifunctor--ee4eb81165a14c863943db90.md) | 161 | `declaration-track:ee4eb81165a14c863943db90da08953e4c89fbce277461544cd828a311c20fff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
