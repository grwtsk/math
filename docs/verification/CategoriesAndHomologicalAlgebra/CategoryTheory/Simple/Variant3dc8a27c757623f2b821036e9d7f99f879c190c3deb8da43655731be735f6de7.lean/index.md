# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Simple.Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0619c135844fcdae76096067ef608f49086f8932",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0619c135844fcdae76096067ef608f49086f8932`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean.json)

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
| 1 | `class` | [Simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/simple--de3f0e88e2279ccf4d2b8703.md) | 58 | `declaration-track:de3f0e88e2279ccf4d2b870320fce64f7b009053317470872adc40e89cd0cef2` |
| 2 | `theorem` | [isIso_of_mono_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/isiso-of-mono-of-nonzero--ddf942ef49a94dc6ccf90efc.md) | 62 | `result-track:ddf942ef49a94dc6ccf90efc0549c57f6464d25664dc7ff918680767fd0f4c4b` |
| 3 | `theorem` | [Simple.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/simple-of-iso--8fc579798b39c5b1d74d4a15.md) | 65 | `result-track:8fc579798b39c5b1d74d4a15fa181da3ff4089f88e5b469d7c521499f39e3510` |
| 4 | `theorem` | [Simple.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/simple-iff-of-iso--05e2b3c2f6924d3e50e117ae.md) | 82 | `result-track:05e2b3c2f6924d3e50e117aea0292974f269e0b01a18ccf4f61f3eaa67b92661` |
| 5 | `theorem` | [kernel_zero_of_nonzero_from_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/kernel-zero-of-nonzero-from-simple--f4002521690b4b1ad4f020e4.md) | 85 | `result-track:f4002521690b4b1ad4f020e4ae5b2fe65fe0f82eb5bba57f8d19e6a5c3783ad2` |
| 6 | `theorem` | [epi_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/epi-of-nonzero-to-simple--2abe3fc920dad88e05489820.md) | 96 | `result-track:2abe3fc920dad88e05489820f8a561e5355191a43e9da79bb264445281f51b3c` |
| 7 | `theorem` | [mono_to_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/mono-to-simple-zero-of-not-iso--cb05f401aaaaadd98174283c.md) | 102 | `result-track:cb05f401aaaaadd98174283c626146422e7b3464476a0b80de010edceee0d0a7` |
| 8 | `theorem` | [id_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/id-nonzero--9ace8d641086c51156829e21.md) | 108 | `result-track:9ace8d641086c51156829e21fe97df8e485314755d6b073ca71c7bc6aaf4e829` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/instance--84dd0ee0d4085b2491cf5e82.md) | 111 | `declaration-track:84dd0ee0d4085b2491cf5e8247a8b5432d7960d8e0a63a1368fd461c8ad1fde6` |
| 10 | `theorem` | [Simple.not_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/simple-not-iszero--53ec395dde0850919fd812d7.md) | 116 | `result-track:53ec395dde0850919fd812d7b7254611a11d19d6a841b4604b0735120afaa41d` |
| 11 | `theorem` | [zero_not_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/zero-not-simple--820295a49421e8b736f24a9d.md) | 126 | `result-track:820295a49421e8b736f24a9ded4f2c602018b21efe4baae3351523528980b42f` |
| 12 | `theorem` | [simple_of_cosimple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/simple-of-cosimple--a30b5d978181eadb16458f95.md) | 140 | `result-track:a30b5d978181eadb16458f95f18aaefe655154c33fd90a52045c0c33b7c0acf0` |
| 13 | `theorem` | [isIso_of_epi_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/isiso-of-epi-of-nonzero--497645c6df855a1ab7b91afb.md) | 157 | `result-track:497645c6df855a1ab7b91afb99df6f8fb8d5bfabed125fa1fd031d3e8b84e6d7` |
| 14 | `theorem` | [cokernel_zero_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/cokernel-zero-of-nonzero-to-simple--8fc69d700ce0c6abecd82d44.md) | 163 | `result-track:8fc69d700ce0c6abecd82d44ab6862ade3cd84ccef171af6fb8bbb7461776456` |
| 15 | `theorem` | [epi_from_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/epi-from-simple-zero-of-not-iso--9eebf838f61602f8a15c92d0.md) | 170 | `result-track:9eebf838f61602f8a15c92d022a0a3875aaf51eb46bec79299e3481c458e2274` |
| 16 | `theorem` | [Biprod.isIso_inl_iff_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/biprod-isiso-inl-iff-iszero--94bea70c2a22b445af81d643.md) | 184 | `result-track:94bea70c2a22b445af81d643574cb023862de97e0efe2e511c00d8594554a68c` |
| 17 | `theorem` | [indecomposable_of_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/indecomposable-of-simple--06550f14b61f2071fa9b1098.md) | 195 | `result-track:06550f14b61f2071fa9b1098723232a8b7e6c7c302b7164bee9851444c17c1ce` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/instance--95e3998004884ec7173d14d5.md) | 214 | `declaration-track:95e3998004884ec7173d14d58424459e30870bacced7a9275fcafd66577acae8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/instance--c07278e3ebad72189c334d2d.md) | 217 | `declaration-track:c07278e3ebad72189c334d2d1c93a23568d52a9a0e409819e5409d929ff7c95c` |
| 20 | `theorem` | [simple_of_isSimpleOrder_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/simple-of-issimpleorder-subobject--2edf7411e40c0348ddcc5761.md) | 226 | `result-track:2edf7411e40c0348ddcc5761b182c2f56ba47f75ff3117a3de33d382c246aafa` |
| 21 | `theorem` | [simple_iff_subobject_isSimpleOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/simple-iff-subobject-issimpleorder--e4430b2e17ae3ee66bd947ed.md) | 240 | `result-track:e4430b2e17ae3ee66bd947ed80462b806dea01bd729bd9ddb349d7d22ffe9daf` |
| 22 | `theorem` | [subobject_simple_iff_isAtom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/declarations/subobject-simple-iff-isatom--19435f8732ade8d4509107bc.md) | 248 | `result-track:19435f8732ade8d4509107bcaaa1fcdbb2706aa6238c743e5cda2860aa2df8cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
