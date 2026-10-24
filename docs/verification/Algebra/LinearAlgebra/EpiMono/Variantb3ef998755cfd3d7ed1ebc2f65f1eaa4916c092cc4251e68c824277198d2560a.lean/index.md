# Verification target: GRWTSK.Algebra.LinearAlgebra.EpiMono.Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1967a8ea1eb0617dad130638ac5048fca8dd237",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1967a8ea1eb0617dad130638ac5048fca8dd237`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/ker-eq-bot-of-mono--f58ddf2614b036911be04558.md) | 27 | `result-track:f58ddf2614b036911be0455859ab2c78226fa60b76a1935cca22d0bc95e6ccd2` |
| 2 | `theorem` | [range_eq_top_of_epi](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/range-eq-top-of-epi--0bb303879591951c30000ba3.md) | 31 | `result-track:0bb303879591951c30000ba385ef381a6af76160c90c9b07ae441af9b193bebc` |
| 3 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/mono-iff-ker-eq-bot--b272a7782aa1c5612525b166.md) | 35 | `result-track:b272a7782aa1c5612525b166949a8801448ceb562b840b993b3067bd872bb3be` |
| 4 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/mono-iff-injective--03f65e545a11ae0971baca6c.md) | 39 | `result-track:03f65e545a11ae0971baca6cac033ca7dcff135f567ae3f76b8c423e7baef36a` |
| 5 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/epi-iff-range-eq-top--e7afd74c64272358037d381b.md) | 42 | `result-track:e7afd74c64272358037d381b793ca3eae1968de7d39c508348b7d2ed2f5d49e1` |
| 6 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/epi-iff-surjective--38216b1dee014af7c3b0b8b0.md) | 46 | `result-track:38216b1dee014af7c3b0b8b0458e4867458dacb919a32ac24616ab354603b1b0` |
| 7 | `def` | [uniqueOfEpiZero](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/uniqueofepizero--dfe1697dc9d8ccf24ea2f7ba.md) | 50 | `declaration-track:dfe1697dc9d8ccf24ea2f7bac5d62754e7650271e04cfa580904e30cae2b976e` |
| 8 | `instance` | [mono_as_hom'_subtype](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/mono-as-hom-subtype--50867aebce922ad8eef6811c.md) | 53 | `declaration-track:50867aebce922ad8eef6811c68db80a70c1475a8c6b6351b0cb7a7d12c6eedf3` |
| 9 | `instance` | [epi_as_hom''_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/epi-as-hom-mkq--91caab2514097d8ba6c2fcc8.md) | 56 | `declaration-track:91caab2514097d8ba6c2fcc8ff592a151abb6b80950cd4fd96367019fcb66036` |
| 10 | `instance` | [forget_preservesEpimorphisms](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/forget-preservesepimorphisms--60bc43c242f04127eea20694.md) | 59 | `declaration-track:60bc43c242f04127eea20694802b16b48f82b686cfd83285edc726516986f6e8` |
| 11 | `instance` | [forget_preservesMonomorphisms](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variantb3ef998755cfd3d7ed1ebc2f65f1eaa4916c092cc4251e68c824277198d2560a.lean/declarations/forget-preservesmonomorphisms--0f9f09fe4f162fee4d77d6bc.md) | 65 | `declaration-track:0f9f09fe4f162fee4d77d6bcb1b6648c4f2feb45c44482d78143d5d989829ac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
