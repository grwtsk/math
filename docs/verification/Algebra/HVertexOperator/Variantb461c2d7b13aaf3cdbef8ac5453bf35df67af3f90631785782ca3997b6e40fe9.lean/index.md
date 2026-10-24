# Verification target: GRWTSK.Algebra.HVertexOperator.Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1278dd6e63c8dd22399d679a238dd374e4b01ac",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/index.md) · [Full source](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1278dd6e63c8dd22399d679a238dd374e4b01ac`.

Source path: `GRWTSK/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Multiplication` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HVertexOperator](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/hvertexoperator--eb05c4316a711cf9b306ecb4.md) | 50 | `declaration-track:eb05c4316a711cf9b306ecb437ac2c4f760f336d0234bca4a9ed6da53a405034` |
| 2 | `theorem` | [ext](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/ext--682a83eb2d99b173effe6a20.md) | 61 | `result-track:682a83eb2d99b173effe6a20704f9376df0d7d37c6ed61330da1af2404303714` |
| 3 | `def` | [coeff](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/coeff--e93ea3aae4b338f82f62c059.md) | 67 | `declaration-track:e93ea3aae4b338f82f62c059d28c89e434160ed9ed7be835d716f40b6ae44790` |
| 4 | `theorem` | [coeff_isPWOsupport](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/coeff-ispwosupport--00ce9abe222f507b26192ef3.md) | 73 | `result-track:00ce9abe222f507b26192ef3edc7c52e11ba90889d210bb1a62f67abb183ccc5` |
| 5 | `theorem` | [coeff_inj](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/coeff-inj--ba822ade51c9b1aa1f54c149.md) | 78 | `result-track:ba822ade51c9b1aa1f54c149ec5b0beb24c833ed2deb45cf3d67d6ef126c72e0` |
| 6 | `def` | [of_coeff](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/of-coeff--340f670cc4d19d7dc780201e.md) | 86 | `declaration-track:340f670cc4d19d7dc780201ef6e420171c3fbc10c9e9ca8f184fc7f6fade5e1d` |
| 7 | `theorem` | [coeff_add](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/coeff-add--70303dbd7a0902f364c53486.md) | 93 | `result-track:70303dbd7a0902f364c53486cb0b85c031b893e101cbfa159ebf38935df3683c` |
| 8 | `theorem` | [coeff_smul](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/coeff-smul--4ed2349ba2c1170f40c7c6f9.md) | 100 | `result-track:4ed2349ba2c1170f40c7c6f9a16174cced705638ae118de3be289dd9d47ace93` |
| 9 | `def` | [compHahnSeries](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/comphahnseries--65221b17ec4ecab9d627b94c.md) | 119 | `declaration-track:65221b17ec4ecab9d627b94c26eaeeee92dd53f970fbda1ad2914c7b5dac6b82` |
| 10 | `theorem` | [compHahnSeries_add](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/comphahnseries-add--5b1103a75be126576e4ee560.md) | 130 | `result-track:5b1103a75be126576e4ee5608574461cd2a0dfc9c4477cd8fd6e2f3cb8bab985` |
| 11 | `theorem` | [compHahnSeries_smul](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/comphahnseries-smul--8ef69e7c4e55dc43be7fdb38.md) | 137 | `result-track:8ef69e7c4e55dc43be7fdb387d1205f1ffa7a7d2f5b4460ba383b0d284c1ed65` |
| 12 | `def` | [comp](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/comp--04d29dca54d697c1d364f718.md) | 145 | `declaration-track:04d29dca54d697c1d364f7180a1b0d0607614122bcbdbf6c7a779446f063a513` |
| 13 | `theorem` | [coeff_comp](../../../../mathematics/Algebra/HVertexOperator/Variantb461c2d7b13aaf3cdbef8ac5453bf35df67af3f90631785782ca3997b6e40fe9.lean/declarations/coeff-comp--da31a2e8a02add00f982bb2b.md) | 159 | `result-track:da31a2e8a02add00f982bb2b286442be870677f1c519426131ab2060bce0dde9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
