# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RelCat.Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "713cfe351816ad5a6b0391dac3326cc2292a9787",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `713cfe351816ad5a6b0391dac3326cc2292a9787`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentialImage` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rel` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RelCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/relcat--d615ec9491d5f051a9199b6f.md) | 40 | `declaration-track:d615ec9491d5f051a9199b6f517e3e14b4491c0559ec449ed903fe46b7d395c7` |
| 2 | `instance` | [RelCat.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/relcat-inhabited--a2b144c9dede9f4195c911f8.md) | 43 | `declaration-track:a2b144c9dede9f4195c911f8850ef8b103a5ffc9c21751033ecc286330160606` |
| 3 | `instance` | [rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/rel--f34e893bd5ba412c10dbfeec.md) | 46 | `declaration-track:f34e893bd5ba412c10dbfeecb842ffd73fc088f79c1cd19e206f656b4f1dfa42` |
| 4 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/hom-ext--318aa2b68b0af60b88bb271e.md) | 55 | `result-track:318aa2b68b0af60b88bb271e1813a246c9b7eb84983fb1da8cbd1a3b78506b82` |
| 5 | `theorem` | [rel_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/rel-id--d1376c4ad7de949cb4d7fa80.md) | 60 | `result-track:d1376c4ad7de949cb4d7fa802be3cdd162b84884655816fb3e2c39ca8e5e0c58` |
| 6 | `theorem` | [rel_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/rel-comp--e038d504567376a64a554592.md) | 62 | `result-track:e038d504567376a64a55459238116518baaddfd7367bb2400c7eb645c4b4fd4b` |
| 7 | `theorem` | [rel_id_apply₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/rel-id-apply--d3dafdc626f89587c90b586b.md) | 64 | `result-track:d3dafdc626f89587c90b586b619092503304e699fb88d3c76b06bbb8862fd024` |
| 8 | `theorem` | [rel_comp_apply₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/rel-comp-apply--e94261549a8a0b9db358e34f.md) | 67 | `result-track:e94261549a8a0b9db358e34f06f2f94778822a9e728e7eb32e6521b794a013f6` |
| 9 | `def` | [graphFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/graphfunctor--a2a46a80697de4cb693fca86.md) | 74 | `declaration-track:a2a46a80697de4cb693fca86a890b899943e041cb0b66e1f90788cd55b7f13a9` |
| 10 | `theorem` | [graphFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/graphfunctor-map--4118067638ac16b2f6308932.md) | 84 | `result-track:4118067638ac16b2f6308932e6199e510dc7690f31e8d80319a957b1d00fbe89` |
| 11 | `instance` | [graphFunctor_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/graphfunctor-faithful--a3531493a8358d9afc315c27.md) | 87 | `declaration-track:a3531493a8358d9afc315c2732c2d8d23bd63709adec784e0780df40a40b34a1` |
| 12 | `instance` | [graphFunctor_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/graphfunctor-esssurj--c9172967d5d3f3784a315c73.md) | 90 | `declaration-track:c9172967d5d3f3784a315c73463ce2448e6fe6511a5c056d7e36f368e36f760b` |
| 13 | `theorem` | [rel_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/rel-iso-iff--5c8ac3aa3f81bfd95bcc7587.md) | 95 | `result-track:5c8ac3aa3f81bfd95bcc758797671228d642b3108cf28323ac1aa4ffba4e7407` |
| 14 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/opfunctor--bd8add745787f2e439cd0621.md) | 130 | `declaration-track:bd8add745787f2e439cd0621e7b4cdccd74363b3ad3374c700f940e92df913e7` |
| 15 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/unopfunctor--4542c94079ad0100c90dfa9a.md) | 146 | `declaration-track:4542c94079ad0100c90dfa9af366eb8df9811ba43dd33259c707a91639f80226` |
| 16 | `theorem` | [opFunctor_comp_unopFunctor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/opfunctor-comp-unopfunctor-eq--39adf6665cb90bcb1c254c35.md) | 158 | `result-track:39adf6665cb90bcb1c254c35e71e57b597fac875c000f31d8d846558f37a47b6` |
| 17 | `theorem` | [unopFunctor_comp_opFunctor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/unopfunctor-comp-opfunctor-eq--72b537057869ed4207e1bfe4.md) | 161 | `result-track:72b537057869ed4207e1bfe4940b10f96865646f34ed293b3fac5d061954232b` |
| 18 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/opequivalence--bf59d6fb1fd343a5baad45e4.md) | 167 | `declaration-track:bf59d6fb1fd343a5baad45e472c9b2cf65d76282314d59387517265e10c891f4` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/instance--0dac370ffbe3b63fe609dcea.md) | 173 | `declaration-track:0dac370ffbe3b63fe609dcea025da33e71313d262689969a6dfd0d1e3916130d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/declarations/instance--69347aa51e5f6f01c30203e2.md) | 177 | `declaration-track:69347aa51e5f6f01c30203e29a2178b24926f1304ef2f50c1f603dd43c6d8b43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
