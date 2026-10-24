# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdelicSpectralSheaf.Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcccc9de15148924e8c9f48fbac8b3828c256095",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcccc9de15148924e8c9f48fbac8b3828c256095`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.AdelicInfinityTopos.GlobalZRoute` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.BadPrimeLocalization` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.ArchimedeanFiber` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.NonArchimedeanFiber` — import line 4; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.AdelicSpectralSheaf` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [global_route_tracks_all_primes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/global-route-tracks-all-primes--97d2de364594599a324f0bf5.md) | 24 | `result-track:97d2de364594599a324f0bf59bf68c22aee582bb217fddd0df41acdcb9527b13` |
| 2 | `theorem` | [bad_prime_localization_is_bad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/bad-prime-localization-is-bad--28a563d10d5487aef05e9c49.md) | 29 | `result-track:28a563d10d5487aef05e9c49d0fce00dc2c78bcad81d934cda2adc70ba7ef565` |
| 3 | `theorem` | [archimedean_fiber_place](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/archimedean-fiber-place--9070ec6dffd7d1db10381502.md) | 34 | `result-track:9070ec6dffd7d1db10381502d506466bbdfc91e9bf5338adb870b3da1f8553c0` |
| 4 | `theorem` | [archimedean_fiber_local_equilibrium](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/archimedean-fiber-local-equilibrium--14569a33cdab9b2cc595da51.md) | 39 | `result-track:14569a33cdab9b2cc595da519c0a8855f1ae0489684774d4ee3cd6469aad773a` |
| 5 | `theorem` | [nonarchimedean_fiber_is_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/nonarchimedean-fiber-is-finite--3dbdd19edc8f2fef1e6e200e.md) | 44 | `result-track:3dbdd19edc8f2fef1e6e200ec454ab3d509d8855055f56e7383daa14bd21cf02` |
| 6 | `theorem` | [nonarchimedean_local_modular_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/nonarchimedean-local-modular-compatible--2a88f70af0344717876023bf.md) | 49 | `result-track:2a88f70af0344717876023bff550080c025be95e8ea34702f7180fd06d89f7a9` |
| 7 | `theorem` | [adelic_sheaf_has_hyperdescent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/adelic-sheaf-has-hyperdescent--3d8fb5a3c917501b56463cd5.md) | 54 | `result-track:3d8fb5a3c917501b56463cd5c73a6df01f3ead41bddfb3ab9ba55355b3501df3` |
| 8 | `theorem` | [adelic_sheaf_has_local_factor_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/adelic-sheaf-has-local-factor-compatibility--4d32dff2dc896344618316de.md) | 59 | `result-track:4d32dff2dc896344618316de15036324ffb515d8082ef5247f06f435db7c5e0d` |
| 9 | `theorem` | [adelic_sheaf_has_product_formula_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variant5407cfacc370eeb2071c17a6531b7c716093684c0ff7b108456b6b03d51a0280.lean/declarations/adelic-sheaf-has-product-formula-compatibility--6f8087f57cac32dee9d5181e.md) | 64 | `result-track:6f8087f57cac32dee9d5181e71902eaea33b5bb183e77736e66384a879a49ef3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
