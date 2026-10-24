# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ResidueField.Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d13d9e638a8f38ad32c4f81b442e1b8505eed5f9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d13d9e638a8f38ad32c4f81b442e1b8505eed5f9`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Stalk` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace.ResidueField` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefield--1881ce2c90b87bf53541f6d2.md) | 49 | `declaration-track:1881ce2c90b87bf53541f6d24e42f22fc01192cc5dbd326e8c48cc5dc46f83ef` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--634e1d179dfd2c9557965920.md) | 52 | `declaration-track:634e1d179dfd2c955796592095eba333b586d9f9cefee3526d40941bf064158a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--4904c146472d4cb129fe9968.md) | 55 | `declaration-track:4904c146472d4cb129fe9968be4d42f42fac86d0c1b0915421ac0634293b115c` |
| 4 | `def` | [residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residue--b70b5eb1548d036497b18ac9.md) | 59 | `declaration-track:b70b5eb1548d036497b18ac92500367823a28d074e267102d11560983d6007c0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--87e8e9e64821242f6674750f.md) | 64 | `declaration-track:87e8e9e64821242f6674750f162183de64480e062ebf91db2fe02301b03df64e` |
| 6 | `lemma` | [Spec_map_residue_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/spec-map-residue-apply--8d880ff71608f911950572af.md) | 71 | `result-track:8d880ff71608f911950572af0fda130a9513d89677c4525ccc339630e568bc7f` |
| 7 | `lemma` | [residue_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residue-surjective--5672dfbb3989769b5c919dd2.md) | 75 | `result-track:5672dfbb3989769b5c919dd2576484d75be28dbe561fbb629bc0133136b36401` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--7a8539382fe397258e0b5d73.md) | 78 | `declaration-track:7a8539382fe397258e0b5d7329700850ad5cf2c586b5d5672477d6a239dfb8e9` |
| 9 | `def` | [descResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/descresiduefield--a31ce71df0b9e537f499d756.md) | 83 | `declaration-track:a31ce71df0b9e537f499d75644c966e087b6c6e9963383088b1c0a086dbf8759` |
| 10 | `lemma` | [residue_descResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residue-descresiduefield--0b1cff9239315b6df291fa3b.md) | 89 | `result-track:0b1cff9239315b6df291fa3bdfc08c49a6ad26637a5f3c07e298bc9b0e1cf79d` |
| 11 | `def` | [evaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation--ab83adbbb1b6acfddea0189e.md) | 101 | `declaration-track:ab83adbbb1b6acfddea0189e8930ed6608a7b2b406ee5b2659e4b4e965b4a0ab` |
| 12 | `lemma` | [germ_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/germ-residue--4f4d01e28aa48d467711f090.md) | 105 | `result-track:4f4d01e28aa48d467711f0900610162520a1f15c49abe623ac9d9df7a847bd0d` |
| 13 | `abbrev` | [Γevaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation--56d1dbfd8c423325d689710b.md) | 108 | `declaration-track:56d1dbfd8c423325d689710ba52f3487c839931b7d10e6879206c1b980c3a6b8` |
| 14 | `lemma` | [evaluation_eq_zero_iff_notMem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen--9e0257c9dc03be0030bcabda.md) | 112 | `result-track:9e0257c9dc03be0030bcabdabfbdc4a76e9e92d90fbd53a040b8beea2ea0f594` |
| 15 | `lemma` | [evaluation_ne_zero_iff_mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation-ne-zero-iff-mem-basicopen--e90bb06f29231026f72b9681.md) | 119 | `result-track:e90bb06f29231026f72b96818f08f41d321b7473d40842770f0812f759e41e35` |
| 16 | `lemma` | [basicOpen_eq_bot_iff_forall_evaluation_eq_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/basicopen-eq-bot-iff-forall-evaluation-eq-zero--0d4b2ae196ba1ab3f5e9b909.md) | 123 | `result-track:0d4b2ae196ba1ab3f5e9b9096296dba193a5c0d2c9f40c273f07c6e3cea2967a` |
| 17 | `def` | [Hom.residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/hom-residuefieldmap--4ac9dc64137197e43ddb5ac9.md) | 131 | `declaration-track:4ac9dc64137197e43ddb5ac97d5d57aee30478afaf98388feec5a9b771059907` |
| 18 | `lemma` | [residue_residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residue-residuefieldmap--feacd8ce8f657273729e585c.md) | 136 | `result-track:feacd8ce8f657273729e585ce3148524c7455a1f4fa7a0ed271bc6f33ecc0ffa` |
| 19 | `lemma` | [residueFieldMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldmap-id--9a6185976c8630042fa325d3.md) | 142 | `result-track:9a6185976c8630042fa325d3436ba41b080690848a86f9549e4f2695d8bdc737` |
| 20 | `lemma` | [residueFieldMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldmap-comp--7caac9e07116e267f3523794.md) | 147 | `result-track:7caac9e07116e267f35237943d2dfc6dd176170213ccc6d9ce649bfc263610d3` |
| 21 | `lemma` | [evaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation-naturality--84bc51da369cc785f797611c.md) | 152 | `result-track:84bc51da369cc785f797611c362520d9af14362f64893eaea7555b0ffb4ec96c` |
| 22 | `lemma` | [evaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation-naturality-apply--a5199d341765b3cee391fc14.md) | 157 | `result-track:a5199d341765b3cee391fc1410df483f4d03027bc24bafce512e77316bc385bf` |
| 23 | `lemma` | [Γevaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation-naturality--a8b47e465fb9082d1fd08f83.md) | 163 | `result-track:a8b47e465fb9082d1fd08f83dfdae2ca36e2270562c0e72189b2045170000022` |
| 24 | `lemma` | [Γevaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/evaluation-naturality-apply--bebc4f67538225d4f33893d1.md) | 168 | `result-track:bebc4f67538225d4f33893d1cb0f754bd3d01479ac302f87fa81c89811be5527` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--fc6e9ead8e0eea0230f300c6.md) | 173 | `declaration-track:fc6e9ead8e0eea0230f300c6a02db2a79ea2a46baa7f4bdf90095f97874bf889` |
| 26 | `def` | [residueFieldCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldcongr--157ba0d969264c6f4bf02ef2.md) | 181 | `declaration-track:157ba0d969264c6f4bf02ef2793c20b06396495dd015b32cdd3fc5074285a548` |
| 27 | `lemma` | [residueFieldCongr_refl](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldcongr-refl--f91b51581a98a07649fc58a4.md) | 186 | `result-track:f91b51581a98a07649fc58a41fa6b28c14fcec01d6bf799bbd9628cf9fba303e` |
| 28 | `lemma` | [residueFieldCongr_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldcongr-symm--e7beff883633b8f59f068722.md) | 190 | `result-track:e7beff883633b8f59f068722ac9472767f444343dd6e62c13bb6511ee2325d97` |
| 29 | `lemma` | [residueFieldCongr_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldcongr-inv--460c76abca8da33ae4c8e8a8.md) | 194 | `result-track:460c76abca8da33ae4c8e8a83edb83cf0581d6142d0704c053419b10cecf7e74` |
| 30 | `lemma` | [residueFieldCongr_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldcongr-trans--f2d0a15da953e23b68706d88.md) | 198 | `result-track:f2d0a15da953e23b68706d889f020de2e30dcd7570c421d99f93990898124651` |
| 31 | `lemma` | [residueFieldCongr_trans_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldcongr-trans-hom--20f91628763d8a1854cd05d5.md) | 204 | `result-track:20f91628763d8a1854cd05d5e635629c7a676cd28e40cc8b9577bfc56006a947` |
| 32 | `lemma` | [residue_residueFieldCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residue-residuefieldcongr--a370a154e217edfae87bcaae.md) | 211 | `result-track:a370a154e217edfae87bcaae927d70048ceb3ddf10681da16c609a8395977d83` |
| 33 | `lemma` | [Hom.residueFieldMap_congr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/hom-residuefieldmap-congr--32914a5b0b61fea53ee9367b.md) | 217 | `result-track:32914a5b0b61fea53ee9367b180807b4236be568fc7b803213c280fc03d853c2` |
| 34 | `def` | [fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/fromspecresiduefield--dc5dfd9476f190a742324e8f.md) | 226 | `declaration-track:dc5dfd9476f190a742324e8ffe68033ff91cc3a579e6e80f08cd083551200865` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--ccb515210cbb5a69e37af8a7.md) | 230 | `declaration-track:ccb515210cbb5a69e37af8a7ab17ebe30dfff3e9eac416d1660f93c48dbe7f23` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--2a1c133a96d94cebb9f34846.md) | 236 | `declaration-track:2a1c133a96d94cebb9f34846803190afc1e9b8e794e8ecb1d1e55d15fab76fcf` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--c78f845c49aa51c750c8246f.md) | 239 | `declaration-track:c78f845c49aa51c750c8246f9fa7c48cb595731602be3b8cc6c0db90baf8ceff` |
| 38 | `lemma` | [residueFieldCongr_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/residuefieldcongr-fromspecresiduefield--f61decb1e45d9610f78fef94.md) | 242 | `result-track:f61decb1e45d9610f78fef941624fa030ca2fd05bcc3b812006c2d31423385c5` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--85e5bffb669fd2b11cd0edce.md) | 247 | `declaration-track:85e5bffb669fd2b11cd0edceada3276d82b448fc5edbddf9677ff60d9a9a5665` |
| 40 | `lemma` | [Hom.Spec_map_residueFieldMap_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/hom-spec-map-residuefieldmap-fromspecresiduefield--60fe04800d4911eb6e63ab56.md) | 250 | `result-track:60fe04800d4911eb6e63ab5683ed44f43a8989076b4fff002e3e36356a94387d` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/instance--6e255309d3f505d39dcc4bad.md) | 258 | `declaration-track:6e255309d3f505d39dcc4bada5f5fc0970613c6cd7264c3d123bd9a9ce3528c4` |
| 42 | `lemma` | [fromSpecResidueField_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/fromspecresiduefield-apply--5d1e4cd0df3a28428674dad1.md) | 261 | `result-track:5d1e4cd0df3a28428674dad17320c7c6086cebfad8628cf98e8cc3444b07e632` |
| 43 | `lemma` | [range_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/range-fromspecresiduefield--1789e1aaa85caab2c78ed9d9.md) | 265 | `result-track:1789e1aaa85caab2c78ed9d950d042a65864600850de9868801351d9477fd2fc` |
| 44 | `lemma` | [descResidueField_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/descresiduefield-fromspecresiduefield--15423e43a6366edf41a2a401.md) | 275 | `result-track:15423e43a6366edf41a2a40187e3cb2d3eb5e844c1800f99e7d1fe7b4466aef2` |
| 45 | `lemma` | [descResidueField_stalkClosedPointTo_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/descresiduefield-stalkclosedpointto-fromspecresiduefield--633891eaa7acc5d6f5c6adaf.md) | 281 | `result-track:633891eaa7acc5d6f5c6adaf298295d7fa7831e7674f8cef57026754e2e04df7` |
| 46 | `lemma` | [SpecToEquivOfField_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/spectoequivoffield-eq-iff--93a7cf9a789e9b8e2b4b26e3.md) | 292 | `result-track:93a7cf9a789e9b8e2b4b26e3399b887bb082c9dcb7698ffd72e0f85daa95b06b` |
| 47 | `def` | [SpecToEquivOfField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/declarations/spectoequivoffield--1214ad9bbffd8ee916410f3c.md) | 305 | `declaration-track:1214ad9bbffd8ee916410f3cdd503f26b9a2a29fdb4734d155e9dfc2b4811e81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
