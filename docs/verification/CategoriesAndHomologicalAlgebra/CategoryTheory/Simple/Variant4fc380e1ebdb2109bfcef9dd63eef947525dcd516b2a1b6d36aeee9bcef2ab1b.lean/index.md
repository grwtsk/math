# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Simple.Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9588ceff867217308e165ad7ea62331663bd5630",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9588ceff867217308e165ad7ea62331663bd5630`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/simple--a3122fb523985c2b5b8bb653.md) | 60 | `declaration-track:a3122fb523985c2b5b8bb653d997022fccb4627c2dba7c2105fd535db71996b1` |
| 2 | `theorem` | [isIso_of_mono_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/isiso-of-mono-of-nonzero--e0911c88261e2b4be80d8e5e.md) | 65 | `result-track:e0911c88261e2b4be80d8e5e9d259216c91665b2aba2d115b6651e114f54b70c` |
| 3 | `theorem` | [Simple.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/simple-of-iso--e431b1deeea71f0bf081cc54.md) | 69 | `result-track:e431b1deeea71f0bf081cc541d569569df648ff492809139f75e6fdf16eafbb1` |
| 4 | `theorem` | [Simple.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/simple-iff-of-iso--d0ff4350a54df32f30f29249.md) | 89 | `result-track:d0ff4350a54df32f30f2924963136b6692dcfbc281b716ce45039326346d9df4` |
| 5 | `theorem` | [kernel_zero_of_nonzero_from_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/kernel-zero-of-nonzero-from-simple--82cf31adaf209d39ed644707.md) | 93 | `result-track:82cf31adaf209d39ed6447074e64a0bdfb860728b2ee147ea4fee0fa2b7c07fc` |
| 6 | `theorem` | [epi_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/epi-of-nonzero-to-simple--ccc504f2943e6856a176814b.md) | 105 | `result-track:ccc504f2943e6856a176814b4187e484adb56665fdba63f2128b706c4307ebba` |
| 7 | `theorem` | [mono_to_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/mono-to-simple-zero-of-not-iso--6cb9a61146aafa33eaf99afd.md) | 112 | `result-track:6cb9a61146aafa33eaf99afd73d344b782e646b4aee4dad35e53529690d06c89` |
| 8 | `theorem` | [id_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/id-nonzero--235d3a301a5c77cc5a85afa0.md) | 119 | `result-track:235d3a301a5c77cc5a85afa0dbced0136855b2a32282c6c26f89395d08c07df8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/instance--983848f96154429a517ff0fa.md) | 123 | `declaration-track:983848f96154429a517ff0faae552a9250cfc4b7a90a8b17341897001621601d` |
| 10 | `theorem` | [Simple.not_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/simple-not-iszero--877e166f3e6495da584fef08.md) | 128 | `result-track:877e166f3e6495da584fef0848fcb8f44df16155ed05804fa7abb63af2a8e176` |
| 11 | `theorem` | [zero_not_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/zero-not-simple--3691e9c40689af3c29e17722.md) | 139 | `result-track:3691e9c40689af3c29e1772243588a16ebbee31ea54621245039dd27dd091e38` |
| 12 | `theorem` | [simple_of_cosimple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/simple-of-cosimple--c85f9e10f4e77a36aea98420.md) | 154 | `result-track:c85f9e10f4e77a36aea984208d433d69beb03d332b1224310829d46d41d79ee5` |
| 13 | `theorem` | [isIso_of_epi_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/isiso-of-epi-of-nonzero--cc13c2a4fa8e1b1010515109.md) | 172 | `result-track:cc13c2a4fa8e1b10105151090fc1f72d68aed8b4cb03c18c7220deed4adf1123` |
| 14 | `theorem` | [cokernel_zero_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/cokernel-zero-of-nonzero-to-simple--80865f0aeee4353c198ce049.md) | 179 | `result-track:80865f0aeee4353c198ce049eb7120fa7aabfd167067e5332c6529232c55444f` |
| 15 | `theorem` | [epi_from_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/epi-from-simple-zero-of-not-iso--e067733f884628961110d7ad.md) | 187 | `result-track:e067733f884628961110d7adfae532b559f386de8e95a018b792b3ff53e0b69e` |
| 16 | `theorem` | [Biprod.isIso_inl_iff_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/biprod-isiso-inl-iff-iszero--b0bb37817743575311dd4385.md) | 202 | `result-track:b0bb37817743575311dd4385c99b28563e70e6a1c857e58351c3bb980c853f17` |
| 17 | `theorem` | [indecomposable_of_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/indecomposable-of-simple--43253b21adf8ef6eab709e53.md) | 214 | `result-track:43253b21adf8ef6eab709e53e7432a007d3be69b64575ac63d6f3e5c0d8aca16` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/instance--b602dc4d2a6b94224a025656.md) | 234 | `declaration-track:b602dc4d2a6b94224a025656e72dcaa7f3d7bb5640ef8fa6d708e9e1ec326999` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/instance--14d9f9c2bc15550a9bd5185b.md) | 237 | `declaration-track:14d9f9c2bc15550a9bd5185b11d30b9ebd205544469123d103f8279224708124` |
| 20 | `theorem` | [simple_of_isSimpleOrder_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/simple-of-issimpleorder-subobject--9507a3c1247be5ea28de3193.md) | 246 | `result-track:9507a3c1247be5ea28de3193d560716935400017374f33c64d951e692a95436b` |
| 21 | `theorem` | [simple_iff_subobject_isSimpleOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/simple-iff-subobject-issimpleorder--38f867229edceb04e51f5758.md) | 261 | `result-track:38f867229edceb04e51f575894e91a350775d4a0b4d2aa87a119b439cfb4a446` |
| 22 | `theorem` | [subobject_simple_iff_isAtom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/declarations/subobject-simple-iff-isatom--de923469b1e2bd396842ed40.md) | 270 | `result-track:de923469b1e2bd396842ed405faed408813cecfb94855975ce3d965daf33d4be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
