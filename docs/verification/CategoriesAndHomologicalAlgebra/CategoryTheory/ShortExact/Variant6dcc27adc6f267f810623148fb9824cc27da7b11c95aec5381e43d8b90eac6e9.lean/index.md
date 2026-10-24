# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShortExact.Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "841bdf36f5a332d995438389ca15b3a86656ff9d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `841bdf36f5a332d995438389ca15b3a86656ff9d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ShortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact--8e1eb4b74e7e759b65697f8d.md) | 39 | `declaration-track:8e1eb4b74e7e759b65697f8db846c1e97f5b8f7dd624ab1cacabed4e3e728887` |
| 2 | `lemma` | [ShortExact.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-mk--55d5a3fc7c9078aaf05ba746.md) | 46 | `result-track:55d5a3fc7c9078aaf05ba74697d044bf7eddef03d54fdf4b558867db737b4e24` |
| 3 | `lemma` | [shortExact_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-of-iso--7e70c18493508631b8a9d447.md) | 49 | `result-track:7e70c18493508631b8a9d447dc7c314cf09066fd44848e59eff3a600222da988` |
| 4 | `lemma` | [shortExact_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-iff-of-iso--ad830cf1e398eedcb852dc7b.md) | 64 | `result-track:ad830cf1e398eedcb852dc7bd73f286a4a7c5750b8eef42fda8fb93b06e5ed8b` |
| 5 | `lemma` | [ShortExact.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-op--08cfd0f788c2af1416695d77.md) | 69 | `result-track:08cfd0f788c2af1416695d776d1e75ab6fb9e0d189641456feb89495bb6d8931` |
| 6 | `lemma` | [ShortExact.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-unop--281471817e81a87d7a2cc679.md) | 80 | `result-track:281471817e81a87d7a2cc6799f0b6f6c439ffba78714b8962c370a8ef66cdfe6` |
| 7 | `lemma` | [shortExact_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-iff-op--3ef761e1c3f184a657d45dde.md) | 93 | `result-track:3ef761e1c3f184a657d45ddeabed8743c18fd8e3d52daf3747cc4ffb6fa1b0dc` |
| 8 | `lemma` | [shortExact_iff_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-iff-unop--88b7eddf49c3e3a2794b9349.md) | 96 | `result-track:88b7eddf49c3e3a2794b9349cc1e3227b74a1f425e6b7ffb0749ee828834c278` |
| 9 | `lemma` | [ShortExact.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-map--f6535e2d71e954c81e3ad11e.md) | 101 | `result-track:f6535e2d71e954c81e3ad11e56e677f47bc6f7f0e29dfa8608ba4cca08dea189` |
| 10 | `lemma` | [ShortExact.map_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-map-of-exact--1fe135ff621d29ceb732faf8.md) | 109 | `result-track:1fe135ff621d29ceb732faf82fab8009e7bd614952effcad73416b924879ee9c` |
| 11 | `lemma` | [ShortExact.isIso_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-isiso-f-iff--c55ef44764e58677ae2fdfeb.md) | 124 | `result-track:c55ef44764e58677ae2fdfebf644e6316ac7d0e58693a988dd705a72594618b7` |
| 12 | `lemma` | [ShortExact.isIso_g_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-isiso-g-iff--7ec26575e56cbd383d1e285e.md) | 137 | `result-track:7ec26575e56cbd383d1e285e6910b429f5f075219a93d5a024e56a40c6e1a7e8` |
| 13 | `lemma` | [isIso₂_of_shortExact_of_isIso₁₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/isiso-of-shortexact-of-isiso--299b79c751214aa29f5c75c1.md) | 150 | `result-track:299b79c751214aa29f5c75c12fa2d7c8607282ec2efaa44dd8ab4cfe0d765700` |
| 14 | `lemma` | [isIso₂_of_shortExact_of_isIso₁₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/isiso-of-shortexact-of-isiso--cbece3290b341111a0104156.md) | 160 | `result-track:cbece3290b341111a0104156793fe77fae55c4fc26c6150df4823fa8160f881b` |
| 15 | `def` | [ShortExact.fIsKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-fiskernel--0954a4f941c26a3b8daef600.md) | 166 | `declaration-track:0954a4f941c26a3b8daef600c059fb4a37633eed85f5bbf29d90b8f420b74181` |
| 16 | `def` | [ShortExact.gIsCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/shortexact-giscokernel--a2f9468b26185f2929eee8bf.md) | 173 | `declaration-track:a2f9468b26185f2929eee8bffcc5e7748c97770cd5e83dba8967ab97d27804e2` |
| 17 | `lemma` | [Exact.shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/exact-shortexact--fe269d06dd8012bbb88fafd7.md) | 180 | `result-track:fe269d06dd8012bbb88fafd7d5583fe20d17b6283f99c6d40bf5f6aff622b438` |
| 18 | `lemma` | [Splitting.shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/splitting-shortexact--f4b326923aafc6a8ccb92a11.md) | 199 | `result-track:f4b326923aafc6a8ccb92a11ba20481b493364a926a700f81095d6b4910570ec` |
| 19 | `def` | [splittingOfInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/splittingofinjective--00ead90c785df8c8bdffd959.md) | 209 | `declaration-track:00ead90c785df8c8bdffd959ca6266429506db7e634c4e2d520e412277d40397` |
| 20 | `def` | [splittingOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variant6dcc27adc6f267f810623148fb9824cc27da7b11c95aec5381e43d8b90eac6e9.lean/declarations/splittingofprojective--c0b7b361758345b2c80b387f.md) | 217 | `declaration-track:c0b7b361758345b2c80b387f865e4a4c3eb1be089973a6922d3354f5ffefe9b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
