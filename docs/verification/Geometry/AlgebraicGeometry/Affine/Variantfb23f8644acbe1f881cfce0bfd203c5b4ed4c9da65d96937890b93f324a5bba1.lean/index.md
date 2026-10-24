# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Affine.Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a37537ed8d4baf118d18e4205d679c240a95656f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a37537ed8d4baf118d18e4205d679c240a95656f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.IsIso` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffinehom--38d2d2af93fa7bf236ba464f.md) | 42 | `declaration-track:38d2d2af93fa7bf236ba464f4db6eb59f9ab14f634f04c4c0d2e8625f7624136` |
| 2 | `lemma` | [IsAffineOpen.preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffineopen-preimage--13088277cf3b7f875a66d174.md) | 45 | `result-track:13088277cf3b7f875a66d17419cf8c6d181346e567231d2525b4365dd9c9dfac` |
| 3 | `def` | [affinePreimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/affinepreimage--8c6f7102ca98928232ceb331.md) | 52 | `declaration-track:8c6f7102ca98928232ceb331e9817378910d15b605ffc8c42621abfa0042df95` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/instance--9346f8d3f60eff625a4bb631.md) | 56 | `declaration-track:9346f8d3f60eff625a4bb631ae11917516a204983fcc216868b06b4a09449fc1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/instance--e958d2b83a9e2c89dfa2f4ca.md) | 59 | `declaration-track:e958d2b83a9e2c89dfa2f4caca5cabe382431262d45fc0e9919e7f6f88342c25` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/instance--d513266299c3949828765bf8.md) | 63 | `declaration-track:d513266299c3949828765bf88a3ceca7468538d3ccc949022b6dca41d74bdcc6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/instance--c4b1197b281b42c1a24b7008.md) | 71 | `declaration-track:c4b1197b281b42c1a24b7008a1bf0f15515eda5a7e5fe45306783a882fdf3530` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/instance--82d46a04b27e0a6c69737765.md) | 75 | `declaration-track:82d46a04b27e0a6c697377657dc4732588a72c6115e767f1e1b5ba0bf7770079` |
| 9 | `lemma` | [isAffineOpen_of_isAffineOpen_basicOpen_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffineopen-of-isaffineopen-basicopen-aux--69a6fc3b5d71e0fb87eab524.md) | 86 | `result-track:69a6fc3b5d71e0fb87eab524a06326c1ee24ce2c883ae682cdadc37eb085fe89` |
| 10 | `lemma` | [isAffine_of_isAffineOpen_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffine-of-isaffineopen-basicopen--1c80564a23eae7076c689ca5.md) | 104 | `result-track:1c80564a23eae7076c689ca51bc8782ede162dca78fcebbfaabb83ea19e7913b` |
| 11 | `lemma` | [isAffineOpen_of_isAffineOpen_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffineopen-of-isaffineopen-basicopen--c6e8fe17a272f713139d7ee9.md) | 134 | `result-track:c6e8fe17a272f713139d7ee94f0692bef0ec6bb4c33b9712e56272af1775e678` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/instance--8b308f2c9b6300e1c40b1288.md) | 143 | `declaration-track:8b308f2c9b6300e1c40b128846ee17bc7fbc4d9fcef27f76cc8a06b0d9839b81` |
| 13 | `instance` | [isAffineHom_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffinehom-isstableunderbasechange--4d11ab6d38a7ee64730419b9.md) | 168 | `declaration-track:4d11ab6d38a7ee64730419b9829a0a44f0b84f05f30a52db0626779a420cc157` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/instance--671305e10ed4d8e2d29098ba.md) | 176 | `declaration-track:671305e10ed4d8e2d29098baade69de572490bca75f37ed358cf2d7b622ed3c3` |
| 15 | `lemma` | [isAffine_of_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffine-of-isaffinehom--38c3c5f5621ccf82306ed07d.md) | 179 | `result-track:38c3c5f5621ccf82306ed07d0d297031dacd7e8b095d5f2e7911060ceee038fe` |
| 16 | `lemma` | [isAffineHom_of_forall_exists_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffinehom-of-forall-exists-isaffineopen--913bc62faeffefe3ef84dc1d.md) | 182 | `result-track:913bc62faeffefe3ef84dc1de100835e5f650d79d18d81d6050dbf686ae3849c` |
| 17 | `lemma` | [isAffineHom_of_isInducing](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/declarations/isaffinehom-of-isinducing--4a99948899cd0bb820727fc6.md) | 192 | `result-track:4a99948899cd0bb820727fc6696140fd886a2103beaf977a4c61abd8536dc09f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
