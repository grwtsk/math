# Verification target: GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5584866341f069a616c24df73eaa7b0854d33f04",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5584866341f069a616c24df73eaa7b0854d33f04`.

Source path: `GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals`](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/index.md) — import line 16; pinned internal source present.
- `Mathlib.NumberTheory.NumberField.Cyclotomic.Ideal` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/instance--faa2075f159a77c35036189d.md) | 23 | `declaration-track:faa2075f159a77c35036189dfa40ecc73e6b3088a195ef8c49da715826eca7f3` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/instance--41f791c49ea755a4f2afd998.md) | 24 | `declaration-track:41f791c49ea755a4f2afd998b1f2ee62fd1afc30d97bfe5609fdda0485645af9` |
| 3 | `def` | [omega](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/omega--ff8b34aae8a57b8226e5f32d.md) | 26 | `declaration-track:ff8b34aae8a57b8226e5f32ded83c4d0eb0231f31af3ea3c7b0722ad12ef1094` |
| 4 | `def` | [lambda](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/lambda--0b61b17c592783d7f34575c4.md) | 27 | `declaration-track:0b61b17c592783d7f34575c48b7dfe84e1ca0e01eb851e1d8b0c6e4c8cffac26` |
| 5 | `lemma` | [omega_primitive](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/omega-primitive--554e6960f77d8c0b1fd47c09.md) | 29 | `result-track:554e6960f77d8c0b1fd47c0962bc07e7c2ebd6e9f7e1415afaeb56cdba5579a2` |
| 6 | `lemma` | [lambda_ne_zero](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/lambda-ne-zero--cb50c82499fbd1a18e8c05d9.md) | 32 | `result-track:cb50c82499fbd1a18e8c05d97dc51d99359cb7c99915a0bc8d81a782385bd2fc` |
| 7 | `theorem` | [omega_reduced_primitive](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/omega-reduced-primitive--9ef3fe2c2a8fdc2b49ea8213.md) | 35 | `result-track:9ef3fe2c2a8fdc2b49ea82136a9fd01401fef651b7a892d531f76714ac758f5d` |
| 8 | `def` | [ramifiedIdeal](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/ramifiedideal--bc9bcb1da7dc737b92565e66.md) | 58 | `declaration-track:bc9bcb1da7dc737b92565e666807740141438e45399ec2cb704ad1e165a9473c` |
| 9 | `lemma` | [lambda_prime](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/lambda-prime--b4d4fce871246700d27cb19a.md) | 60 | `result-track:b4d4fce871246700d27cb19accc00086590a6b026247a94272d5b6a60ca894a6` |
| 10 | `lemma` | [ramifiedIdeal_absNorm](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/ramifiedideal-absnorm--acb8948ff79256290248054e.md) | 63 | `result-track:acb8948ff79256290248054efb1e28f9d797d136d96d52a21bc552ed5ee9adce` |
| 11 | `instance` | [ramifiedIdeal_isPrime](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/ramifiedideal-isprime--1b1e5c6a6d546acf01ad24e7.md) | 71 | `declaration-track:1b1e5c6a6d546acf01ad24e7c2555334689ea3290e5bb6afef6dd534f4364fbb` |
| 12 | `lemma` | [ramifiedIdeal_ne_zero](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/ramifiedideal-ne-zero--e94d18e1319255b8b0272e5b.md) | 75 | `result-track:e94d18e1319255b8b0272e5bb79e4d60662a49f53019afd62b2d645122621d9f` |
| 13 | `instance` | [ramifiedIdeal_isMaximal](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/ramifiedideal-ismaximal--e6f1e2d4e95f60351c46f944.md) | 81 | `declaration-track:e6f1e2d4e95f60351c46f944f891a2f00422c77082feea22f8255188cee3b395` |
| 14 | `lemma` | [ramifiedIdeal_proper](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/ramifiedideal-proper--6f13cf96c3987ba57667fdbf.md) | 84 | `result-track:6f13cf96c3987ba57667fdbf4369f88f61221c18c47ccb5da82e381ee3576df4` |
| 15 | `lemma` | [lambda_mem_ramifiedIdeal](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/lambda-mem-ramifiedideal--e3a0455c7bb5abcfa162d19d.md) | 86 | `result-track:e3a0455c7bb5abcfa162d19ded5955ba3a57f0ff564daae9f1f56bac2e1419d3` |
| 16 | `lemma` | [three_mem_ramifiedIdeal](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/three-mem-ramifiedideal--76251bd60c09c85d2fd840db.md) | 88 | `result-track:76251bd60c09c85d2fd840db4115959e346c01b0cf1f71175c621b76cdd5a69f` |
| 17 | `lemma` | [two_not_mem_ramifiedIdeal](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/two-not-mem-ramifiedideal--2328599c9955c248f30eee83.md) | 92 | `result-track:2328599c9955c248f30eee83dfe4af26c16f195d20920d4022afe2438497654d` |
| 18 | `lemma` | [omega_ramified_eq_one](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/omega-ramified-eq-one--b8ac4d1d9c9cd5b5786d2a7c.md) | 98 | `result-track:b8ac4d1d9c9cd5b5786d2a7ce47158a9af9ab11ebe37c8ab29af166c560b7859` |
| 19 | `lemma` | [omega_ramified_not_primitive](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/omega-ramified-not-primitive--74f98d440e8797c463c9436d.md) | 103 | `result-track:74f98d440e8797c463c9436d13d6d86afeb918deb6e6358d4f7a464f2b9fcccc` |
| 20 | `theorem` | [exists_good_maximal_above_two](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/exists-good-maximal-above-two--984e8bd89e8098b6b8d51f5c.md) | 108 | `result-track:984e8bd89e8098b6b8d51f5cd21a4a1510b3d716ce72ae80bd58cfb024486e66` |
| 21 | `theorem` | [ramified_primary_generator_obstruction](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/declarations/ramified-primary-generator-obstruction--b499f4c092f55f59318dd4bc.md) | 126 | `result-track:b499f4c092f55f59318dd4bc63d8def6333da476969b6ceec0081c24e1b3c28c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
