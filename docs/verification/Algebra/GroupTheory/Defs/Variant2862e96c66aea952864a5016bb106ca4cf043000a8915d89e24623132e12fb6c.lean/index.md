# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b98097924b1f95f321c938c31abef37e42e8dba",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b98097924b1f95f321c938c31abef37e42e8dba`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean.json)

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
| 1 | `class` | [Group](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/group--ad830bc74e2a5f12c7dfd2a3.md) | 33 | `declaration-track:ad830bc74e2a5f12c7dfd2a32b01ce65e23dc0055afda2a40e1558456f9f2b2d` |
| 2 | `class` | [AddGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/addgroup--377a8dbe2a866feb727db077.md) | 44 | `declaration-track:377a8dbe2a866feb727db077a148a628b39a248a2c68d36d048a2e0d06f03c11` |
| 3 | `theorem` | [inv_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/inv-mul-cancel--8fb8ac23afd2bc91d7dc82f3.md) | 54 | `result-track:8fb8ac23afd2bc91d7dc82f3c82af1fa3769c2a49a4205d2bc01ad4f64a9b350` |
| 4 | `theorem` | [inv_eq_of_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/inv-eq-of-mul--f222aa66b3dc3961e7816cd8.md) | 58 | `result-track:f222aa66b3dc3961e7816cd8c57bc6f08fbae6978b2abf3c08eacaab2e6ea169` |
| 5 | `theorem` | [mul_inv_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/mul-inv-cancel--e8a605ead9598f207cf88bd7.md) | 62 | `result-track:e8a605ead9598f207cf88bd78518c2a8a2e0da8ec9a678ed9ce71034f22bc42e` |
| 6 | `theorem` | [div_self'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/div-self--236da3a2ab7dbe5b9379f71d.md) | 66 | `result-track:236da3a2ab7dbe5b9379f71d5ce3bcce4868b051d09a0f8f760ba1a4fdb09c33` |
| 7 | `theorem` | [inv_mul_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/inv-mul-cancel-left--eaf2306845d47f8681f4cedf.md) | 69 | `result-track:eaf2306845d47f8681f4cedfdb238e52bc2b7c977c6f6208a2236ebd523454e4` |
| 8 | `theorem` | [mul_inv_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/mul-inv-cancel-left--0e764cf63f3f986e021cd7b3.md) | 73 | `result-track:0e764cf63f3f986e021cd7b3c8f7feaf3d64bcd952a2cc40e8503701a92f6b42` |
| 9 | `theorem` | [mul_inv_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/mul-inv-cancel-right--07118c4fa042a7fcd33eaf48.md) | 77 | `result-track:07118c4fa042a7fcd33eaf485f5fdd9d247e0b594ab78e3419f3df9b34db72a6` |
| 10 | `theorem` | [mul_div_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/mul-div-cancel-right--273877c7efb5004a9f0934af.md) | 81 | `result-track:273877c7efb5004a9f0934af26a6d56f4deccaee3be8db1ea28aeee519e721e7` |
| 11 | `theorem` | [inv_mul_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/inv-mul-cancel-right--f8768503cf54a0a47af8aef9.md) | 85 | `result-track:f8768503cf54a0a47af8aef9ad45e2ee11d91b3ca2b90d228e0be5b20ba6e4d5` |
| 12 | `theorem` | [div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/div-mul-cancel--9a36f7875bcae9d0b5626789.md) | 89 | `result-track:9a36f7875bcae9d0b5626789020dcc5c22429e139c1894432d6eecaf9257b43f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/instance--e5a565b007f9fe77f9820cb1.md) | 93 | `declaration-track:e5a565b007f9fe77f9820cb1248d6f5d0dea52f21fec61bfbd3c836a8883b2ec` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/instance--90d0e93b09b5d90f3a83aa6c.md) | 102 | `declaration-track:90d0e93b09b5d90f3a83aa6cf3d7d8962c0ebbc924b48addc54d32a0be0041f1` |
| 15 | `class` | [AddCommGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/addcommgroup--b9a89f190d0d7b5112dbc5f9.md) | 111 | `declaration-track:b9a89f190d0d7b5112dbc5f995fd1911a1f956b781c2fb72994d0ad47ddd46da` |
| 16 | `class` | [CommGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/commgroup--617ba6bccf9c1f8bde64de6b.md) | 116 | `declaration-track:617ba6bccf9c1f8bde64de6b95c5928ef9ec4da09e8233f051a29dfe410143cc` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/instance--2f9a55e041e939875998acc7.md) | 124 | `declaration-track:2f9a55e041e939875998acc704f5e077a504cf11bb05d9e012e6e4389ab7dd3b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/instance--1f1c232723708d3774dc786f.md) | 129 | `declaration-track:1f1c232723708d3774dc786fc1b41eb6f1f6099a74f0eb467e99d8f1f4d5d6af` |
| 19 | `lemma` | [inv_mul_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/inv-mul-cancel-comm--9b1adf147d5e7435bf16c524.md) | 132 | `result-track:9b1adf147d5e7435bf16c52496778751aff3ba7bf5fb247143aa0a6be30ce965` |
| 20 | `lemma` | [mul_inv_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/mul-inv-cancel-comm--3f0654c91c16f95320d783a4.md) | 136 | `result-track:3f0654c91c16f95320d783a4d46bc570ef75fd70d8111901f0d0234bfd0293d7` |
| 21 | `lemma` | [inv_mul_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/inv-mul-cancel-comm-assoc--771c42135e898d805d78c602.md) | 138 | `result-track:771c42135e898d805d78c6020e5c280ab51673dafc53801f840b4acae89fb99f` |
| 22 | `lemma` | [mul_inv_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/declarations/mul-inv-cancel-comm-assoc--e637cbd39b17f8eaca38e02d.md) | 141 | `result-track:e637cbd39b17f8eaca38e02d395cea13023faf2e384e0513abd63d8ce1219112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
