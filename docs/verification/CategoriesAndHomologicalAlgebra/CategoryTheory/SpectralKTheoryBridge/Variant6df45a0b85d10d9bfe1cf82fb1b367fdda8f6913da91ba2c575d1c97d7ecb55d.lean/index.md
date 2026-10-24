# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralKTheoryBridge.Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27ffc5caa96ab50416aabd2628284dc2b36c955e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27ffc5caa96ab50416aabd2628284dc2b36c955e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.CategoricalSpectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.KTheoryIndex` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.ModuliStackKTheory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiracSpectrumToKTheoryClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/diracspectrumtoktheoryclass--a8a3d53f3448d66db8e67abe.md) | 34 | `declaration-track:a8a3d53f3448d66db8e67abec7694c025495e321e5c42cf24d7bc7a201570926` |
| 2 | `theorem` | [dirac_spectrum_maps_to_k_class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/dirac-spectrum-maps-to-k-class--387e7f99587a5d07052e7115.md) | 44 | `result-track:387e7f99587a5d07052e711534c9f26a3762cc758bb41e3a7b082bfad31b55fd` |
| 3 | `theorem` | [dirac_spectrum_k_class_compatible_with_index](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/dirac-spectrum-k-class-compatible-with-index--3349501f72fb142df88c1e64.md) | 50 | `result-track:3349501f72fb142df88c1e64cf46a22388ecc57f203bc0d7f46deab191bbf9af` |
| 4 | `structure` | [DiracSpectrumKTheoryFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/diracspectrumktheoryfunctor--eb8581a5a4a29a237308fa91.md) | 61 | `declaration-track:eb8581a5a4a29a237308fa912e1c03af2117347cc2b7f197f3fdf1c7b9ebfb61` |
| 5 | `theorem` | [dirac_spectrum_k_functor_morphism_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/dirac-spectrum-k-functor-morphism-compatible--911a72375f8d80dd297a267b.md) | 79 | `result-track:911a72375f8d80dd297a267b27e85dda0d57a889cd590a98de724809403494da` |
| 6 | `structure` | [DiracSpectrumRealizesKTheoryIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/diracspectrumrealizesktheoryindex--bdc48ab138a97481347a8bf2.md) | 89 | `declaration-track:bdc48ab138a97481347a8bf2844131615d47c853c5f2b57ea86406f483fccba6` |
| 7 | `theorem` | [dirac_spectrum_realizes_k_index](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/dirac-spectrum-realizes-k-index--024d32bd27326322f14ced0d.md) | 98 | `result-track:024d32bd27326322f14ced0da01b4e3464a46cf9ff1863dfb77bc2be3e59afc4` |
| 8 | `theorem` | [dirac_spectrum_k_index_same_class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant6df45a0b85d10d9bfe1cf82fb1b367fdda8f6913da91ba2c575d1c97d7ecb55d.lean/declarations/dirac-spectrum-k-index-same-class--06cfe0aebafeb29929d4a644.md) | 105 | `result-track:06cfe0aebafeb29929d4a64413bc1532497204c192072084a1b3266adb8ee364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
