# Verification target: GRWTSK.Algebra.LinearAlgebra.Localization.Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a0b16fae81a17658c9768c458b706d23865d3ef",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a0b16fae81a17658c9768c458b706d23865d3ef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Stability` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Exactness` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalization.flat](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/islocalization-flat--b355f9e6d9c1060745e08802.md) | 40 | `result-track:b355f9e6d9c1060745e088021676a01043854ef0f12c08e0c7dd639871acefd9` |
| 2 | `instance` | [Localization.flat](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/localization-flat--46bd8719c80f961ae15e4a6f.md) | 48 | `declaration-track:46bd8719c80f961ae15e4a6fb3e25be312506b53a50c35f020b065d9c1313cbb` |
| 3 | `theorem` | [flat_iff_of_isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/flat-iff-of-islocalization--2031a4e726e28f950234bec6.md) | 53 | `result-track:2031a4e726e28f950234bec637cff6ba446d913852291a155333e300e1d47d19` |
| 4 | `theorem` | [flat_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/flat-of-islocalized-maximal--fc7351dbecf26f1dbedf04fd.md) | 67 | `result-track:fc7351dbecf26f1dbedf04fdb6e6f6beaa8c44315be7bec37984683456850053` |
| 5 | `theorem` | [flat_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/flat-of-localized-maximal--cdc82c66225419c50384d934.md) | 76 | `result-track:cdc82c66225419c50384d93440fcaf916cce5942af0bf960faaaee715e90605a` |
| 6 | `theorem` | [flat_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/flat-of-islocalized-span--4dae4c90f50fab48976b2473.md) | 92 | `result-track:4dae4c90f50fab48976b247336e28264adcb18018a03fdf508c61beab0cb779d` |
| 7 | `theorem` | [flat_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/flat-of-localized-span--6655c23ce479bde146abe12a.md) | 101 | `result-track:6655c23ce479bde146abe12ab431e247a38f597fef4de942e07e2b844a06cc03` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/declarations/instance--f87ad05d71a453e565486494.md) | 110 | `declaration-track:f87ad05d71a453e565486494c6452f1f77af9e684db348ae3efed3c729332cd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
