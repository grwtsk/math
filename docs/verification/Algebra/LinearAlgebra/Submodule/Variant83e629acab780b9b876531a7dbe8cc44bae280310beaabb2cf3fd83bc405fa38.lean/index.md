# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23c65e70b77d9b9424a484eb57b0afb7c19f9bf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23c65e70b77d9b9424a484eb57b0afb7c19f9bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/mem-submodule-iff--7e2cf18f1e25169fe2cd04d8.md) | 40 | `result-track:7e2cf18f1e25169fe2cd04d8f115633efe25dcdb79e2a5fc7920851b9301ebb2` |
| 2 | `theorem` | [mem_submodule_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/mem-submodule-iff--fdb248e2855951d4ecec8f04.md) | 49 | `result-track:fdb248e2855951d4ecec8f0447407a8a654f79c36dbd391e329b82cfeabaa26a` |
| 3 | `theorem` | [Basis.eq_bot_of_rank_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-eq-bot-of-rank-eq-zero--a75a3466103d24097f0fa654.md) | 69 | `result-track:a75a3466103d24097f0fa654f95d1dde5c547a936dc4c5b3401ae23626979bc6` |
| 4 | `def` | [Submodule.inductionOnRankAux](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/submodule-inductiononrankaux--09ea75fbd19c89cf3f4d0801.md) | 92 | `declaration-track:09ea75fbd19c89cf3f4d08015456528b881ae164900770cd3b4b187dd9ce3d52` |
| 5 | `lemma` | [Basis.mem_center_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-mem-center-iff--7a52f325b5df78e348ef0652.md) | 127 | `result-track:7a52f325b5df78e348ef06521e6543f7061d18589ab381c4251aa94f31773c2e` |
| 6 | `def` | [Basis.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-restrictscalars--3778d2c1d01ec956f298febc.md) | 185 | `declaration-track:3778d2c1d01ec956f298febc042154e4acceb8ea3f2ececa96ef7f1bb86df008` |
| 7 | `theorem` | [Basis.restrictScalars_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-restrictscalars-apply--5ae8c9dabc7a0ce8e8ba39a5.md) | 189 | `result-track:5ae8c9dabc7a0ce8e8ba39a57aa2dbe54aafa027b386e9e9042bfbfec3b1f6c1` |
| 8 | `theorem` | [Basis.restrictScalars_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-restrictscalars-repr-apply--8f0f437ffe817e844ae824a3.md) | 193 | `result-track:8f0f437ffe817e844ae824a394137b857244519439d390e91d24a4c8bd966b0a` |
| 9 | `theorem` | [Basis.mem_span_iff_repr_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-mem-span-iff-repr-mem--91df7ebc5791474ec190755b.md) | 207 | `result-track:91df7ebc5791474ec190755b4088e80dd30222c9cb815e738673a9901049ef31` |
| 10 | `def` | [Basis.addSubgroupOfClosure](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-addsubgroupofclosure--0a8b52cbcf1c5711c6e57b56.md) | 229 | `declaration-track:0a8b52cbcf1c5711c6e57b56fed15baec11d49a36c38e0012c2998b662358d16` |
| 11 | `theorem` | [Basis.addSubgroupOfClosure_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-addsubgroupofclosure-apply--db62a4db575485b5c3f8dc62.md) | 236 | `result-track:db62a4db575485b5c3f8dc62bcb40112ecf2626ec60b836e945b4bf800c5e3de` |
| 12 | `theorem` | [Basis.addSubgroupOfClosure_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant83e629acab780b9b876531a7dbe8cc44bae280310beaabb2cf3fd83bc405fa38.lean/declarations/basis-addsubgroupofclosure-repr-apply--3ae5e04811c261e0ba40d556.md) | 241 | `result-track:3ae5e04811c261e0ba40d556443391c3e7dbf951aa49a85e78c765bfcb49a164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
