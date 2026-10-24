# Verification target: GRWTSK.Algebra.IsPrincipal.Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04666052d0680af32382c2e6c3de4163d4768b6c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04666052d0680af32382c2e6c3de4163d4768b6c`.

Source path: `GRWTSK/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isPrincipalSubmonoid](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/isprincipalsubmonoid--955e584a93a7cfabcacc2609.md) | 41 | `declaration-track:955e584a93a7cfabcacc2609278ebfa0f00eea78749dd901e3c81dc1f0734bcd` |
| 2 | `theorem` | [mem_isPrincipalSubmonoid_iff](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/mem-isprincipalsubmonoid-iff--37c8c383fcc5ca8c9e7aae29.md) | 48 | `result-track:37c8c383fcc5ca8c9e7aae29d40ecc865112aadb1e351800273752b1ec2d6073` |
| 3 | `theorem` | [span_singleton_mem_isPrincipalSubmonoid](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/span-singleton-mem-isprincipalsubmonoid--fff8a41b42bc3db00207a9e6.md) | 51 | `result-track:fff8a41b42bc3db00207a9e69a24d7c7cb3e1170ff7a52eceed844156a293ec9` |
| 4 | `def` | [isPrincipalNonZeroDivisorsSubmonoid](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/isprincipalnonzerodivisorssubmonoid--2511f0b3099a6d8379b83802.md) | 56 | `declaration-track:2511f0b3099a6d8379b83802faec0e877ac05c732bf1f7cfd205bfeee9796c55` |
| 5 | `def` | [associatesEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesequivisprincipal--3e5ddab4518c7c89c36eef4d.md) | 69 | `declaration-track:3e5ddab4518c7c89c36eef4dff2279ead42d00ff61654a1c780fa2ef2b38f3d5` |
| 6 | `theorem` | [associatesEquivIsPrincipal_apply](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesequivisprincipal-apply--f78f0c5ef106d81f90fef0ac.md) | 79 | `result-track:f78f0c5ef106d81f90fef0ac1883e752171cbba8cae4543b935dcac709234db2` |
| 7 | `theorem` | [associatesEquivIsPrincipal_symm_apply](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesequivisprincipal-symm-apply--a2e413dcb23b213e849a4c01.md) | 83 | `result-track:a2e413dcb23b213e849a4c0128925c11eccc6260f8cb8de064f4c20a25c39aa3` |
| 8 | `theorem` | [associatesEquivIsPrincipal_mul](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesequivisprincipal-mul--400555d81947f69bbf55085d.md) | 86 | `result-track:400555d81947f69bbf55085dfdfdd34e0e4094f178b30196e31e0e5ee92b1820` |
| 9 | `theorem` | [associatesEquivIsPrincipal_map_zero](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesequivisprincipal-map-zero--e1b804fb3d12a8f555d95473.md) | 93 | `result-track:e1b804fb3d12a8f555d9547395c3d37d6074330f32f46cb928bda25ef2bdb55d` |
| 10 | `theorem` | [associatesEquivIsPrincipal_map_one](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesequivisprincipal-map-one--c703432b6a815e84de0af2f7.md) | 98 | `result-track:c703432b6a815e84de0af2f7963ebf00e556870b9e72c8208dfede3484176277` |
| 11 | `def` | [associatesMulEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesmulequivisprincipal--092d6547f12deba04d27feab.md) | 105 | `declaration-track:092d6547f12deba04d27feabcdc059d1dd83c98e4bf18838027d1ad260239990` |
| 12 | `def` | [associatesNonZeroDivisorsEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesnonzerodivisorsequivisprincipal--5cfede3d17ccce9612c5fd52.md) | 118 | `declaration-track:5cfede3d17ccce9612c5fd52d929e0a24d5bd258d2a628cb4af77f7d9f105a4a` |
| 13 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_apply](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesnonzerodivisorsequivisprincipal-apply--c3d916dab21fc027143646a5.md) | 132 | `result-track:c3d916dab21fc027143646a5de682b0905ebe50704f45663475dc4581b40b954` |
| 14 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_coe](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesnonzerodivisorsequivisprincipal-coe--d40eb5a68ed1bce30e742265.md) | 135 | `result-track:d40eb5a68ed1bce30e7422654c058b62c026815f8627850236b682d4cdaac894` |
| 15 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_mul](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesnonzerodivisorsequivisprincipal-mul--9e5daf219b75a486ec550f6f.md) | 139 | `result-track:9e5daf219b75a486ec550f6fb5515502f374c616755eb1b973cba1aa885a4879` |
| 16 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_map_one](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesnonzerodivisorsequivisprincipal-map-one--fdcbb5abd722728508c7f119.md) | 147 | `result-track:fdcbb5abd722728508c7f119b9a9f26994046772b5874eeb1231f70e76e2f64a` |
| 17 | `def` | [associatesNonZeroDivisorsMulEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/associatesnonzerodivisorsmulequivisprincipal--b18120a0a3dc2a6630c6a781.md) | 155 | `declaration-track:b18120a0a3dc2a6630c6a7816256b8e5deee2e1178535d66548d45e5741f76c9` |
| 18 | `def` | [isoBaseOfIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/isobaseofisprincipal--820159e873d87a689da9e593.md) | 165 | `declaration-track:820159e873d87a689da9e593f7960115cf4d1e8740ca627165ea557729f4c458` |
| 19 | `theorem` | [isoBaseOfIsPrincipal_apply](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/isobaseofisprincipal-apply--ddd47a4d08323ac0a2dfb924.md) | 173 | `result-track:ddd47a4d08323ac0a2dfb9247336aac4c13b51102dbd4e5dc896bc6b30f17186` |
| 20 | `theorem` | [subtype_isoBaseOfIsPrincipal_eq_mul](../../../../mathematics/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/declarations/subtype-isobaseofisprincipal-eq-mul--38ddadd9ddab16910542ee09.md) | 177 | `result-track:38ddadd9ddab16910542ee097b83c410491539e78bd65c547ee859ffd4890183` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
