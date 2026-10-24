# Verification target: GRWTSK.Algebra.GroupTheory.ULift.Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67036af88290e8378f50bdff4c32187dbf77caaf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67036af88290e8378f50bdff4c32187dbf77caaf`.

Source path: `GRWTSK/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean/declarations/mulzerooneclass--ecd18ca89ee8081c49eef90b.md) | 25 | `declaration-track:ecd18ca89ee8081c49eef90bb46f23a321df8e3459608c0df16c36bf4eb98f32` |
| 2 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean/declarations/monoidwithzero--fb9814d7ce14a0cf460e5d14.md) | 28 | `declaration-track:fb9814d7ce14a0cf460e5d14fe6e36a3ff93ea2753bc0651394155a61133780b` |
| 3 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean/declarations/commmonoidwithzero--08d08b24a385d20345e51563.md) | 31 | `declaration-track:08d08b24a385d20345e515636d3c8efa798985c75992a95f65d9a403b35d2472` |
| 4 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean/declarations/groupwithzero--0a4541a6b9c686d1e97a7fe7.md) | 34 | `declaration-track:0a4541a6b9c686d1e97a7fe72098383843b17147770f80ff0715b97a2f802fdf` |
| 5 | `instance` | [commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4.lean/declarations/commgroupwithzero--7f2122cca898ab3e512973b5.md) | 38 | `declaration-track:7f2122cca898ab3e512973b59a89d512a6127d48e7662038b592e1786329765a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
