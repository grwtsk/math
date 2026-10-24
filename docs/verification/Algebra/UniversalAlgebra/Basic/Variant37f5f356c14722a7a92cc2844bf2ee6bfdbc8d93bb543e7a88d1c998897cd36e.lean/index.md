# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeae0a950ee9fd75ceff24122be9d6a347e6fa05",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeae0a950ee9fd75ceff24122be9d6a347e6fa05`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Internal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GradedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedring--94a26d9a34ea2c304393a9db.md) | 73 | `declaration-track:94a26d9a34ea2c304393a9dba9b04fdd57ba050381eddb22721fce3481cf57e4` |
| 2 | `def` | [decomposeRingEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decomposeringequiv--589305d8ccea334d083cf2d6.md) | 82 | `declaration-track:589305d8ccea334d083cf2d6c17c4409ddaee2d694260af463f4b45a55016a16` |
| 3 | `theorem` | [decompose_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decompose-one--f06a7cdd9cccad385cdcc5a7.md) | 90 | `result-track:f06a7cdd9cccad385cdcc5a7c28d70c1a1ad6ada0e18352989ad1d1651b706e0` |
| 4 | `theorem` | [decompose_symm_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decompose-symm-one--bdc7ebbb6e0e2019edb2ef7f.md) | 95 | `result-track:bdc7ebbb6e0e2019edb2ef7fbadd8971eccd6132633fd6b5ecaf8c60a975211f` |
| 5 | `theorem` | [decompose_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decompose-mul--3274422b25a1ded6aea182f6.md) | 100 | `result-track:3274422b25a1ded6aea182f67c639bbb24ba9d6b36df212b79c5a2a326cbc122` |
| 6 | `theorem` | [decompose_symm_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decompose-symm-mul--0f9abd0c27d67a6dd4ed6451.md) | 105 | `result-track:0f9abd0c27d67a6dd4ed645172c0aff3e2955eff9743051176fef9b781eb7527` |
| 7 | `def` | [GradedRing.proj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedring-proj--02ae5cc73f8378b1c2004f93.md) | 113 | `declaration-track:02ae5cc73f8378b1c2004f93902f73ab4a31f98d521496fe32084d28c73403d2` |
| 8 | `theorem` | [GradedRing.proj_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedring-proj-apply--2978605bc34ed443f8d3d401.md) | 120 | `result-track:2978605bc34ed443f8d3d4015daa2a7e0ac315213c512ea23f1ff1a6015ccbec` |
| 9 | `theorem` | [GradedRing.proj_recompose](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedring-proj-recompose--75bf153c757b7203883f15a0.md) | 125 | `result-track:75bf153c757b7203883f15a064f6000c0de218b491fc393a8ced2ec85dbd69ac` |
| 10 | `theorem` | [GradedRing.mem_support_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedring-mem-support-iff--e7c8219814f5363c87c7eeab.md) | 130 | `result-track:e7c8219814f5363c87c7eeab7491cc897ab40a272d2effdf7093e8687b34a52b` |
| 11 | `theorem` | [coe_decompose_mul_add_of_left_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-add-of-left-mem--dad2266483cbde9c36dac9bd.md) | 147 | `result-track:dad2266483cbde9c36dac9bd31fc98d4de569743e2b4b18cbddf4e4259b15ba5` |
| 12 | `theorem` | [coe_decompose_mul_add_of_right_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-add-of-right-mem--df50f2b0104027d741e3f1a9.md) | 153 | `result-track:df50f2b0104027d741e3f1a939c0433d04516d5b2052b3c815d96d546efc6ccd` |
| 13 | `theorem` | [decompose_mul_add_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decompose-mul-add-left--c194a3fecb0c6fa7709f7229.md) | 159 | `result-track:c194a3fecb0c6fa7709f72299d879de64191debc3ed57a5f80d3ca7874cfa400` |
| 14 | `theorem` | [decompose_mul_add_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decompose-mul-add-right--674e94138339949ca4566757.md) | 165 | `result-track:674e94138339949ca456675746b1c55d66994a0c7479cefe1900a76b37faa894` |
| 15 | `def` | [GradedAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedalgebra--c7dbef004c6687877e239d68.md) | 184 | `declaration-track:c7dbef004c6687877e239d68e65ea0bb0b1114e6c65e437e2a2f2c37fec746b3` |
| 16 | `def` | [GradedAlgebra.ofAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedalgebra-ofalghom--fdcab17ac80930a20caa5805.md) | 194 | `declaration-track:fdcab17ac80930a20caa5805e73c9428c2cc2c984b81f1a41f0fdf478d9be942` |
| 17 | `def` | [decomposeAlgEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/decomposealgequiv--28de353fbe0d7308c8178282.md) | 215 | `declaration-track:28de353fbe0d7308c8178282daf3bab4c99834fec0703fab5e1b0b32dee68d39` |
| 18 | `def` | [GradedAlgebra.proj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedalgebra-proj--090a182b5f2f504f27e5367b.md) | 228 | `declaration-track:090a182b5f2f504f27e5367b04a6a3ccedad9326c43748b74323f83e3ef3f34c` |
| 19 | `theorem` | [GradedAlgebra.proj_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedalgebra-proj-apply--6109c0ec7dbce78bb2001b96.md) | 233 | `result-track:6109c0ec7dbce78bb2001b964eea8def47de6d3550ddf3c75b773a606a24ebd8` |
| 20 | `theorem` | [GradedAlgebra.proj_recompose](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedalgebra-proj-recompose--70f2c209983e04ae65e405bc.md) | 238 | `result-track:70f2c209983e04ae65e405bc1735e1f5b4bfd384dd090e304e0d54535c2f79a0` |
| 21 | `theorem` | [GradedAlgebra.mem_support_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedalgebra-mem-support-iff--f7a144b6e134cbaaa0187518.md) | 243 | `result-track:f7a144b6e134cbaaa0187518ff2e08202bd0156e3e463d3b9b2a1d53c2677890` |
| 22 | `def` | [GradedRing.projZeroRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/gradedring-projzeroringhom--48b32d1d10b8e1f934db464d.md) | 264 | `declaration-track:48b32d1d10b8e1f934db464ded9171d2ff307795f5e9e8199347acb5ece31a44` |
| 23 | `theorem` | [coe_decompose_mul_of_left_mem_of_not_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-of-left-mem-of-not-le--7fd5efce9fe038e0ca908882.md) | 306 | `result-track:7fd5efce9fe038e0ca90888238ad5789c3a2a682031ad3a15207e6d654fb0418` |
| 24 | `theorem` | [coe_decompose_mul_of_right_mem_of_not_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-of-right-mem-of-not-le--4a07c993934227457fb8a74f.md) | 312 | `result-track:4a07c993934227457fb8a74ff1b01d4c33c9f324cb34dc51504aad6452cd1a82` |
| 25 | `theorem` | [coe_decompose_mul_of_left_mem_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-of-left-mem-of-le--b4544d482bead26b5a5cc40f.md) | 320 | `result-track:b4544d482bead26b5a5cc40ffa171e5cccf587dcdda6f33e96a5a414bd7e698b` |
| 26 | `theorem` | [coe_decompose_mul_of_right_mem_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-of-right-mem-of-le--288283ceff317b8b3f4fa63c.md) | 326 | `result-track:288283ceff317b8b3f4fa63cbfdf05cfad78bb9b982c6a02de06ce14f710bcb0` |
| 27 | `theorem` | [coe_decompose_mul_of_left_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-of-left-mem--214733d1c7ab508cf39db0ab.md) | 332 | `result-track:214733d1c7ab508cf39db0ab3d97880e10d743cc0566730e105f5d7a282482b7` |
| 28 | `theorem` | [coe_decompose_mul_of_right_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/declarations/coe-decompose-mul-of-right-mem--26d3ef1f4fcf24241bec92d7.md) | 338 | `result-track:26d3ef1f4fcf24241bec92d7274658c9d9999153b5fff50733f210968340da64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
