# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AuditReconstructed.Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b6c2a162365ed26f8c6c1f5485429e0a8c764b1",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b6c2a162365ed26f8c6c1f5485429e0a8c764b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/planecode--b54629d8831be420e2f7ffe1.md) | 35 | `declaration-track:b54629d8831be420e2f7ffe16d2c852a460f063b7ffcd9f290553fd75ef04c10` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/encode--4fa00422f00de37046c22311.md) | 42 | `declaration-track:4fa00422f00de37046c2231131a090886dc6256ade58a3b2f6b06c2d153286b7` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/interpret--a0934c525a6f6d7005d71c5d.md) | 46 | `declaration-track:a0934c525a6f6d7005d71c5d7a8286174d6a9356edb9b5f9e184fddb0269fe34` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/supported--82b6e9f7815aa627e182b48a.md) | 50 | `declaration-track:82b6e9f7815aa627e182b48abf6897df04e09b32bc591a6a6b8665d9753c1320` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/coefficients--b1c3748ef15e71f18995ef4f.md) | 53 | `declaration-track:b1c3748ef15e71f18995ef4ff96a4762b3b0866efc1de13c0f674f473975993a` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/operation--5a592d70d575d3ee615dcd3d.md) | 57 | `declaration-track:5a592d70d575d3ee615dcd3d17b6cc08e1ccded8ccdfbb2a8dc855a51331faad` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/move--3321aa4e507c1dff49a12f4d.md) | 62 | `declaration-track:3321aa4e507c1dff49a12f4d460d1626add65ce71cd4651ca428eba186e5c4b9` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/operation-eq-coefficients--49e43491ecfc52025c54f311.md) | 69 | `result-track:49e43491ecfc52025c54f311a893dc930d369cade59c06ca7c9e2919f57fe090` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/interpret-encode--5e4a0d2fef4013341ea211d2.md) | 78 | `result-track:5e4a0d2fef4013341ea211d2279b13f405d3ed81bfb4ac0c51b0a379d9cc5077` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/interpret-move--1b6cd63b3483db4617b67de0.md) | 82 | `result-track:1b6cd63b3483db4617b67de07f61a6e93b7ceae7d647d5c8975859b963bc19ec` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/interpret-move-encode--a0f108775847b98a75704040.md) | 88 | `result-track:a0f108775847b98a75704040de2921ab0f5efda11df775d617e92c1625ab43af` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/quadratic--c08bf38a2ebf77072948b299.md) | 93 | `declaration-track:c08bf38a2ebf77072948b299428c7d2eca0165bc5ebb15b6c1f67d94d68dbcdf` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/operation-quadratic--9de2eac8b94dfe0fdd2c18e2.md) | 96 | `result-track:9de2eac8b94dfe0fdd2c18e236e3c1d5a8ce19af966e97e754e48bc19d0b0fc1` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/move-quadratic--ad7d790973a399b90e101013.md) | 104 | `result-track:ad7d790973a399b90e1010131a8acd812ec703fe802f7786488cf4b24e150571` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/reflection--d05e51a88034c0f5cb9b4bd8.md) | 109 | `declaration-track:d05e51a88034c0f5cb9b4bd835710a6b80e75823fdfe590a44e955422f9b673a` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/reflection-sq--ba34beb4b27d37d4983d0622.md) | 113 | `result-track:ba34beb4b27d37d4983d06221b8a89115ce071b1ca9e599e31ca76c46e141059` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/reflection-reversal--60794d6d50c825abd0334572.md) | 117 | `result-track:60794d6d50c825abd0334572d61fb4da5cce27eac0f399a8d13670b85d25cad9` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/operation-inverse--22df3083f34f5feace3dd24a.md) | 123 | `result-track:22df3083f34f5feace3dd24a0f264866ede802b641da878aa523b9f821e7b27c` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phasereflection--35205287fd766d8b35762de0.md) | 130 | `declaration-track:35205287fd766d8b35762de00af3c4d9959c6e151989ddafeca4e8337171d552` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phasereflection-sq--4524968e659ae18c50ef0a73.md) | 134 | `result-track:4524968e659ae18c50ef0a7314b8108cf1e07f1b0e8a8f49458b388a1020fa2f` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/coefficients-one--676cbdef445e935d4677cfac.md) | 144 | `result-track:676cbdef445e935d4677cfac49df39c8741f8c7d667d0eb918b71ca01f0e187c` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/operation-one--403546dd03f3106bae9ecf8f.md) | 148 | `result-track:403546dd03f3106bae9ecf8f3e5184f88e1d312f89a33176ae5f0596f4f06f6b` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/integralat--7d7461f008b149eb13be2f30.md) | 162 | `declaration-track:7d7461f008b149eb13be2f30bffa9b74cb8d116888907cfd4b298d79b6ce24ce` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/integralvector--ccc5482b41a0d01237d924ad.md) | 166 | `declaration-track:ccc5482b41a0d01237d924ada62cb6f05149d3fdde111fc3c0bf54cc5f89dd48` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/operation-integral--e328e47f0d6d699736286fb2.md) | 169 | `result-track:e328e47f0d6d699736286fb2b7f6451eb6ec16fbcebc9c2d975d71f2af9beb7f` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/integralat-iff-preserves-integral--e8cd8da6774698c81a466259.md) | 186 | `result-track:e8cd8da6774698c81a4662598ffb3c2ec9197d45c5dccba3bddea871af0c392c` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/instance--3525b82483d80d78745b9936.md) | 200 | `declaration-track:3525b82483d80d78745b993694fe31e30c2fec491de600686b175a588c8c7a1d` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/instance--5c690fafcfb65217b089fd10.md) | 201 | `declaration-track:5c690fafcfb65217b089fd1083434f6d79221651e2716d1bfe3eb9031275ae07` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/coefficients-two-rat--97d10c7050a9a4d76d6e0f0e.md) | 204 | `result-track:97d10c7050a9a4d76d6e0f0eec720ee34bc59e515ba01635239140bb69d7dbec` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-two-supported-five--4b3b701bab820b40d7f4c3f8.md) | 209 | `result-track:4b3b701bab820b40d7f4c3f8a0169240333707a7555486d1e0e5f0eae9c2009f` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/coefficients-two-five-diagonal-norm--e7a00cf22a78cdd9683b9419.md) | 213 | `result-track:e7a00cf22a78cdd9683b9419b521d663ec275acad584733020566a111aee6d7d` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-two-five-not-integral--a8b68bd43e1c841b1f46ad3c.md) | 224 | `result-track:a8b68bd43e1c841b1f46ad3c14325e9f3291c39cb002025748627f1a0247f3c6` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-two-not-supported-mod-five--421c2e2ab0988ce4a254424f.md) | 231 | `result-track:421c2e2ab0988ce4a254424f9c4def4e919901caa02e2accfb6c8d17431c0560` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-one-not-supported-mod-two--edd3251acdeee12469f39f2f.md) | 236 | `result-track:edd3251acdeee12469f39f2f9f4f148074a8588c59f381f91ba7530d0d38e6e7` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-one-supported-two--b9ee385a688ccac28de02fbf.md) | 241 | `result-track:b9ee385a688ccac28de02fbf080eb206b6f02bc00fbea5c4e9d71fe8e07b3823` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-one-two-denominator-norm--8abb1eec8ebd348c2f4c010c.md) | 245 | `result-track:8abb1eec8ebd348c2f4c010c1c30c38c762dee5d0a6fb232cddb3f434b6fa023` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-one-two-integral--e01e1f3d1935e037683d91ed.md) | 250 | `result-track:e01e1f3d1935e037683d91ed87626e70f5f03d1002510694de52333e21cf19ec` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-two-five-basis-nonintegral--48eebe23cca00e3b6e7a1d32.md) | 257 | `result-track:48eebe23cca00e3b6e7a1d3288d5771a493dfee8ee1ac504fb439a157a736927` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant8bf547bb1b51d0b74cad7095f6448c427672da682e6aa76ff86e99c25ce8b2c7.lean/declarations/phase-one-two-preserves-integral--0a1b762cec6806699a5fc110.md) | 263 | `result-track:0a1b762cec6806699a5fc110f73385f4c0b6cc95a5e774f0c3a41f5432590d52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
