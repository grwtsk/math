# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ShiftSequence.Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad48080a627749c3bcfd9fe4e877ccb9b4e854ad",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad48080a627749c3bcfd9fe4e877ccb9b4e854ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.InducedShiftSequence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.Shift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftShortComplexFunctor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/shiftshortcomplexfunctor--976b79178798335308b1513d.md) | 45 | `declaration-track:976b79178798335308b1513d7713aff9c6bee652756a82f54c8d640f7f03f6d2` |
| 2 | `def` | [shiftShortComplexFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/shiftshortcomplexfunctoriso--761f16cf37611d07ea290582.md) | 57 | `declaration-track:761f16cf37611d07ea2905822419580fca243489837b9976790b53b5b75795c5` |
| 3 | `lemma` | [shiftShortComplexFunctorIso_zero_add_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/shiftshortcomplexfunctoriso-zero-add-hom-app--7c2209cf70dd9a611612c294.md) | 64 | `result-track:7c2209cf70dd9a611612c294dc862cdd55b276add4587e4135586527652ec8ba` |
| 4 | `lemma` | [shiftShortComplexFunctorIso_add'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/shiftshortcomplexfunctoriso-add-hom-app--d9f9ed2ff36c4376c6cff9df.md) | 70 | `result-track:d9f9ed2ff36c4376c6cff9df40dda03988c2d90b50d6d74411edf8024fd549d4` |
| 5 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/shiftiso--cca94a8de424761d88a33996.md) | 88 | `declaration-track:cca94a8de424761d88a33996611babb45149d231e9fdd7e932a1d54a0c51755a` |
| 6 | `lemma` | [shiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/shiftiso-hom-app--85d0547a582b7ef259befcf9.md) | 97 | `result-track:85d0547a582b7ef259befcf91ff1281e8a453e24d917b192bdbf9f3c774cb332` |
| 7 | `lemma` | [shiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/shiftiso-inv-app--8644cb9403ff58e1b4390103.md) | 110 | `result-track:8644cb9403ff58e1b4390103eff71150eadbde6f0decf1814269946f6494afd3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/instance--845ee22671311292413792f0.md) | 120 | `declaration-track:845ee22671311292413792f0bd32412f0556bcaf26fd4ee44aa337c449d88c35` |
| 9 | `lemma` | [quasiIsoAt_shift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/quasiisoat-shift-iff--d9de4332f8eaf0405de2e220.md) | 137 | `result-track:d9de4332f8eaf0405de2e2200df3ce499993a9ca78c54fc16debc76decc365e1` |
| 10 | `lemma` | [quasiIso_shift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/quasiiso-shift-iff--8862d5e37ce411969cb49d76.md) | 143 | `result-track:8862d5e37ce411969cb49d7601d2e03684b89fc5bcab882b8261e7adffb079fb` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/instance--b359af8d8757c285bf166420.md) | 153 | `declaration-track:b359af8d8757c285bf166420198e9529b1eb93c7ccb49f9324c5f1c9292d0bf5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/instance--8f40a85973b17f567c6400de.md) | 158 | `declaration-track:8f40a85973b17f567c6400de5e6973e3316da2632d232ba5ba5b63a4259e47bb` |
| 13 | `lemma` | [homologyFunctor_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/homologyfunctor-shift--a22cfa120c6c4ff050f97835.md) | 162 | `result-track:a22cfa120c6c4ff050f97835710824732c26ac45c04a7d31ee84ba485ba8f0f1` |
| 14 | `lemma` | [liftCycles_shift_homologyπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/liftcycles-shift-homology--1811261e9778a333ffbf4960.md) | 167 | `result-track:1811261e9778a333ffbf496076ec671de1dbe459eed8222f726f8a85145dc611` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/instance--2cc567c8bcc40e17a4c65b95.md) | 195 | `declaration-track:2cc567c8bcc40e17a4c65b9567198ffb207e6c01ff3640e91de595b46928f474` |
| 16 | `lemma` | [homologyShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/homologyshiftiso-hom-app--edca534612afa3e8deebae2f.md) | 203 | `result-track:edca534612afa3e8deebae2f0a78dffd135b6dca18a8115839a78f7d9de5db9f` |
| 17 | `lemma` | [homologyFunctor_shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/declarations/homologyfunctor-shiftmap--ebe6a65ed7f5e703f7d0a9c6.md) | 213 | `result-track:ebe6a65ed7f5e703f7d0a9c6dc8b3509b8f503e1d9fb5818a4b3f10140383164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
