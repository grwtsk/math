# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdelicSpectralSheaf.Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ac9171d90dcf0eef7c4e55e3055a7f97615c7f9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ac9171d90dcf0eef7c4e55e3055a7f97615c7f9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.AdelicInfinityTopos.GlobalZRoute` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.BadPrimeLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.ArchimedeanFiber` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.NonArchimedeanFiber` — import line 9; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.AdelicSpectralSheaf` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [global_route_tracks_all_primes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/global-route-tracks-all-primes--794361770e426816367f178a.md) | 32 | `result-track:794361770e426816367f178a3214497e1de804d07c7a9f634957cf9f5b7f6d50` |
| 2 | `theorem` | [bad_prime_localization_is_bad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/bad-prime-localization-is-bad--2b7599039cee8d070bafa14d.md) | 37 | `result-track:2b7599039cee8d070bafa14dbc9e09cf6cd8d7b72d0badd57367084adf9800ad` |
| 3 | `theorem` | [archimedean_fiber_place](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/archimedean-fiber-place--0762c0ada598aee319f5b9ea.md) | 42 | `result-track:0762c0ada598aee319f5b9ea82a3df557f59c046f505104ade91f1f34f2863e9` |
| 4 | `theorem` | [archimedean_fiber_local_equilibrium](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/archimedean-fiber-local-equilibrium--6379e9fea2d07037c95f030d.md) | 47 | `result-track:6379e9fea2d07037c95f030de607860f3f650ce0de45a85076b2d30d5fc95ef7` |
| 5 | `theorem` | [nonarchimedean_fiber_is_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/nonarchimedean-fiber-is-finite--bcc6a5732e81a7e5b26629b4.md) | 52 | `result-track:bcc6a5732e81a7e5b26629b4bed59b9fcf715aad8dbe4ec90e34a370cc1b072b` |
| 6 | `theorem` | [nonarchimedean_local_modular_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/nonarchimedean-local-modular-compatible--106770f8a4c17d7e5b0ff46d.md) | 57 | `result-track:106770f8a4c17d7e5b0ff46dc2a929272521098cfa1a6971a33bb476b904e3a8` |
| 7 | `theorem` | [adelic_sheaf_has_hyperdescent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/adelic-sheaf-has-hyperdescent--82dd08092912cbdc27831440.md) | 62 | `result-track:82dd08092912cbdc27831440add1591d84fa30028a6fb03323d5ceb1cc080bef` |
| 8 | `theorem` | [adelic_sheaf_has_local_factor_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/adelic-sheaf-has-local-factor-compatibility--d0a551f02c173e6501f69f3c.md) | 67 | `result-track:d0a551f02c173e6501f69f3c27c053111e17985481f698c9bad4146071d15bb5` |
| 9 | `theorem` | [adelic_sheaf_has_product_formula_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb4b479951fc6f97c470c621498012b98334398dcbc07280d5e61140aece569a8.lean/declarations/adelic-sheaf-has-product-formula-compatibility--48db9c8758a9b3072494d29a.md) | 72 | `result-track:48db9c8758a9b3072494d29a1c2ea811d78be208931be5320b44ed3d3022843a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
