# Verification target: GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01a3bb2079fcdfa7035c6cd1bf270c1ac3b3a33d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01a3bb2079fcdfa7035c6cd1bf270c1ac3b3a33d`.

Source path: `GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction`](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md) — import line 16; pinned internal source present.
- `Mathlib.NumberTheory.MulChar.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Ideal.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [quotientFintype](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/quotientfintype--d3680d19760faa8c0f3c9754.md) | 29 | `declaration-track:d3680d19760faa8c0f3c9754b4b3ef4f4d8c685d3155b0acb7695b1866823bc3` |
| 2 | `instance` | [quotientField](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/quotientfield--de65028535f87b5d3f1f373d.md) | 32 | `declaration-track:de65028535f87b5d3f1f373d594460ec93ab5b4e3504ce7547a00fae47554df7` |
| 3 | `theorem` | [restrictedRoots_surjective](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/restrictedroots-surjective--4c385cfd176fd3cfc1c03cc4.md) | 36 | `result-track:4c385cfd176fd3cfc1c03cc4ec6f6ffc585a5900e91877a968def4f140bdc186` |
| 4 | `def` | [restrictedRootsEquiv](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/restrictedrootsequiv--fa3f479ea7893891bb849c5f.md) | 50 | `declaration-track:fa3f479ea7893891bb849c5f76cbc39082218e260a5cc40cceffd5e4453b8fae` |
| 5 | `theorem` | [card_sub_one_div_three](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/card-sub-one-div-three--f1ad8455718fadf675ce3ab1.md) | 62 | `result-track:f1ad8455718fadf675ce3ab109021fdbfd3865c0114de87d5d637b5b4c2587ae` |
| 6 | `def` | [cubicExponent](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/cubicexponent--883326e04735397ef6ecb5fd.md) | 71 | `declaration-track:883326e04735397ef6ecb5fdaacb83cfc9df5d254f00c00e83457f9ac7d7b33e` |
| 7 | `theorem` | [cubicExponent_pos](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/cubicexponent-pos--3099d78b1707f0057e9254e1.md) | 73 | `result-track:3099d78b1707f0057e9254e196554064bad6ac280a22ee2cab8521e0f302c9ad` |
| 8 | `def` | [eulerToRoots](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/eulertoroots--e89b31f81fe29ca5dcde9e59.md) | 81 | `declaration-track:e89b31f81fe29ca5dcde9e5984d5f496dfadf36bfd8d9746d735452a2f315e03` |
| 9 | `def` | [residueChar](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/residuechar--f01bea056603d664e0674698.md) | 94 | `declaration-track:f01bea056603d664e06746984d816ac7de496d37822df235b06705fb70c0d7ee` |
| 10 | `theorem` | [residueChar_reduce_unit](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/residuechar-reduce-unit--cffa2804a979b1f5afb2b5d8.md) | 100 | `result-track:cffa2804a979b1f5afb2b5d85b4ec82a8a83cbe7deac80aed7124049bb008c88` |
| 11 | `theorem` | [residueChar_pow_three](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/residuechar-pow-three--73529fda57b0dae3a4790578.md) | 115 | `result-track:73529fda57b0dae3a47905784313b54315cf0a0f357f89584640332f1df3b03a` |
| 12 | `def` | [cubicChar](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/cubicchar--b84a278566d4c7f84b445c5b.md) | 127 | `declaration-track:b84a278566d4c7f84b445c5b7c94b2d6465d463552f5b1c03940c968a9d7e0af` |
| 13 | `theorem` | [cubicChar_reduce](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/cubicchar-reduce--8250084157d20788e49b3b83.md) | 135 | `result-track:8250084157d20788e49b3b83ff4ce2e77c8b96ef18c449107bda6c60cd412120` |
| 14 | `theorem` | [cubicChar_pow_three](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/cubicchar-pow-three--b615c032603e0dae39a4ebcc.md) | 155 | `result-track:b615c032603e0dae39a4ebccbecc6ca7d8c88dafc25700f210053198d0473b9c` |
| 15 | `theorem` | [cubicChar_ne_one](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/cubicchar-ne-one--550defd634727da06226f9f9.md) | 163 | `result-track:550defd634727da06226f9f964a7bc2d84e24bb3b785f03237467b0a39dc1d0c` |
| 16 | `theorem` | [cubicChar_order](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/declarations/cubicchar-order--60c37cff69ce7f7eb7b2d764.md) | 184 | `result-track:60c37cff69ce7f7eb7b2d7647486a2f98f0ec50f4c17a76bee6ad727ce09d3cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
