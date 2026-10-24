# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceae1dd074411a460371363b9269d889146b5b56",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceae1dd074411a460371363b9269d889146b5b56`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coe_mul_coe](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/coe-mul-coe--9bac71e7a29e725eeeea910f.md) | 44 | `result-track:9bac71e7a29e725eeeea910fcf34cdc389a5a4948888f2f973c11781b6052029` |
| 2 | `lemma` | [coe_set_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/coe-set-pow--f3d3255f44d0c02ded98abd8.md) | 49 | `result-track:f3d3255f44d0c02ded98abd80137e55e01048823b7920abe63723be7e9b6da9a` |
| 3 | `theorem` | [mul_subset](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/mul-subset--2e16021f4f9c983e47f430bb.md) | 62 | `result-track:2e16021f4f9c983e47f430bb859be699d85f63f3343d8516f5b597eb7cff287e` |
| 4 | `theorem` | [mul_subset_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/mul-subset-closure--9f8608dd76e6f6ca9335cfa4.md) | 66 | `result-track:9f8608dd76e6f6ca9335cfa465c8f5e1d2e9dc827c825c5930b2b2d87cfc174e` |
| 5 | `theorem` | [coe_mul_self_eq](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/coe-mul-self-eq--bbe63faddd2635fb212a6242.md) | 70 | `result-track:bbe63faddd2635fb212a6242418f244a5f4a8e25815ca6ca17bbd750238d1fa8` |
| 6 | `theorem` | [closure_mul_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/closure-mul-le--42f25d51b5c37fcc1df8de64.md) | 77 | `result-track:42f25d51b5c37fcc1df8de6471fa117ba3e07589a1f651fb4a20c89dab23d95d` |
| 7 | `lemma` | [closure_pow_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/closure-pow-le--75a73005b42c18b8829b6c54.md) | 83 | `result-track:75a73005b42c18b8829b6c544ad6e52416a990fac743e193ce899c57c0f2a52f` |
| 8 | `lemma` | [closure_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/closure-pow--bba99dd0c5d6002591b11682.md) | 94 | `result-track:bba99dd0c5d6002591b11682ec9024ed14bb4929d708cb669aa3c9ede17685a8` |
| 9 | `theorem` | [sup_eq_closure_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/sup-eq-closure-mul--45bc6b2aa4ade98510a8ad53.md) | 98 | `result-track:45bc6b2aa4ade98510a8ad53c7c11c4fabf90a00ba494d2d64515242337968b9` |
| 10 | `theorem` | [pow_smul_mem_closure_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/pow-smul-mem-closure-smul--be49e0404b6224ca62a2dcdc.md) | 105 | `result-track:be49e0404b6224ca62a2dcdc458b073bc2df98615ec962bb6e5a0d31128eb414` |
| 11 | `def` | [inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv--d5fb19e223bb9617b6145a46.md) | 120 | `declaration-track:d5fb19e223bb9617b6145a4680b2d0a2a84be0f0c33c57840dec208ac7dcd8d8` |
| 12 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/coe-inv--32b3a66cbc0541d00213a5be.md) | 129 | `result-track:32b3a66cbc0541d00213a5becbc5911686e5717a30b1bded5f7df01c12b10462` |
| 13 | `theorem` | [mem_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/mem-inv--480f4479a58d076fd41f11f8.md) | 133 | `result-track:480f4479a58d076fd41f11f8bb4f26b832ce20f7c5167e01abf14ed10925bba4` |
| 14 | `def` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/involutiveinv--591ce31a1db008792061019e.md) | 138 | `declaration-track:591ce31a1db008792061019ee5a176023cc89a5a304c3d21082e5c166883b786` |
| 15 | `theorem` | [inv_le_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-le-inv--dc89342660907787043b101d.md) | 144 | `result-track:dc89342660907787043b101d3d8393683ae9373871bab3c678d3ab7aa8e2a6a3` |
| 16 | `theorem` | [inv_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-le--7bd93674f1b760e0de73f327.md) | 148 | `result-track:7bd93674f1b760e0de73f3279fe774e4e292ed9031724e60765bf10641049270` |
| 17 | `def` | [invOrderIso](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/invorderiso--aef25c3fa363c8db7f2c6f39.md) | 153 | `declaration-track:aef25c3fa363c8db7f2c6f39d3d7fb3d419595585bf74fe66441654d9ef49a54` |
| 18 | `theorem` | [closure_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/closure-inv--edb8292695132ec4178e5fcd.md) | 158 | `result-track:edb8292695132ec4178e5fcddeae71d0eab4e9953cf8a648b259f9f6e9350e11` |
| 19 | `lemma` | [mem_closure_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/mem-closure-inv--c4b5cf2aaf20687649a07544.md) | 166 | `result-track:c4b5cf2aaf20687649a07544e3aba619ad793671a2948d083944a6618c1b743f` |
| 20 | `theorem` | [inv_inf](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-inf--8a39bde1612cee3a01fe9952.md) | 170 | `result-track:8a39bde1612cee3a01fe9952b5339c213b9b5603d9ca46176a6f699c54076f5d` |
| 21 | `theorem` | [inv_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-sup--f4193282a2cf09585ba56f56.md) | 174 | `result-track:f4193282a2cf09585ba56f56ea0a1712e82b583c9bd9fd08ba2b1eab710b1895` |
| 22 | `theorem` | [inv_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-bot--e2237a7534e9cd1b1883d2a4.md) | 178 | `result-track:e2237a7534e9cd1b1883d2a49bda716d5cc2751f7914eb49be53a82fb523e322` |
| 23 | `theorem` | [inv_top](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-top--fe6cfd489c466baa9d579ab3.md) | 182 | `result-track:fe6cfd489c466baa9d579ab35eb68111b26a817e05814c92ffec17f195133c4c` |
| 24 | `theorem` | [inv_iInf](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-iinf--fbcbe5a3adaadad7814f7f5e.md) | 186 | `result-track:fbcbe5a3adaadad7814f7f5e63952cb203f34a5bc5c9399e232132ee6dbf5069` |
| 25 | `theorem` | [inv_iSup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/inv-isup--c1b145eddd8d62a37f0aa6c9.md) | 190 | `result-track:c1b145eddd8d62a37f0aa6c9c4c498ad8267815af2c2cb89bc7fdad5255d518c` |
| 26 | `def` | [pointwiseMulAction](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/pointwisemulaction--49f8606b33f10b5d44451f99.md) | 205 | `declaration-track:49f8606b33f10b5d44451f9969eab23dab3d17fd0744e740067b8c937e864e69` |
| 27 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/coe-pointwise-smul--3c98dcbed0e8d760d9b7d79b.md) | 217 | `result-track:3c98dcbed0e8d760d9b7d79b074e6785c446142129816b10bf9a8e79a772b859` |
| 28 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/smul-mem-pointwise-smul--19b71d50de134c23042c846f.md) | 220 | `result-track:19b71d50de134c23042c846f15123a6b2e4bee3c4caf6d5cb8ab1b66c2e1c3c1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/instance--953d2c3fd0b299a29d6d3b3d.md) | 223 | `declaration-track:953d2c3fd0b299a29d6d3b3d1df5f199e75bc2a6c181ad04a96da433488759a1` |
| 30 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/mem-smul-pointwise-iff-exists--e556318f53ac126479cd2901.md) | 226 | `result-track:e556318f53ac126479cd29012a45120e288a05fc3875ca37dd4717e48b38227e` |
| 31 | `theorem` | [smul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/smul-bot--ecc79e0a72222fbd76ae08af.md) | 231 | `result-track:ecc79e0a72222fbd76ae08af7984430b1eb5df7a040efcb21918b945030455cc` |
| 32 | `theorem` | [smul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/smul-sup--d8e89e7342465513c8b7ff0c.md) | 234 | `result-track:d8e89e7342465513c8b7ff0c8c06c3e05bdcbafc341f673df3ff48e9404840f7` |
| 33 | `theorem` | [smul_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/smul-closure--2010671abe5cea6f6d079918.md) | 237 | `result-track:2010671abe5cea6f6d079918a32acc1520658caf4e82c6f7c40337dee4b9e21c` |
| 34 | `lemma` | [pointwise_isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/pointwise-iscentralscalar--3f4f7be91f704b3f28b29603.md) | 240 | `result-track:3f4f7be91f704b3f28b29603441bdf0c32d669a94deebfbfb17b8c4fd63f6956` |
| 35 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/smul-mem-pointwise-smul-iff--8f04d1405c93df1c61d06346.md) | 253 | `result-track:8f04d1405c93df1c61d063464fb8f533dc008cc592f45109ce4105c195717206` |
| 36 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--e97810700e0b46f4965b1699.md) | 256 | `result-track:e97810700e0b46f4965b16992021caa8483c9a3b9e0cf72b9d897ea33cb8f6f0` |
| 37 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/mem-inv-pointwise-smul-iff--511c16c6cb72f1e406113a9a.md) | 260 | `result-track:511c16c6cb72f1e406113a9a62cba3937b77c6d75e1dc5a9194f99bc1e12a228` |
| 38 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/pointwise-smul-le-pointwise-smul-iff--19ffce41764a9c073bf6ad6d.md) | 264 | `result-track:19ffce41764a9c073bf6ad6d6e2f08d708dc0c3d846102a7b08a815b0da4e214` |
| 39 | `theorem` | [pointwise_smul_subset_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/pointwise-smul-subset-iff--e63feae6ed8ac2d3deda8c6d.md) | 267 | `result-track:e63feae6ed8ac2d3deda8c6d3e2a9eb158173a4d549c3b6333216b267769ea37` |
| 40 | `theorem` | [subset_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/subset-pointwise-smul-iff--860f4f7527233b10b4b930a9.md) | 270 | `result-track:860f4f7527233b10b4b930a98a2c96153199c275b493261c14a36f98866b8869` |
| 41 | `theorem` | [submonoid_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean/declarations/submonoid-closure--91a84274eaa2db3e763c65b1.md) | 281 | `result-track:91a84274eaa2db3e763c65b1250bf5ab96d232a81651083e0b1c1d418af2d944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
