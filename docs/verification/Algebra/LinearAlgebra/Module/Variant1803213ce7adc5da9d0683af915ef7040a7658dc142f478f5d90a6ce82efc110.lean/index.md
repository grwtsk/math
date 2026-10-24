# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c16cfcda1bbace1e4924272bc680d111823a2467",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c16cfcda1bbace1e4924272bc680d111823a2467`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.FinitePresentation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Torsion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.EquationalCriterion` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_mkQ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/map-mkq-eq--cee90a9176520df05b3078d9.md) | 51 | `result-track:cee90a9176520df05b3078d987fac8e6abb7df40bce840efcd57ac786f9ecc5e` |
| 2 | `theorem` | [map_mkQ_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/map-mkq-eq-top--7698a557e6c43c2e4c572e81.md) | 62 | `result-track:7698a557e6c43c2e4c572e81f2e4edd03571c9af3c99e41f07447c1c96a075af` |
| 3 | `theorem` | [map_tensorProduct_mk_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/map-tensorproduct-mk-eq-top--7878a879009f514a9871dca2.md) | 66 | `result-track:7878a879009f514a9871dca237013a226a86fcc06e2257dc3cf9b0c7a38d98a8` |
| 4 | `theorem` | [subsingleton_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/subsingleton-tensorproduct--6d6997ea724beec66bce08ef.md) | 86 | `result-track:6d6997ea724beec66bce08ef6ca78073f3b04e98c0fe3956c139ab285e15929b` |
| 5 | `theorem` | [span_eq_top_of_tmul_eq_basis](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/span-eq-top-of-tmul-eq-basis--ee8ee4ec3328022768abef5d.md) | 92 | `result-track:ee8ee4ec3328022768abef5dc40f8b1cc27b56bfb8a6cae2de117e8386a8dc49` |
| 6 | `theorem` | [lTensor_injective_of_exact_of_exact_of_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/ltensor-injective-of-exact-of-exact-of-rtensor-injective--b1f5f4a8300f31759c0fb871.md) | 123 | `result-track:b1f5f4a8300f31759c0fb871981528bec07989a116cf30e05cee29ea465fc4cc` |
| 7 | `lemma` | [exists_basis_of_basis_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/exists-basis-of-basis-basechange--2a60a78f65ca0249e15fb9d7.md) | 161 | `result-track:2a60a78f65ca0249e15fb9d7a336d6ed361d051c843e41ef780ae9d1f118536a` |
| 8 | `lemma` | [exists_basis_of_span_of_maximalIdeal_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/exists-basis-of-span-of-maximalideal-rtensor-injective--e89fe73714927d514dd1f965.md) | 218 | `result-track:e89fe73714927d514dd1f965c553abb94ad50b450e86e7c99aecf9f77a0e8c6b` |
| 9 | `lemma` | [exists_basis_of_span_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/exists-basis-of-span-of-flat--4a076eda7bb5ef54699a932b.md) | 233 | `result-track:4a076eda7bb5ef54699a932b78b30e3fc2d470f78772a8b79c6ec4f4836b2a04` |
| 10 | `theorem` | [free_of_maximalIdeal_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/free-of-maximalideal-rtensor-injective--67085b61643756b0ad064ef9.md) | 243 | `result-track:67085b61643756b0ad064ef9c77a069ca74b24468226fde801ed87f387781f27` |
| 11 | `theorem` | [IsLocalRing.linearIndependent_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/islocalring-linearindependent-of-flat--7dbf83bf4661c03122029b3b.md) | 249 | `result-track:7dbf83bf4661c03122029b3b4a700b15e46900ce4714e1e81a477f5c4e6747ae` |
| 12 | `theorem` | [free_of_flat_of_isLocalRing](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/free-of-flat-of-islocalring--75cc8d98a2bbe9581bc5491d.md) | 286 | `result-track:75cc8d98a2bbe9581bc5491d11b97105816920794f9a9d47ca1541331fc5a592` |
| 13 | `theorem` | [free_of_lTensor_residueField_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/free-of-ltensor-residuefield-injective--438aa5944fdc2fa2749ddb4f.md) | 298 | `result-track:438aa5944fdc2fa2749ddb4f0ff5a26dba8a2b56f17e5addd3849baa0f1aa5f1` |
| 14 | `theorem` | [IsLocalRing.split_injective_iff_lTensor_residueField_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/declarations/islocalring-split-injective-iff-ltensor-residuefield-injective--c0b1e16aa0b5dfb8ebeb02c0.md) | 318 | `result-track:c0b1e16aa0b5dfb8ebeb02c0ed4a4cc6ce89dd91a5b93c2093f7f1a8c970153c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
