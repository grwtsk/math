# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Units.Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd62788a793d31dd2ac2f2d2c2adc16a8c450a45",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd62788a793d31dd2ac2f2d2c2adc16a8c450a45`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [units_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/units-natabs--3acfd9b8909c0dc3ca212bb3.md) | 22 | `result-track:3acfd9b8909c0dc3ca212bb307ec6c6ef5cad62560b62a4a22a611d1ef2229d2` |
| 2 | `theorem` | [units_eq_one_or](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/units-eq-one-or--61e4262fcd2b473f75bb6a97.md) | 29 | `result-track:61e4262fcd2b473f75bb6a972278c15b2825e31d3302c2fe151a377b4907d90d` |
| 3 | `theorem` | [isUnit_eq_one_or](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/isunit-eq-one-or--1d8f263a5c46d302188efdb1.md) | 33 | `result-track:1d8f263a5c46d302188efdb1cc99b2a52690d1122b930f1ed6c1d93280a755ac` |
| 4 | `theorem` | [isUnit_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/isunit-iff--a469f95d0c7a4042691f6b5e.md) | 37 | `result-track:a469f95d0c7a4042691f6b5ea1797c0f8cf2ca5b76fa6139e4e0ee7fcf5d414f` |
| 5 | `theorem` | [isUnit_eq_or_eq_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/isunit-eq-or-eq-neg--15597b5d13d476a70514824a.md) | 44 | `result-track:15597b5d13d476a70514824a540b0d19ff9bc947bb596b673cff8baaea7a1b4d` |
| 6 | `theorem` | [eq_one_or_neg_one_of_mul_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/eq-one-or-neg-one-of-mul-eq-one--d25d9270a437215e590f0065.md) | 50 | `result-track:d25d9270a437215e590f00652d784de210a612cc9338833b97f680446a231a63` |
| 7 | `theorem` | [eq_one_or_neg_one_of_mul_eq_one'](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/eq-one-or-neg-one-of-mul-eq-one--2d0b6b5e60623b7fa4f483ef.md) | 54 | `result-track:2d0b6b5e60623b7fa4f483ef929fde41bf2ec52da3368061dba2dfb9f4fc12a4` |
| 8 | `theorem` | [eq_of_mul_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/eq-of-mul-eq-one--8eb2adedbc23b4b8ee1a9e07.md) | 61 | `result-track:8eb2adedbc23b4b8ee1a9e07808fc35d706b63a16b2b53d82ca7141a29259763` |
| 9 | `theorem` | [mul_eq_one_iff_eq_one_or_neg_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/mul-eq-one-iff-eq-one-or-neg-one--8fdeb83ef84e8ce292e22932.md) | 66 | `result-track:8fdeb83ef84e8ce292e22932e7c1c76d0b68918611ea7da46bba066404c6fec5` |
| 10 | `theorem` | [eq_one_or_neg_one_of_mul_eq_neg_one'](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one--50e6f09e32c44ecf55067083.md) | 73 | `result-track:50e6f09e32c44ecf55067083a9b849dd2ebf2f3f7622c3aaf4b28b2f631f3286` |
| 11 | `theorem` | [mul_eq_neg_one_iff_eq_one_or_neg_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/mul-eq-neg-one-iff-eq-one-or-neg-one--51fd1393efca0aa5bf92c9a2.md) | 80 | `result-track:51fd1393efca0aa5bf92c9a293f03fb5411271feaa9e6fe6fa8d082ea597fb38` |
| 12 | `theorem` | [isUnit_iff_natAbs_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/isunit-iff-natabs-eq--4e546396218a1edaa342f163.md) | 87 | `result-track:4e546396218a1edaa342f1631f3ed620460e08285b5b6affd0160e12f0733aa8` |
| 13 | `theorem` | [ofNat_isUnit](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/ofnat-isunit--7ffae05bac8624059e3aa483.md) | 97 | `result-track:7ffae05bac8624059e3aa48359ba8d2558cc1d27962b19786fa3c77f86a13981` |
| 14 | `theorem` | [isUnit_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/isunit-mul-self--230fb53cc54cf377c97bf348.md) | 101 | `result-track:230fb53cc54cf377c97bf34808d967798c3750c777147fa5b7c33a71ba6e0d96` |
| 15 | `theorem` | [isUnit_add_isUnit_eq_isUnit_add_isUnit](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/isunit-add-isunit-eq-isunit-add-isunit--358aa89f69fe1beded4837e4.md) | 106 | `result-track:358aa89f69fe1beded4837e43c70d45b7c858b86ba2bc4847c2bef1de8b370ee` |
| 16 | `theorem` | [eq_one_or_neg_one_of_mul_eq_neg_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one--9545f61ef93b3fcada6736c8.md) | 114 | `result-track:9545f61ef93b3fcada6736c845e5c944e96c1edcfbfc4b1ab1a0d522d6dd96f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
