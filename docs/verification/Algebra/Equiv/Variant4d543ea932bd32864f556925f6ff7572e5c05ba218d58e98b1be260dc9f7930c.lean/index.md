# Verification target: GRWTSK.Algebra.Equiv.Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fad433cbfa82825d308ee5155ef8b290dca2ca4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fad433cbfa82825d308ee5155ef8b290dca2ca4`.

Source path: `GRWTSK/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean.json)

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
| 1 | `structure` | [AddConstEquiv](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/addconstequiv--a5517cb0d81fb03e7659c6d2.md) | 28 | `declaration-track:a5517cb0d81fb03e7659c6d20d96f2cdb3c477181cb8f97d62f511b3106432dc` |
| 2 | `lemma` | [toEquiv_injective](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/toequiv-injective--3aa5c1f5065a2d39b82f9c11.md) | 44 | `result-track:3aa5c1f5065a2d39b82f9c116acd6bceae50164523d764353c9dda3ba3cfada6` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instance--8ad92138a208454cdb92e25f.md) | 48 | `declaration-track:8ad92138a208454cdb92e25f511b94dfc7f11c91523887108c9ddcee1db6b74a` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instance--a5af880a72445c01b0b68738.md) | 56 | `declaration-track:a5af880a72445c01b0b6873829bdf7ecbdd8b7b0eaa619a8e0d646e24998dd3b` |
| 5 | `lemma` | [ext](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/ext--a782137646cba42c3f9d4f0e.md) | 60 | `result-track:a782137646cba42c3f9d4f0e769329573296902c796ac65d29369a2ec4a914d7` |
| 6 | `lemma` | [toEquiv_inj](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/toequiv-inj--6893f952b31c0d5ac4fc1e1b.md) | 63 | `result-track:6893f952b31c0d5ac4fc1e1bf4e50d3dc70f1d61680e90f0545f6bc1ed854018` |
| 7 | `lemma` | [coe_toEquiv](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/coe-toequiv--36a4cc8412d8a923fd6fae59.md) | 66 | `result-track:36a4cc8412d8a923fd6fae597fe84fa959dbc43f8decab6e8fff52649ce782a1` |
| 8 | `def` | [symm](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/symm--e2dd1321bede24ffe178cee8.md) | 69 | `declaration-track:e2dd1321bede24ffe178cee8308109f4b44babc9ffce654c486c1020d68c4118` |
| 9 | `def` | [Simps.symm_apply](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/simps-symm-apply--c13ba3e96d4a3b31e15d6870.md) | 74 | `declaration-track:c13ba3e96d4a3b31e15d68709b7398af1809a923016fd6f59d853074653d6268` |
| 10 | `lemma` | [symm_symm](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/symm-symm--fc799cb568103f664a812f08.md) | 78 | `result-track:fc799cb568103f664a812f08c4078fef348fe5365f5b864268208f7eaa187bde` |
| 11 | `theorem` | [symm_apply_eq](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/symm-apply-eq--29b0ad019a4ac07dbef59dbc.md) | 80 | `result-track:29b0ad019a4ac07dbef59dbc880c6ea87b9bd0ee713af7b0eba2c9c8bf2f414a` |
| 12 | `theorem` | [eq_symm_apply](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/eq-symm-apply--025798db2cbdb36b7ae6886d.md) | 84 | `result-track:025798db2cbdb36b7ae6886d722e7a8c4667c141dcf54e1e51548d1ee3ddaf2d` |
| 13 | `theorem` | [apply_symm_apply](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/apply-symm-apply--8fc3ea0e7a3aa7cc356ae7a5.md) | 88 | `result-track:8fc3ea0e7a3aa7cc356ae7a5f40ebed96e8755e84265ab59f9ff67ffa448c7ea` |
| 14 | `theorem` | [symm_apply_apply](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/symm-apply-apply--d5fd5b06c2001c849e0bb678.md) | 92 | `result-track:d5fd5b06c2001c849e0bb678e10db7d7a75c1372d89addb2e9955391454694c9` |
| 15 | `def` | [refl](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/refl--d1c57be2ad72277ab09aac45.md) | 98 | `declaration-track:d1c57be2ad72277ab09aac45ae844b7a4daf87bafdf4f949151ea9b2374c5880` |
| 16 | `lemma` | [symm_refl](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/symm-refl--9c4c4319decbe7578506807e.md) | 102 | `result-track:9c4c4319decbe7578506807e98cecb91b75abeef24be9496c5b2b234069d0a09` |
| 17 | `def` | [trans](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/trans--b2bd92abb5fd9c7384d994d5.md) | 106 | `declaration-track:b2bd92abb5fd9c7384d994d5da189458448fce9dc021e2579a5c479bc2dd7717` |
| 18 | `lemma` | [trans_refl](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/trans-refl--f4380a58e9817065146bc72f.md) | 110 | `result-track:f4380a58e9817065146bc72f1d01a9994f671a747d77020292c0b291aa1b52dc` |
| 19 | `lemma` | [refl_trans](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/refl-trans--673613eb85f0b98edbe2e43e.md) | 111 | `result-track:673613eb85f0b98edbe2e43e8a29f4bc36ef1b08e4fbb17e8e0df4f8aeb10046` |
| 20 | `lemma` | [self_trans_symm](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/self-trans-symm--1274265b2c0edf971bc4e6b1.md) | 114 | `result-track:1274265b2c0edf971bc4e6b1b30d9dc82ad3874e39797869a4d3cded8b0bb1ea` |
| 21 | `lemma` | [symm_trans_self](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/symm-trans-self--ee0746ae468624056d4f5920.md) | 118 | `result-track:ee0746ae468624056d4f592064afd97bbb54ec14a81c7a6ada8baee4a3a22464` |
| 22 | `lemma` | [coe_symm_toEquiv](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/coe-symm-toequiv--3201f8a177ce87d50cfe84d7.md) | 122 | `result-track:3201f8a177ce87d50cfe84d7ba8aa7e81210e79088a07a27dddcdae72f579e0b` |
| 23 | `lemma` | [toEquiv_symm](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/toequiv-symm--b9c9156c7312974f012a07a9.md) | 125 | `result-track:b9c9156c7312974f012a07a9eefbd6cfea22da0fe06cc9b57e92f40aee4ba409` |
| 24 | `lemma` | [toEquiv_trans](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/toequiv-trans--ba4fe33d0bf5095085ec0be8.md) | 128 | `result-track:ba4fe33d0bf5095085ec0be87e8de818202d676dcd0a079191b71f54113bb2c0` |
| 25 | `instance` | [instOne](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instone--eb94bf0a3b9a46b928c50fd9.md) | 131 | `declaration-track:eb94bf0a3b9a46b928c50fd9998fc3959a89d70c923b2b023ac1f4669c9ad1b3` |
| 26 | `instance` | [instMul](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instmul--31f74bd1906226862e8a58d1.md) | 132 | `declaration-track:31f74bd1906226862e8a58d17d23150cea1997e3f3e174f393ae87c9782ca302` |
| 27 | `instance` | [instInv](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instinv--3aae7314d07dcdc47814ff79.md) | 133 | `declaration-track:3aae7314d07dcdc47814ff7950ea4dd9d4946fc9f24dc7d2cb17164f83bd24ab` |
| 28 | `instance` | [instDiv](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instdiv--47855ed1ea107f55bc8f7054.md) | 134 | `declaration-track:47855ed1ea107f55bc8f705453c171a4b32adc83e809f16f48b66d86d0bda268` |
| 29 | `instance` | [instPowNat](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instpownat--9d0e7c7b8e8d89b878c8cddf.md) | 136 | `declaration-track:9d0e7c7b8e8d89b878c8cddfe79a6c5868a4229b6b22375b48ecbb39947fcddb` |
| 30 | `instance` | [instPowInt](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instpowint--f322b824595fc17bc729f5b5.md) | 139 | `declaration-track:f322b824595fc17bc729f5b51cf7ba2ee646a0b943856df2e7f055625b17caa7` |
| 31 | `instance` | [instGroup](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/instgroup--dcff42d736e85a39bf161981.md) | 145 | `declaration-track:dcff42d736e85a39bf1619814a9d3bdfded0be72704b8ba86f2a83e083fe6f8a` |
| 32 | `def` | [toPerm](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/toperm--ead12880bec4f81d9eca6266.md) | 151 | `declaration-track:ead12880bec4f81d9eca62669877fe986b5949c6eff31026f4f225e18bbb0102` |
| 33 | `def` | [toAddConstMapHom](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/toaddconstmaphom--ffbe5b79621a09229fca7bec.md) | 156 | `declaration-track:ffbe5b79621a09229fca7bec7fa921a3c8ff6dc83c6013ff5d4d0db4151ec949` |
| 34 | `def` | [equivUnits](../../../../mathematics/Algebra/Equiv/Variant4d543ea932bd32864f556925f6ff7572e5c05ba218d58e98b1be260dc9f7930c.lean/declarations/equivunits--9063fa5c8bf7e876fcb6446e.md) | 163 | `declaration-track:9063fa5c8bf7e876fcb6446e4af94b4b7d8e61944f93f00213d57cd2b1af2c5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
