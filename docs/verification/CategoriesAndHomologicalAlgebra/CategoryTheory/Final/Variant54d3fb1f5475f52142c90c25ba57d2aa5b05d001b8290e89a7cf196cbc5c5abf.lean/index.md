# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0477b3466294fb4dd92edb20b35dac1bc4211a31",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0477b3466294fb4dd92edb20b35dac1bc4211a31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IsConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Sifted` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Flat` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Grothendieck` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.CommaMap` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [final_fst_small](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/final-fst-small--3e657cd063e8df265cf6d093.md) | 55 | `result-track:3e657cd063e8df265cf6d0937b6d8dc342aa8f523b553ab3fb45a2df49da6c55` |
| 2 | `instance` | [final_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/final-fst--5e3d0f0c280ea411f6ec43db.md) | 81 | `declaration-track:5e3d0f0c280ea411f6ec43db3cd558110cbdae3fda8152aed4cb2f0a1c5ae80d` |
| 3 | `instance` | [initial_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/initial-snd--a732a6bb410b7c9cffc9f938.md) | 95 | `declaration-track:a732a6bb410b7c9cffc9f9382b826b40dd87b3adc8b8933860fa01f70789040e` |
| 4 | `instance` | [isConnected_comma_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/isconnected-comma-of-final--a38213909ef8ec41c7201bd1.md) | 103 | `declaration-track:a38213909ef8ec41c7201bd19709c22c90c414c12fbf0c9a7badec06bd79e7cc` |
| 5 | `instance` | [isConnected_comma_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/isconnected-comma-of-initial--32b1a91a32f309255ac0b3dc.md) | 108 | `declaration-track:32b1a91a32f309255ac0b3dca248ef55096249097b75c49f5df38155fcb73971` |
| 6 | `lemma` | [map_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/map-final--0806b393a583e4b3801782d7.md) | 127 | `result-track:0806b393a583e4b3801782d76824c4687a86a1caf78378c676cb42573398dc46` |
| 7 | `instance` | [isFiltered_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/isfiltered-of-final--618d93c213031f26038ef3a8.md) | 160 | `declaration-track:618d93c213031f26038ef3a8f5149d02b0730434827969b53ac9b20d10130067` |
| 8 | `lemma` | [isCofiltered_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/iscofiltered-of-initial--b2805e96492168ae17bc12aa.md) | 175 | `result-track:b2805e96492168ae17bc12aa973eaa39ca9369d78e5c74214cff6f38d9dc94cf` |
| 9 | `instance` | [final_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/final-snd--ac3590152c3be93f8eaec221.md) | 182 | `declaration-track:ac3590152c3be93f8eaec221566bb5a47164101c0a039057f70e5bc6483dc9a4` |
| 10 | `instance` | [initial_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/declarations/initial-fst--457b84de03842d40275e6ed1.md) | 193 | `declaration-track:457b84de03842d40275e6ed1122cb46add647b186d1735672d653bf757f93340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
