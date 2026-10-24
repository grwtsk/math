# Verification target: GRWTSK.Algebra.LinearAlgebra.Isotypic.Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf45c238ccf34c0da62f03063df50e25acf3a9a2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf45c238ccf34c0da62f03063df50e25acf3a9a2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleModule.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIsotypicOfType](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype--e563500ccc6ae74db2ed59fb.md) | 29 | `declaration-track:e563500ccc6ae74db2ed59fb7230803a09e68b0b3dd88b93a8e3e8b104e38c09` |
| 2 | `def` | [IsIsotypic](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic--bad4d58ff932c7d924623223.md) | 32 | `declaration-track:bad4d58ff932c7d924623223bfe50b18c4111569a150f2b3c9f8a376338ecc73` |
| 3 | `theorem` | [IsIsotypicOfType.isIsotypic](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-isisotypic--fea4e1e72b0440e7599261b1.md) | 35 | `result-track:fea4e1e72b0440e7599261b19b338fe6e20949ad9ecb816601b9276474f76fb6` |
| 4 | `theorem` | [IsIsotypicOfType.of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-of-subsingleton--4154f3c5d4e41d3055996331.md) | 39 | `result-track:4154f3c5d4e41d3055996331ca435853b767a7b424979a9f56ec9d51762ca262` |
| 5 | `theorem` | [IsIsotypic.of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic-of-subsingleton--4f1c6bc953353c7c9622c0b7.md) | 43 | `result-track:4f1c6bc953353c7c9622c0b7d2e0911e3c1e0bd5929f0b015849c993b4f2accd` |
| 6 | `theorem` | [IsIsotypicOfType.of_isSimpleModule](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-of-issimplemodule--537c4a4cd0c585e36a494527.md) | 46 | `result-track:537c4a4cd0c585e36a49452766df3d5fd1b69c1a1988e7400e0d31945df21284` |
| 7 | `theorem` | [IsIsotypicOfType.of_linearEquiv_type](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-of-linearequiv-type--3138a37a4b56ac45816835de.md) | 53 | `result-track:3138a37a4b56ac45816835def0d37b16756746a8003043d3257b71d975a56b58` |
| 8 | `theorem` | [IsIsotypicOfType.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-of-injective--3cd6438e64541f3eec2ac3e0.md) | 56 | `result-track:3cd6438e64541f3eec2ac3e0d632ba2728e8011d97dd9ed4d6e77d6ba62135ea` |
| 9 | `theorem` | [IsIsotypic.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic-of-injective--f4d3a582d13097275b39dcc2.md) | 62 | `result-track:f4d3a582d13097275b39dcc22c3ffcf00e8e9f764e2b412f37fb6b872afa0c89` |
| 10 | `theorem` | [LinearEquiv.isIsotypicOfType_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/linearequiv-isisotypicoftype-iff--5a29778e19bfc20767d1ef21.md) | 68 | `result-track:5a29778e19bfc20767d1ef21a2e708b41b38961918741892689b4199d7c9ee4e` |
| 11 | `theorem` | [LinearEquiv.isIsotypicOfType_iff_type](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/linearequiv-isisotypicoftype-iff-type--9ab8f6fa5b4fef986ce58d4c.md) | 72 | `result-track:9ab8f6fa5b4fef986ce58d4c0890ed022c49604429852c618a16c76819ca03aa` |
| 12 | `theorem` | [LinearEquiv.isIsotypic_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/linearequiv-isisotypic-iff--61e8c0e8272bfe10d296a7e3.md) | 76 | `result-track:61e8c0e8272bfe10d296a7e318fe5f07ae0f31ab2a148d475b55bdbb5cf1a37d` |
| 13 | `theorem` | [isIsotypicOfType_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-submodule-iff--6aa3203207a5044fa96a83e8.md) | 79 | `result-track:6aa3203207a5044fa96a83e87e5368fa2dc22f31c285ffc91790102aa1eed9df` |
| 14 | `theorem` | [isIsotypic_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic-submodule-iff--8d2efbd177d2dda9420beea7.md) | 86 | `result-track:8d2efbd177d2dda9420beea71546419b6665bd4d414f6da69fe07da10329f9fe` |
| 15 | `theorem` | [IsIsotypicOfType.linearEquiv_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-linearequiv-finsupp--c4907c88fcd9425678b2956c.md) | 97 | `result-track:c4907c88fcd9425678b2956ce0d950878d05d79d05a78b806fa842b2b52bb7ee` |
| 16 | `theorem` | [IsIsotypic.linearEquiv_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic-linearequiv-finsupp--ff3c2a1e04025351bd7e860a.md) | 103 | `result-track:ff3c2a1e04025351bd7e860acfc4b679b618877ee76a3b2fe59a28985844062c` |
| 17 | `theorem` | [IsIsotypicOfType.linearEquiv_fun](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-linearequiv-fun--9c511594ac711baef1aaecba.md) | 112 | `result-track:9c511594ac711baef1aaecbae183ee5a968cc88fb70c571980f9fed4afd2b258` |
| 18 | `theorem` | [IsIsotypic.linearEquiv_fun](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic-linearequiv-fun--24cada15c9af94084f2cf485.md) | 118 | `result-track:24cada15c9af94084f2cf485d5392b2de277d79956cb4453d02ca24fae7095d8` |
| 19 | `def` | [Submodule.IsFullyInvariant](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/submodule-isfullyinvariant--ae60bbbe97ff81b6f4d91061.md) | 132 | `declaration-track:ae60bbbe97ff81b6f4d91061a9d7d9d9d7674b56b3588aedb5c3afc480a8c3ed` |
| 20 | `theorem` | [isFullyInvariant_iff_isTwoSided](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isfullyinvariant-iff-istwosided--91e3d18d1dd237b6a41a4592.md) | 135 | `result-track:91e3d18d1dd237b6a41a45925066beb0f1d7f3806185606e269f5564df267e45` |
| 21 | `def` | [isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isotypiccomponent--195aa73dc31666ef5140f9e0.md) | 143 | `declaration-track:195aa73dc31666ef5140f9e05b8b70e2e6a9ff12b74873bad13a82693ed84d95` |
| 22 | `theorem` | [Submodule.le_isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/submodule-le-isotypiccomponent--3fb3c63073a1c31d45f6162d.md) | 145 | `result-track:3fb3c63073a1c31d45f6162dbe2674f02ce4d36750df63c691538717341e366b` |
| 23 | `theorem` | [bot_lt_isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/bot-lt-isotypiccomponent--cc15db3298eed039a1cc03bd.md) | 148 | `result-track:cc15db3298eed039a1cc03bd23a1d68fbac328d0c126e790ca1d9a0ca4f779ef` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/instance--97763578d96e29993b534526.md) | 153 | `declaration-track:97763578d96e29993b53452637375122244dc33b634f0aa5df9a2b9723c540f7` |
| 25 | `theorem` | [Submodule.le_linearEquiv_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/submodule-le-linearequiv-of-ssup-eq-top--521973b8d6be6e8e15431553.md) | 164 | `result-track:521973b8d6be6e8e15431553e5f9abcfeddfdd433d4e77e5309373d235aacf02` |
| 26 | `theorem` | [Submodule.linearEquiv_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/submodule-linearequiv-of-ssup-eq-top--fda96fac107d9bb28a5fa44b.md) | 173 | `result-track:fda96fac107d9bb28a5fa44bfae0963f0692a7f4fbd237c05ee03235b4889595` |
| 27 | `theorem` | [Submodule.le_linearEquiv_of_le_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/submodule-le-linearequiv-of-le-ssup--991535c6aa894be10dfc5407.md) | 184 | `result-track:991535c6aa894be10dfc5407bcfcb84b7709c9f4675520e267ecd5ce0ea6768c` |
| 28 | `theorem` | [Submodule.linearEquiv_of_le_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/submodule-linearequiv-of-le-ssup--d475fe71b88c45222c6ae8ca.md) | 196 | `result-track:d475fe71b88c45222c6ae8ca2566611bd4d54c3ad1ea79a5e4369c2c545513b1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/instance--d0aea4f8ed343ffbf9df2919.md) | 209 | `declaration-track:d0aea4f8ed343ffbf9df2919babb631d646788b3434b95c15bac9262d3548f7b` |
| 30 | `theorem` | [IsIsotypicOfType.isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-isotypiccomponent--2ae75caabbde426beb65547c.md) | 212 | `result-track:2ae75caabbde426beb65547c716d0562399ce755663b26842127947156820eae` |
| 31 | `theorem` | [IsIsotypic.isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic-isotypiccomponent--dbcd9b815e4cf9e4cf03ec4e.md) | 218 | `result-track:dbcd9b815e4cf9e4cf03ec4e4d9cd1c5a2164027d8ee0b71b71078a32aad8092` |
| 32 | `theorem` | [IsIsotypicOfType.of_isotypicComponent_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypicoftype-of-isotypiccomponent-eq-top--c942af6b7e0f0cf09944b369.md) | 223 | `result-track:c942af6b7e0f0cf09944b36901f0cec5909bfaf830a1ac6914c0549366af219e` |
| 33 | `theorem` | [isotypicComponent_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isotypiccomponent-eq-top-iff--8226e5656093009c485b5ade.md) | 227 | `result-track:8226e5656093009c485b5ade7132a8808376592a4d446320e1f2a239ac0c39dc` |
| 34 | `theorem` | [isFullyInvariant_isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isfullyinvariant-isotypiccomponent--0da031bd1070acd5ece6e4be.md) | 233 | `result-track:0da031bd1070acd5ece6e4be2501bea8ab59b0f361b7eab3c0fdec059599cbcd` |
| 35 | `theorem` | [isIsotypic_iff_isFullyInvariant_imp_bot_or_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/declarations/isisotypic-iff-isfullyinvariant-imp-bot-or-top--fdee840bb528a446347cb7e4.md) | 244 | `result-track:fdee840bb528a446347cb7e46d1c3ae59820e43856dca0e0e7a2506f7bc828bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
