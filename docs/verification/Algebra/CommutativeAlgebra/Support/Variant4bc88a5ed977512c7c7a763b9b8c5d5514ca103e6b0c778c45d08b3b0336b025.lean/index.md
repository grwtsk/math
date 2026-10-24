# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Support.Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19087d2e96845a8413370cb848d5d0e3886b5f54",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19087d2e96845a8413370cb848d5d0e3886b5f54`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [supDegree_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/supdegree-eq-natdegree--f2b1b33e8d39aeca253f37bd.md) | 42 | `result-track:f2b1b33e8d39aeca253f37bdf5495581b00a04c3bf24f6ccf7e24acefd58403c` |
| 2 | `theorem` | [le_natDegree_of_mem_supp](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/le-natdegree-of-mem-supp--f20f27685efc3b43aac85b8d.md) | 50 | `result-track:f20f27685efc3b43aac85b8d3d5e55c8a024801b6999b77710505c76fa91dcd2` |
| 3 | `theorem` | [supp_subset_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/supp-subset-range--714fe98c2dd77536f40b5c52.md) | 53 | `result-track:714fe98c2dd77536f40b5c524abd5f8dfce8dda54a021f7a435d35e1c6b2690c` |
| 4 | `theorem` | [supp_subset_range_natDegree_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/supp-subset-range-natdegree-succ--6fbe8098de3b800f3fbf0262.md) | 56 | `result-track:6fbe8098de3b800f3fbf0262eee55d7a5703592360c4e185d00f2c83237516ab` |
| 5 | `theorem` | [as_sum_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/as-sum-support--f8b8610c4f62f047e2dde498.md) | 59 | `result-track:f8b8610c4f62f047e2dde4982364c9468247abf2b8e2c18e42a3228fef8a77e6` |
| 6 | `theorem` | [as_sum_support_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/as-sum-support-c-mul-x-pow--03f953c69893c778d91c052b.md) | 62 | `result-track:03f953c69893c778d91c052ba9d8d98ac46f0f2ecc688c4b549f960dfeb5385a` |
| 7 | `theorem` | [sum_over_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/sum-over-range--d4f8a540fe3c5e175a7755fd.md) | 68 | `result-track:d4f8a540fe3c5e175a7755fd2e189ca0efce34f5940ec3aa88e1ad471f34ec4d` |
| 8 | `theorem` | [sum_over_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/sum-over-range--8e176e912518668b1e4ff1fe.md) | 77 | `result-track:8e176e912518668b1e4ff1fe3751a43e517e5c9ff48aaa50aa0418285880d9c9` |
| 9 | `theorem` | [sum_fin](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/sum-fin--91d97184eb701b91ddeea8c8.md) | 82 | `result-track:91d97184eb701b91ddeea8c846740bd992db6a782cd89d8ad77872fee5a4a47d` |
| 10 | `theorem` | [as_sum_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/as-sum-range--f63f051522bbe7c1af8b5199.md) | 91 | `result-track:f63f051522bbe7c1af8b51992a1e99990779f206f5ec9d10b4bc636b0ec370ed` |
| 11 | `theorem` | [as_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/as-sum-range--e831c29d7be4d6bef8686390.md) | 95 | `result-track:e831c29d7be4d6bef8686390ef49c0851b0ffb7f973ead52fd0a5893c95c2bd2` |
| 12 | `theorem` | [as_sum_range_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/as-sum-range-c-mul-x-pow--a88ef9c9aab9a5d7804252cb.md) | 98 | `result-track:a88ef9c9aab9a5d7804252cb368b288ee032073405ec5e7f06139dd87ca9b509` |
| 13 | `theorem` | [mem_support_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/mem-support-c-mul-x-pow--5f69fd9a9772e20adddbb9dd.md) | 102 | `result-track:5f69fd9a9772e20adddbb9dd89aa36cec4f965e0372f1ae39c31658e4b4e0938` |
| 14 | `theorem` | [card_support_C_mul_X_pow_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/card-support-c-mul-x-pow-le-one--567abc48fc13bfa31a66f3bb.md) | 105 | `result-track:567abc48fc13bfa31a66f3bba6cc78a22d1dc0991ed795e06b43ac9ca1e31dc1` |
| 15 | `theorem` | [card_supp_le_succ_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/card-supp-le-succ-natdegree--51f406f62bb081e7a5bc9d17.md) | 109 | `result-track:51f406f62bb081e7a5bc9d173142413b5c95217202acf1e3393880a56dfb4c2b` |
| 16 | `theorem` | [le_degree_of_mem_supp](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/le-degree-of-mem-supp--522f9edb67f0880a0c19a710.md) | 113 | `result-track:522f9edb67f0880a0c19a7106ba400ac4dc19df80f5ca70d3fb457f1886ce878` |
| 17 | `theorem` | [nonempty_support_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/nonempty-support-iff--033c6c9942cf6d8c8b74e8f4.md) | 116 | `result-track:033c6c9942cf6d8c8b74e8f40ce941efdde7ff8727f518cf4628d0984d918870` |
| 18 | `theorem` | [natDegree_mem_support_of_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/natdegree-mem-support-of-nonzero--b052bca9fd6a09433d96ae97.md) | 125 | `result-track:b052bca9fd6a09433d96ae97f3e1b030cb3b077c77d5e48fd787e1bcb9525b69` |
| 19 | `theorem` | [natDegree_eq_support_max'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025.lean/declarations/natdegree-eq-support-max--4bfe81a0b025f2a2024ec60f.md) | 129 | `result-track:4bfe81a0b025f2a2024ec60f3e227b4ddeb2634988a8695aa9b256bf4ba64e2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
