# Verification target: GRWTSK.Algebra.GroupTheory.InjSurj.Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa97f2c4a8d63a4d86ecb79c4ec0e24172e031d8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa97f2c4a8d63a4d86ecb79c4ec0e24172e031d8`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Injective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-mulzeroclass--9c40410be77b41df5dedc54b.md) | 34 | `declaration-track:9c40410be77b41df5dedc54bcb1aad488619bb4a4c4af7720cfb64b506545160` |
| 2 | `abbrev` | [Function.Surjective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-surjective-mulzeroclass--32a0a095ff0dc6c494e0b062.md) | 44 | `declaration-track:32a0a095ff0dc6c494e0b0629548ff92ab9da0df0c2873703452a9f43a94eec3` |
| 3 | `theorem` | [Function.Injective.noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-nozerodivisors--77b7685d35603b2821b28b14.md) | 62 | `result-track:77b7685d35603b2821b28b1436fa99e7845a18a1dfc4264cbe69158a17614088` |
| 4 | `theorem` | [Function.Injective.isLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-isleftcancelmulzero--aa187bc36c281450c2f7be41.md) | 68 | `result-track:aa187bc36c281450c2f7be415f12e3dd2faf5c1d12e54a3cbb977a0cd57ca1a9` |
| 5 | `theorem` | [Function.Injective.isRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-isrightcancelmulzero--45b4864239f53bba0dc9b084.md) | 75 | `result-track:45b4864239f53bba0dc9b0842de38d1d95e167dcd7df874be7df8abca5d3e77e` |
| 6 | `theorem` | [Function.Injective.isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-iscancelmulzero--55b89e15899319d79174c5da.md) | 82 | `result-track:55b89e15899319d79174c5dabe706c456649cbba630c715a576bc2b52fa6b077` |
| 7 | `abbrev` | [Function.Injective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-mulzerooneclass--85be3dba20dc9d417cf40243.md) | 95 | `declaration-track:85be3dba20dc9d417cf4024348908f443489d05d72d40298388bb564a25fd7a0` |
| 8 | `abbrev` | [Function.Surjective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-surjective-mulzerooneclass--7d0796b1679989c0481a9fc5.md) | 102 | `declaration-track:7d0796b1679989c0481a9fc5fc4966076b567b59cb0b4138d8f8a531304d0160` |
| 9 | `abbrev` | [Function.Injective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-semigroupwithzero--7796d514c9a6ff6847ada816.md) | 113 | `declaration-track:7796d514c9a6ff6847ada816945cfc4f91f86e2eeeb137ea704ec55db02f1065` |
| 10 | `abbrev` | [Function.Surjective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-surjective-semigroupwithzero--62b6594cb24bb53085f00b3f.md) | 120 | `declaration-track:62b6594cb24bb53085f00b3f3f99e49f768c24938f646ff1a73d2c808123fd21` |
| 11 | `abbrev` | [Function.Injective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-monoidwithzero--f4a1b25eef3a3a643fc18476.md) | 131 | `declaration-track:f4a1b25eef3a3a643fc1847680253eb3f99da4db60d144c22fde3c2e141a08ae` |
| 12 | `abbrev` | [Function.Surjective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-surjective-monoidwithzero--3864e09fc556f00502636ef5.md) | 139 | `declaration-track:3864e09fc556f00502636ef5c95efd83c435b825163ec77a211341bc68bc222c` |
| 13 | `abbrev` | [Function.Injective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-commmonoidwithzero--655fbfcbb49dcd326016e487.md) | 147 | `declaration-track:655fbfcbb49dcd326016e4877fb94d0c19738e9095a57a20594f9d217a18631e` |
| 14 | `abbrev` | [Function.Surjective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-surjective-commmonoidwithzero--71c9fb2cce76e0e514fddc4b.md) | 155 | `declaration-track:71c9fb2cce76e0e514fddc4bb89abe78dd80848705663995f25cf5d4d9445009` |
| 15 | `abbrev` | [Function.Injective.cancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-cancelmonoidwithzero--d440de218a83217a94fd8252.md) | 169 | `declaration-track:d440de218a83217a94fd825240fe4af026c79a4ba343a18ee2269bd451c7ee2d` |
| 16 | `abbrev` | [Function.Injective.cancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-cancelcommmonoidwithzero--9f2385a85d524c64b6ac4158.md) | 187 | `declaration-track:9f2385a85d524c64b6ac415885cacd3afe558fd4bbb0ed184da1755ba640aeae` |
| 17 | `abbrev` | [Function.Injective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-groupwithzero--5d68fa4fd48aaf3567a4cab5.md) | 201 | `declaration-track:5d68fa4fd48aaf3567a4cab56f4c4339eb3fcfcddb150814a527464f38bbdbd5` |
| 18 | `abbrev` | [Function.Surjective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-surjective-groupwithzero--6a8d2185b6a195da0bce2d1c.md) | 215 | `declaration-track:6a8d2185b6a195da0bce2d1c60327ad6b2a799e1b2c6e3eac650479bc978d284` |
| 19 | `abbrev` | [Function.Injective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-injective-commgroupwithzero--2aed78d57ff5be7e244621d1.md) | 235 | `declaration-track:2aed78d57ff5be7e244621d1dbaca63d779cd7471f04934da12dd14c6d4c438c` |
| 20 | `def` | [Function.Surjective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/declarations/function-surjective-commgroupwithzero--70a1f2dbf0b1ecf53e9db6b0.md) | 244 | `declaration-track:70a1f2dbf0b1ecf53e9db6b0e023e0060219c278f673d21013a89c802da1bc54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
