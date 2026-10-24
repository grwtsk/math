# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolRing.Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78332223b25f7150aa7132bf26c8f82ba6d5cbfd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78332223b25f7150aa7132bf26c8f82ba6d5cbfd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.BooleanRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlg` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoolRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/boolring--59427d19cbbc2a9985396f58.md) | 26 | `declaration-track:59427d19cbbc2a9985396f5899e16160942c1a7b3840995e86ea353bfe70c60d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/instance--a77ef51dd455434550e76808.md) | 36 | `declaration-track:a77ef51dd455434550e76808e764c7b97912e5c47c3a43407077ee546c4920da` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/of--1f3fb9ee3b1222d0c06c5f7a.md) | 44 | `declaration-track:1f3fb9ee3b1222d0c06c5f7a1b8f22015fb4d6bfaafdee7dfdeb3ee19af25379` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/coe-of--6d008a6e8a95b251571c5ff4.md) | 47 | `result-track:6d008a6e8a95b251571c5ff44d599d02613276644ff5c0f112f9389be1af449d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/instance--96164403ae4cd805bc69c098.md) | 50 | `declaration-track:96164403ae4cd805bc69c098bd873800e0d2eabf82c3332edd0abe370137c0cf` |
| 6 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/hom--314fef805d0de3cb8eade4d0.md) | 56 | `declaration-track:314fef805d0de3cb8eade4d0b34d61f8b4c80f29e3c5065f5c26ce5cfcd0c8be` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/instance--5c211fb8e174d2ded12468f1.md) | 61 | `declaration-track:5c211fb8e174d2ded12468f153b33e8cc5d49721cc7e13bd8c7b9ffa48148bfa` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/instance--33def94454814554c5df5cf6.md) | 66 | `declaration-track:33def94454814554c5df5cf6b2e35b48fefee6d15a29a3c252d8a54d4c0ff262` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/hom-hom--1b4da7f937c5cf3177ec3e8a.md) | 71 | `declaration-track:1b4da7f937c5cf3177ec3e8ad53ab398510cab7482635a9c491d0ee58491d798` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/ofhom--2434058e2c74fa87b6eba3a2.md) | 75 | `declaration-track:2434058e2c74fa87b6eba3a27144d64d9d41a8a5213e2652e5105ab84e37af8a` |
| 11 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/hom-ext--a883d03d83fcc4dc247660db.md) | 79 | `result-track:a883d03d83fcc4dc247660dbaecbedd925f7d2210f88d33cc81afe5d83645878` |
| 12 | `instance` | [hasForgetToCommRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/hasforgettocommring--26d8124e96963dd8897578d7.md) | 82 | `declaration-track:26d8124e96963dd8897578d7e75167c964dd172a02cf0b616e9600571a9aa88b` |
| 13 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/iso-mk--b4524e39e6fe97770d548dae.md) | 89 | `declaration-track:b4524e39e6fe97770d548dae669812d6ca888149184ec48f85f8e9658919d1a2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/instance--11ad21363486678b8f3b8f22.md) | 100 | `declaration-track:11ad21363486678b8f3b8f224689a69d4d4990b2ccc7a0ec5caa5ede8e431b94` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/instance--268c4ea1423d3ed8f7dee0a0.md) | 105 | `declaration-track:268c4ea1423d3ed8f7dee0a037a57d69a32893fdb57d6a2e84178d8ce47d4e39` |
| 16 | `instance` | [BoolRing.hasForgetToBoolAlg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/boolring-hasforgettoboolalg--5d55a15ec180e7a7764ed0dd.md) | 110 | `declaration-track:5d55a15ec180e7a7764ed0dda924ad425fed0b8d8bcb72f27848493545a8d94f` |
| 17 | `instance` | [BoolAlg.hasForgetToBoolRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/boolalg-hasforgettoboolring--42446fd77fba120017ce1b25.md) | 115 | `declaration-track:42446fd77fba120017ce1b25442821d9ee99049b51c627d9ed38ae7781658509` |
| 18 | `def` | [boolRingCatEquivBoolAlg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391.lean/declarations/boolringcatequivboolalg--1ffb66631efcdece0d74f284.md) | 121 | `declaration-track:1ffb66631efcdece0d74f284a09adc19b8394f7f14158887431167f3d8e88532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
