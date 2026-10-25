# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1b1089f74f76013b59c5eb3e5186978f2a2d8ba",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1b1089f74f76013b59c5eb3e5186978f2a2d8ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CharZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/charzero--bd6272c248aa621f799820d0.md) | 46 | `declaration-track:bd6272c248aa621f799820d04eb51fa7b22b2aa7828cb22d7457d8a4a42e4a25` |
| 2 | `theorem` | [charZero_of_inj_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/charzero-of-inj-zero--a923f2ace94efc7bd4b8f1d5.md) | 53 | `result-track:a923f2ace94efc7bd4b8f1d5dc5ac85d5f9bcfdafad0fe2ad359a6b4cc693f1c` |
| 3 | `theorem` | [cast_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/cast-injective--3314b9e5c907d0df0ebb6710.md) | 67 | `result-track:3314b9e5c907d0df0ebb6710220e351a755117b0e5260d194f752321bbb59675` |
| 4 | `theorem` | [cast_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/cast-inj--0ff9586b139d3163a3392819.md) | 71 | `result-track:0ff9586b139d3163a339281910b4aabd60b25c924ca23126dbb603ea0f9fce1a` |
| 5 | `theorem` | [cast_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/cast-eq-zero--d54091e714168c48c236c9a7.md) | 75 | `result-track:d54091e714168c48c236c9a7b90637957d0aad6d0567202dc8a832577ecffd7e` |
| 6 | `theorem` | [cast_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/cast-ne-zero--8bcad960f2e28c92ac586c1d.md) | 78 | `result-track:8bcad960f2e28c92ac586c1d726550f72a27fd257898db48445cbdd35d9be11b` |
| 7 | `theorem` | [cast_add_one_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/cast-add-one-ne-zero--4d341c63333e234f0fd7c49e.md) | 81 | `result-track:4d341c63333e234f0fd7c49e224a53c5160754eacb036a268302ea8f86ea1797` |
| 8 | `theorem` | [cast_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/cast-eq-one--cd4669073fa617bf5d96e778.md) | 85 | `result-track:cd4669073fa617bf5d96e778211d6da72d320d6508ae8b44152e5360cb76dfd9` |
| 9 | `theorem` | [cast_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/cast-ne-one--2b5b4d8205b61648f2ada0ad.md) | 88 | `result-track:2b5b4d8205b61648f2ada0adbe96ecd0577db967d2593c26269184fa01a5acf4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/instance--7475e559975f80af037dc20d.md) | 91 | `declaration-track:7475e559975f80af037dc20db17f2d47d5f6fc0cf298147d8019e93ab3e6aa4a` |
| 11 | `lemma` | [ofNat_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/ofnat-ne-zero--cc314f3dc7461db21bee6f0b.md) | 100 | `result-track:cc314f3dc7461db21bee6f0b7045c316a46fcbccebf283d4c072e0019befef2a` |
| 12 | `lemma` | [zero_ne_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/zero-ne-ofnat--1c29a16aa7f4227a857ade5c.md) | 103 | `result-track:1c29a16aa7f4227a857ade5c9920b375395a8c20eb4e173b90f5beb376511ab1` |
| 13 | `lemma` | [ofNat_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/ofnat-ne-one--d3bc69fcdd82b3685660aab6.md) | 106 | `result-track:d3bc69fcdd82b3685660aab658b01a17add3bd38b1636c7d38efd324b2cec146` |
| 14 | `lemma` | [one_ne_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/one-ne-ofnat--09cff06906dfa46a86a826d3.md) | 109 | `result-track:09cff06906dfa46a86a826d339d6f861fed6bc0101a9bf26eb36d5c500ba952b` |
| 15 | `lemma` | [ofNat_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/ofnat-eq-ofnat--f0f80dbb9ad1902c83faca04.md) | 112 | `result-track:f0f80dbb9ad1902c83faca04909a4b353fc4f1abac751e9649061077beafe6b6` |
| 16 | `instance` | [charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/charzero--c27391728d51e5dbc7a37cea.md) | 120 | `declaration-track:c27391728d51e5dbc7a37cea0350d1bdc6a605053892c9a6ee4f2a858047a77a` |
| 17 | `instance` | [charZero_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/charzero-one--cbf124313308727af59b0ed9.md) | 123 | `declaration-track:cbf124313308727af59b0ed9624f0fd5e229f0f73743efd60454f696153dbcea` |
| 18 | `instance` | [charZero_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantde611a90f9f14ccbb81d01a7bc4bdeee5c07afe85ccc8a68e8b81abf78e56922.lean/declarations/charzero-ofnat--78b76d47cb03d66287df7b22.md) | 128 | `declaration-track:78b76d47cb03d66287df7b22e6881227e11d431cb89c0ad6e12765b8e3e28f0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
