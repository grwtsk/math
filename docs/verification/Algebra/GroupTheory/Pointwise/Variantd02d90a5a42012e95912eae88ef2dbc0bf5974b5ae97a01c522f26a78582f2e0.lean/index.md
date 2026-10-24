# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eac31698ae3769fc74d7822fdd09d1eae38d8e37",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eac31698ae3769fc74d7822fdd09d1eae38d8e37`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coe_mul_coe](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/coe-mul-coe--0b4830c3cf8c1eeccff3d5f3.md) | 52 | `result-track:0b4830c3cf8c1eeccff3d5f316d2aff5ff6a58a28af7ecc9560b4a5de932cf71` |
| 2 | `lemma` | [coe_set_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/coe-set-pow--553a1dfafb8e23430d82e392.md) | 57 | `result-track:553a1dfafb8e23430d82e392decdf5bf82ba5749a0f107960985d221c0332472` |
| 3 | `theorem` | [mul_subset](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/mul-subset--867d25bc204bca2b6f8bd03b.md) | 70 | `result-track:867d25bc204bca2b6f8bd03b3d819666f92968d6a477f05bcb0b1c7bd6fededd` |
| 4 | `theorem` | [mul_subset_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/mul-subset-closure--607df4e9d44ce9f85d358d5f.md) | 74 | `result-track:607df4e9d44ce9f85d358d5f56bbcbb5860de03ccc248b3b24d4e71087bff5eb` |
| 5 | `theorem` | [coe_mul_self_eq](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/coe-mul-self-eq--c508cd20a98394840f400976.md) | 78 | `result-track:c508cd20a98394840f4009768fdc85f535c12098039f79eacadcbf2ce2634781` |
| 6 | `theorem` | [closure_mul_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/closure-mul-le--7c3f9367c18933adfc070079.md) | 85 | `result-track:7c3f9367c18933adfc07007938f317a35ac7cc5da998660903e6a489ffd860c3` |
| 7 | `lemma` | [closure_pow_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/closure-pow-le--dcfba460f406d942faeafe24.md) | 91 | `result-track:dcfba460f406d942faeafe24bf4e071b79c62a08096c8b0a315ede39ec81a5bf` |
| 8 | `lemma` | [closure_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/closure-pow--047d77f7613e8c9e312226b6.md) | 102 | `result-track:047d77f7613e8c9e312226b6ce8344a1ccef3ca176194e2448bf62726acc5836` |
| 9 | `theorem` | [sup_eq_closure_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/sup-eq-closure-mul--f34ef2ebf7ee792314959fa1.md) | 106 | `result-track:f34ef2ebf7ee792314959fa13f46c537278345a08a62994026318d8fcee409ec` |
| 10 | `theorem` | [pow_smul_mem_closure_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/pow-smul-mem-closure-smul--c459aec4950cdaae292e4b52.md) | 113 | `result-track:c459aec4950cdaae292e4b525246ed0f359d3789314fbda487d5607f2be10aa2` |
| 11 | `def` | [inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv--4561c8753a84b5d662c220c8.md) | 128 | `declaration-track:4561c8753a84b5d662c220c867ca3b8c34971878bae12f15cd9cdef439b6ec7b` |
| 12 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/coe-inv--86a82563ca8dbf14972eb1e3.md) | 137 | `result-track:86a82563ca8dbf14972eb1e3c69e41ab7c3bb738a392e5c0aaac955e1063ca0f` |
| 13 | `theorem` | [mem_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/mem-inv--319fc049d3c1bd7cf15f27a9.md) | 141 | `result-track:319fc049d3c1bd7cf15f27a9cea67a0297495612933771ac18106dbef016d2ce` |
| 14 | `def` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/involutiveinv--c53b3401e6e0c1746a579146.md) | 146 | `declaration-track:c53b3401e6e0c1746a5791468464dce91de62ebda316224aa2410102f0b64dbf` |
| 15 | `theorem` | [inv_le_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-le-inv--b80d3e12ebdd5f58914b0677.md) | 152 | `result-track:b80d3e12ebdd5f58914b0677c90ba88f53ecf8ae12840c4288d7d082549c1c65` |
| 16 | `theorem` | [inv_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-le--3d7dc3ddd3d555ce266effb3.md) | 156 | `result-track:3d7dc3ddd3d555ce266effb3931d367ba09b3dbaeb34c6500777988dc243e52f` |
| 17 | `def` | [invOrderIso](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/invorderiso--39f14f075d4db02cff004c19.md) | 161 | `declaration-track:39f14f075d4db02cff004c19e433fda27d883713c8f6c5ca7c9888e0374f83f5` |
| 18 | `theorem` | [closure_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/closure-inv--fab72ce367cd166e1808464a.md) | 166 | `result-track:fab72ce367cd166e1808464a808ab2d3e3bead99d73f1da9260ee2b691fbc117` |
| 19 | `lemma` | [mem_closure_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/mem-closure-inv--3c7984d0f235d3774f91a7e9.md) | 174 | `result-track:3c7984d0f235d3774f91a7e9d210111f336dbe6b51f96e963bfe7847a918b522` |
| 20 | `theorem` | [inv_inf](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-inf--6a040a96405e31a50ff1c9d2.md) | 178 | `result-track:6a040a96405e31a50ff1c9d2258657237055e71c1824d8ff521741c21f4c700e` |
| 21 | `theorem` | [inv_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-sup--79bc3b2e91cf10bab2874052.md) | 182 | `result-track:79bc3b2e91cf10bab2874052d64cb17e7c0b30aeff0372336947a718c7e184df` |
| 22 | `theorem` | [inv_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-bot--693c6288196b2de4df275edf.md) | 186 | `result-track:693c6288196b2de4df275edf7480c382617912aa8e44219ecf444738a5fda23e` |
| 23 | `theorem` | [inv_top](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-top--f13353042c9429123e085dc5.md) | 190 | `result-track:f13353042c9429123e085dc5ad5e14ac52e73fe53e90e33119ab347b5d85a8d3` |
| 24 | `theorem` | [inv_iInf](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-iinf--5538ae0c06316b64bc53a15a.md) | 194 | `result-track:5538ae0c06316b64bc53a15ad4111c9ec3baee79aba2d28b5582af8213ff946c` |
| 25 | `theorem` | [inv_iSup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/inv-isup--aedd58bb1c6065647e6778f5.md) | 198 | `result-track:aedd58bb1c6065647e6778f5ded166123ebf8bfae214520c1217a8ac0bedebaa` |
| 26 | `def` | [pointwiseMulAction](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/pointwisemulaction--d21a59f1e6c94a0b574a4016.md) | 213 | `declaration-track:d21a59f1e6c94a0b574a4016d3b261dc00abd34faac94f1e8010b098be17cbd0` |
| 27 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/coe-pointwise-smul--2743c22ad4f488b42189dd1d.md) | 225 | `result-track:2743c22ad4f488b42189dd1d0d7e0861319c7cf9ee48bbdd55bb4a7566a48f2c` |
| 28 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/smul-mem-pointwise-smul--e34352f7bac6de8120087373.md) | 228 | `result-track:e34352f7bac6de8120087373cb7d7233c82631bf8f056c291cb3a1fef7912c5b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/instance--d2c7832cc349ff260b9b80f8.md) | 231 | `declaration-track:d2c7832cc349ff260b9b80f89ef2f513552f1006fbd631fd3f9cc4a5d25eee49` |
| 30 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/mem-smul-pointwise-iff-exists--c8a373e547348d8210edee06.md) | 234 | `result-track:c8a373e547348d8210edee06cada066e5247ef2b6c7ed174efe05e77faae54e1` |
| 31 | `theorem` | [smul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/smul-bot--a198e692ead62b5049639ff6.md) | 239 | `result-track:a198e692ead62b5049639ff6b076ce26ba686a25e184fef9b69ac1e4aa44b6bd` |
| 32 | `theorem` | [smul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/smul-sup--5eaca3f586f4913194001c0c.md) | 242 | `result-track:5eaca3f586f4913194001c0c6272596d92b4cd3ba76b870e79db780ce36877df` |
| 33 | `theorem` | [smul_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/smul-closure--e0056f5433576ecfcf0667fc.md) | 245 | `result-track:e0056f5433576ecfcf0667fcffd751bf36d4a36f24f35c29237014baeea2141e` |
| 34 | `lemma` | [pointwise_isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/pointwise-iscentralscalar--e146702c49cb64ee381a8c7c.md) | 248 | `result-track:e146702c49cb64ee381a8c7c9b7afd3746a623c10940ae060b7d680a568f902f` |
| 35 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/smul-mem-pointwise-smul-iff--644cfccaed0e85d0a9e71a44.md) | 261 | `result-track:644cfccaed0e85d0a9e71a444d3dca1b04f8c546d5cf2ad74a836e84b54b1be1` |
| 36 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--134ca0373c7d797a07add9cf.md) | 264 | `result-track:134ca0373c7d797a07add9cfafe862ad029e851813e7fd522c9a8651c019390f` |
| 37 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/mem-inv-pointwise-smul-iff--fbfb203025f1aabfaba827ef.md) | 268 | `result-track:fbfb203025f1aabfaba827efa7edc6ea076165b27d58820bd8bef095325a2665` |
| 38 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/pointwise-smul-le-pointwise-smul-iff--0c03fe38e0551a2ea7943e20.md) | 272 | `result-track:0c03fe38e0551a2ea7943e20a307d15b1db8604be03e6b8e716af751ab0e48b7` |
| 39 | `theorem` | [pointwise_smul_subset_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/pointwise-smul-subset-iff--53b03dc529f969faf4997e16.md) | 275 | `result-track:53b03dc529f969faf4997e16b066a0c0052e393f71bbaa9d505e5f0a80db62ac` |
| 40 | `theorem` | [subset_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/subset-pointwise-smul-iff--b5c12c8bf134e9d10dc8a70b.md) | 278 | `result-track:b5c12c8bf134e9d10dc8a70b44febf874731a8fb9aaf93713a08050da25d5e95` |
| 41 | `theorem` | [submonoid_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantd02d90a5a42012e95912eae88ef2dbc0bf5974b5ae97a01c522f26a78582f2e0.lean/declarations/submonoid-closure--ed4fb6fbecf82f5e4f409e57.md) | 289 | `result-track:ed4fb6fbecf82f5e4f409e578225233049707b865391df06a3fd50c0a8f14a24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
