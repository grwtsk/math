# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fcc203d5fb36ecc20fb0809d80228e067523a12",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fcc203d5fb36ecc20fb0809d80228e067523a12`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.MulOpposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/leftrel--1188b1b4ddbc74c553b78e22.md) | 67 | `declaration-track:1188b1b4ddbc74c553b78e22be2b01a1e4b4ccbe3ce6f9d85db61ee3b444227d` |
| 2 | `theorem` | [leftRel_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/leftrel-apply--d8d7201d875f5d061d0c0d8c.md) | 72 | `result-track:d8d7201d875f5d061d0c0d8ca6a85d11aa2e44f68b9f25aaeb8335b289454bb2` |
| 3 | `theorem` | [leftRel_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/leftrel-eq--e2e83e143a0b96358cce06dc.md) | 81 | `result-track:e2e83e143a0b96358cce06dc1b07fe2010f67eb29c14f36fcebd2b38626d2aa1` |
| 4 | `instance` | [leftRelDecidable](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/leftreldecidable--2011e1bfb9357feebd5552a7.md) | 87 | `declaration-track:2011e1bfb9357feebd5552a7c6aaf9e3434040b59af1e550c225628838bbd527` |
| 5 | `instance` | [instHasQuotientSubgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/insthasquotientsubgroup--d782308b3c26e6a91356da63.md) | 95 | `declaration-track:d782308b3c26e6a91356da6396a9489af62778887f1793c4fb754b7554fcda31` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/instance--386a6c599bc81079d501d633.md) | 99 | `declaration-track:386a6c599bc81079d501d6332ec82ee903812e2a9ce03cc3f401b4cc667a84e3` |
| 7 | `def` | [rightRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/rightrel--cbf02d2c65949e65e638ee5a.md) | 106 | `declaration-track:cbf02d2c65949e65e638ee5a5afc2ae0640df5c9d391fdfd772301801430b2d2` |
| 8 | `theorem` | [rightRel_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/rightrel-apply--ddd3a496c5496651360b2cec.md) | 111 | `result-track:ddd3a496c5496651360b2cec985694a60ab7bce3c197a621cc397e4b26a002eb` |
| 9 | `theorem` | [rightRel_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/rightrel-eq--86222c4c9888bda01ed3e90e.md) | 118 | `result-track:86222c4c9888bda01ed3e90e65e99c78e569c2a905b79cd76ad9982d380e30e8` |
| 10 | `instance` | [rightRelDecidable](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/rightreldecidable--024ab505320d319b358cc8e2.md) | 124 | `declaration-track:024ab505320d319b358cc8e219eefe91a2e58e7f1981b112cfd4e6ee43ca9ba8` |
| 11 | `def` | [quotientRightRelEquivQuotientLeftRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/quotientrightrelequivquotientleftrel--d061fa5dcd4324e8fb3d0ea4.md) | 130 | `declaration-track:d061fa5dcd4324e8fb3d0ea44785812bdd47443d2a989c4598597f7133a14c93` |
| 12 | `abbrev` | [mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/mk--c5f3cfb99139d8991a50736c.md) | 162 | `declaration-track:c5f3cfb99139d8991a50736c76e35c49d2c7a8ce64a0d2a6e655f2b99dd10202` |
| 13 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/mk-surjective--60739efd7b61f40aca8850dc.md) | 166 | `result-track:60739efd7b61f40aca8850dcdd6a78da7eb0f91ee99a5175c9b95bb2f96c7d4e` |
| 14 | `lemma` | [range_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/range-mk--d18bf71409b39a7a1b6915b2.md) | 170 | `result-track:d18bf71409b39a7a1b6915b213a3bb5384cfd7786cd8bb1c74885f3a2735319d` |
| 15 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/induction-on--8477d85c6fb3509e0fc5a034.md) | 173 | `result-track:8477d85c6fb3509e0fc5a03444a3214a82e384ecb5589bed3dfbf58f4646fa96` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/instance--d75b58a12cf014541b273143.md) | 177 | `declaration-track:d75b58a12cf014541b2731430da6c202b6820fa606e0ced00066a2c3f381f0a1` |
| 17 | `theorem` | [quotient_liftOn_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/quotient-lifton-mk--6e817feddaadab66b7ea2f8e.md) | 183 | `result-track:6e817feddaadab66b7ea2f8e005248bdae0ec16edf5beebcf497a38269a4d623` |
| 18 | `theorem` | [forall_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/forall-mk--fcafa266cab7c0f01ab53aa9.md) | 187 | `result-track:fcafa266cab7c0f01ab53aa9db9516fc0d767c56bef20c8247d56a786ad2067f` |
| 19 | `theorem` | [exists_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/exists-mk--93973f87381c8bbb1e1d6c1d.md) | 191 | `result-track:93973f87381c8bbb1e1d6c1dd97a5d19df24e607771a66e5c0524369053413c8` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/instance--b40182983f2f24481b925bc9.md) | 195 | `declaration-track:b40182983f2f24481b925bc929412b90cfa8b725c05b15a0d9e15e4ded7103fc` |
| 21 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/eq--cf83ad77906cca5cdc588d2e.md) | 199 | `result-track:cf83ad77906cca5cdc588d2e45e7621a5c67202ecd8a2a5e4ca4645cff853840` |
| 22 | `theorem` | [out_eq'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/out-eq--23f8b8270e657fec128cc2ab.md) | 205 | `result-track:23f8b8270e657fec128cc2abc347a422b1a94154f5ba23f3ef3d71a2d31db99d` |
| 23 | `theorem` | [mk_out_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/mk-out-eq-mul--f12ade358d3a2142f2168481.md) | 214 | `result-track:f12ade358d3a2142f2168481a02f89ced2c5fd00058b34d3a4c620f7b91b14d1` |
| 24 | `theorem` | [mk_mul_of_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/mk-mul-of-mem--3f3935c9c910ea585be9eab4.md) | 220 | `result-track:3f3935c9c910ea585be9eab440f92f85ba0999801d0f6de89a3cd37e3cf531db` |
| 25 | `theorem` | [preimage_image_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/preimage-image-mk--e3dcab58085f0e0c6da4b9ba.md) | 224 | `result-track:e3dcab58085f0e0c6da4b9ba2ec2f475a3640da0023afccb7311ee8ee947027e` |
| 26 | `theorem` | [preimage_image_mk_eq_iUnion_image](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/preimage-image-mk-eq-iunion-image--4422fe242a5a67d209b49465.md) | 234 | `result-track:4422fe242a5a67d209b49465b11005b3b8f697d37b967b48cf34420552e505fc` |
| 27 | `theorem` | [preimage_image_mk_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/preimage-image-mk-eq-mul--6d6220d53ca25997e3693f40.md) | 240 | `result-track:6d6220d53ca25997e3693f40b313c4c0e6a6f986b1ff938e09f878dced7d8259` |
| 28 | `def` | [quotientEquivOfEq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/quotientequivofeq--460c3301399e1762e99de83d.md) | 257 | `declaration-track:460c3301399e1762e99de83db8a04462dbcd9659c20d789bef4450122ae3e59b` |
| 29 | `theorem` | [quotientEquivOfEq_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ae5944fa517b2bf40be5f9d06c7c7b24c2837e5af7205ce42df732130049e2a.lean/declarations/quotientequivofeq-mk--c01744892902c413d9ccebd2.md) | 263 | `result-track:c01744892902c413d9ccebd2994ae1b8ac7410fa758b4bfee32f5c2b6def6175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
