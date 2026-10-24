# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db1bf5357af0fef462bd391debec52f4b37a66ef",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db1bf5357af0fef462bd391debec52f4b37a66ef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Extensive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPushout.IsVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen--37ac26e2005f30512bc4ca23.md) | 51 | `declaration-track:37ac26e2005f30512bc4ca233b7ca2eefa4046c07b6152e95d82edca04fd6ce8` |
| 2 | `theorem` | [IsPushout.IsVanKampen.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen-flip--0fedf9d6304356069c2c96e4.md) | 57 | `result-track:0fedf9d6304356069c2c96e487cdfbc59a82227ecf4a11deabf3df101420be65` |
| 3 | `theorem` | [IsPushout.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen-iff--05600f6dc375bb2a9d036fb7.md) | 63 | `result-track:05600f6dc375bb2a9d036fb7122593ccacfff424e133cbb4c9f68e09824b9d64` |
| 4 | `theorem` | [is_coprod_iff_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/is-coprod-iff-ispushout--a9799a862f6580f09c909eb9.md) | 112 | `result-track:a9799a862f6580f09c909eb97c9c4efe1c0e3c5800ebb51b6c70c366843f6c31` |
| 5 | `theorem` | [IsPushout.isVanKampen_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen-inl--ac0fe83f25256868b2289b99.md) | 150 | `result-track:ac0fe83f25256868b2289b992a2b4250577c3a629c07a3f07d230fcec4be0a8f` |
| 6 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen-ispullback-of-mono-left--6031c1b2441151d27b02e688.md) | 190 | `result-track:6031c1b2441151d27b02e6884e135515a7a454d8d9570a5358d7f8e6aecf1d14` |
| 7 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen-ispullback-of-mono-right--68486a6b0306bd12f1c4bc80.md) | 196 | `result-track:68486a6b0306bd12f1c4bc80e32b7e87984f6c1a8b74145f1a10cca40c238d07` |
| 8 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen-mono-of-mono-left--5a0bdb6e948398d7183ba2e6.md) | 202 | `result-track:5a0bdb6e948398d7183ba2e6098d506eecac1ed9d213d1c3de6a6d031a4ee2b3` |
| 9 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/ispushout-isvankampen-mono-of-mono-right--a17fa1b0ebfa9faa1c48fb26.md) | 209 | `result-track:a17fa1b0ebfa9faa1c48fb26881cd71d4783609ba875edd894d64abd061bedf0` |
| 10 | `class` | [Adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive--1aa0fb3e5d63e3f0ead6e8cd.md) | 218 | `declaration-track:1aa0fb3e5d63e3f0ead6e8cd23af9550ac71306d14ca9b2feee610158cda7849` |
| 11 | `theorem` | [Adhesive.van_kampen'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-van-kampen--ed867745b1b22118e18bf8b2.md) | 226 | `result-track:ed867745b1b22118e18bf8b2f07e336a32812e977029664e0614207974ca89dc` |
| 12 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-left--02dd53a2f0684dfa890387b5.md) | 229 | `result-track:02dd53a2f0684dfa890387b5934484a1262bda89d997fe7565a0b01aa5a3d6f9` |
| 13 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-right--0ffd0dd759a90bf5a012bb49.md) | 233 | `result-track:0ffd0dd759a90bf5a012bb4946e6edf1e08c1d6110f5e6004f90b38cecc0c197` |
| 14 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-mono-of-ispushout-of-mono-left--96fa30dcd900fc64a00dbd7d.md) | 237 | `result-track:96fa30dcd900fc64a00dbd7d5079d5687a95b0183b65956d0ca7591091c7127f` |
| 15 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-mono-of-ispushout-of-mono-right--67463e9d7681468f42d47f82.md) | 241 | `result-track:67463e9d7681468f42d47f8299027bcee7422accdd4b78ff59f3d48a4745b54a` |
| 16 | `instance` | [Type.adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/type-adhesive--6fe7b2b23490346c088bbae1.md) | 245 | `declaration-track:6fe7b2b23490346c088bbae1207de083e58c00a2b44fe1b3f51e0febbb937c16` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/instance--131b8b1472be72f7e38c3f11.md) | 249 | `declaration-track:131b8b1472be72f7e38c3f11d4c3083e0780f8c4f5b5b738e80b6bb242c81013` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/example--0808c791c09395e3aee1762d.md) | 260 | `declaration-track:0808c791c09395e3aee1762de73e07808e011309bb77bf0404abe4d276041131` |
| 19 | `instance` | [adhesive_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-functor--a55c8ad5248b8aff6df7a146.md) | 269 | `declaration-track:a55c8ad5248b8aff6df7a146c6a4b5e6a554ed1603113381c0a362fdfab26fdd` |
| 20 | `theorem` | [adhesive_of_preserves_and_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-of-preserves-and-reflects--a7ea512a6cb8be2bba6f596a.md) | 281 | `result-track:a7ea512a6cb8be2bba6f596aa22ce52f58f89b502bde973e63e021eb6f3065d6` |
| 21 | `theorem` | [adhesive_of_preserves_and_reflects_isomorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-of-preserves-and-reflects-isomorphism--e8d64f8151647549157439ef.md) | 298 | `result-track:e8d64f8151647549157439ef8bd2e8e0a61b1cfe48ee375e2b759193725c2e23` |
| 22 | `theorem` | [adhesive_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/declarations/adhesive-of-reflective--dd57b02c0f554b55ba130551.md) | 310 | `result-track:dd57b02c0f554b55ba130551be538cd66c2c7189bf825de7b01a26fb0158d438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
