# Verification target: GRWTSK.Algebra.LinearAlgebra.FixedSubmodule.Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b1cdfc2c6c8c5b997c3e0c25115acb33875ee30",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b1cdfc2c6c8c5b997c3e0c25115acb33875ee30`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedsubmodule--0644debd6c0989d574c45df0.md) | 39 | `declaration-track:0644debd6c0989d574c45df06091b3e24cecf5798a9d8a95c012b9fb05b9f0d6` |
| 2 | `theorem` | [mem_fixedSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/mem-fixedsubmodule-iff--8b1f2f3784b55d7d698727ee.md) | 46 | `result-track:8b1f2f3784b55d7d698727ee986d4fb9df70f0ba2ee6e7a64d3fd7fd10ce2346` |
| 3 | `theorem` | [fixedSubmodule_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedsubmodule-eq-ker--95bee3c6ea950a54ad277406.md) | 50 | `result-track:95bee3c6ea950a54ad2774061431524ee277f7436bb26e51a9f50d66ecff6423` |
| 4 | `theorem` | [fixedSubmodule_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedsubmodule-eq-top-iff--b804a95e489951e4272d7d3b.md) | 55 | `result-track:b804a95e489951e4272d7d3b19a7e53a6151d02e501a7a63fc33f384f82c171a` |
| 5 | `theorem` | [fixedSubmodule_inf_fixedSubmodule_le_comp](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedsubmodule-inf-fixedsubmodule-le-comp--071400f6b302d9f97987df28.md) | 59 | `result-track:071400f6b302d9f97987df283ba1883a16957de133067ae1d05743a75f3bb050` |
| 6 | `theorem` | [fixedSubmodule_comp_inf_fixedSubmodule_le](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedsubmodule-comp-inf-fixedsubmodule-le--4064e2ab07425442cb45d4eb.md) | 63 | `result-track:4064e2ab07425442cb45d4ebafca8f188e5af57135ee910ccf686389bb9b2be4` |
| 7 | `theorem` | [fixedSubmodule_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedsubmodule-eq-top-iff--2e5e3c5ae32ed5eed5358081.md) | 79 | `result-track:2e5e3c5ae32ed5eed53580817d638db65cdf58ba0250477d4e711ce26ddc8d97` |
| 8 | `theorem` | [mem_stabilizer_submodule_of_le_fixedSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/mem-stabilizer-submodule-of-le-fixedsubmodule--8f4a4a654675d878eb52f300.md) | 83 | `result-track:8f4a4a654675d878eb52f3004b2850fc789f0a96bb0772d9990ccc1f342fb72b` |
| 9 | `theorem` | [mem_stabilizer_fixedSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/mem-stabilizer-fixedsubmodule--971593e783d8f3927e928fc4.md) | 98 | `result-track:971593e783d8f3927e928fc48f6430727173581a3f3cbe200035098ae40414b3` |
| 10 | `theorem` | [map_eq_of_mem_fixingSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/map-eq-of-mem-fixingsubgroup--87628353ef840d33956b42e3.md) | 102 | `result-track:87628353ef840d33956b42e31b9f2d14e802a66aa44f0c268b12dcf63794d8ce` |
| 11 | `def` | [reduce](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/reduce--f723864a0002b414894845f8.md) | 117 | `declaration-track:f723864a0002b414894845f88efa9526ea91d7296c47bddbb54a148f68d93fd5` |
| 12 | `theorem` | [reduce_mk](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/reduce-mk--1875b926c604904b28d7ddc6.md) | 126 | `result-track:1875b926c604904b28d7ddc68eeebb84ff34acc761e40c37c44d40f23bad2911` |
| 13 | `theorem` | [reduce_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/reduce-mkq--cd5b2faf10564d6be7489a44.md) | 130 | `result-track:cd5b2faf10564d6be7489a442e18394f086726d01526e4e86b6fe4c8319b2be7` |
| 14 | `def` | [fixedReduce](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedreduce--5ee3054b1abe44d42a064a25.md) | 136 | `declaration-track:5ee3054b1abe44d42a064a2555392076c60cdeab24cdc6e7cb541f62c9407a15` |
| 15 | `theorem` | [fixedReduce_mk](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedreduce-mk--2b8af6542effa6e8b1b05402.md) | 141 | `result-track:2b8af6542effa6e8b1b05402397705b6aaed353fe2e8624d32e9056e18658718` |
| 16 | `theorem` | [fixedReduce_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedreduce-mkq--cf06aa7b015ed2b7c574a93d.md) | 146 | `result-track:cf06aa7b015ed2b7c574a93d117347a4c33db436dfb6d68d30e0a4a3e373e7d2` |
| 17 | `theorem` | [fixedReduce_eq_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedreduce-eq-smul-iff--af8ae0b555c8df40f76fe849.md) | 150 | `result-track:af8ae0b555c8df40f76fe849012ca3538aa7ae84b6bb7ff4f8450b509ac9820c` |
| 18 | `theorem` | [fixedReduce_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant21406bbcc0ccc0b834eaf59964767c95208bf4b9d40213dc3a5f45b51d3da6eb.lean/declarations/fixedreduce-eq-one--46d6a2c5fa7d19470b26109c.md) | 161 | `result-track:46d6a2c5fa7d19470b26109ce0b7016f95593965d5036844a36735b132fc3e73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
