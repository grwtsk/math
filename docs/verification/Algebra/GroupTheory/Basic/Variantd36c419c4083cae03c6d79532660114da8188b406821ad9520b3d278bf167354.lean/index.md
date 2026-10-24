# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc881dec16d6fff7fd508a7780c072b503e7dad",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc881dec16d6fff7fd508a7780c072b503e7dad`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DomMulAct](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/dommulact--e6a6c76db4b774c71c8dcdfd.md) | 100 | `declaration-track:e6a6c76db4b774c71c8dcdfd9dba8d2d0af3f96a19add96f56c9521447cbb232` |
| 2 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk--9049c0351d97de0bdcc6d4ff.md) | 111 | `declaration-track:9049c0351d97de0bdcc6d4ff4fc89006b037cc3f596215123f8569846e594011` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--e752ab78e3bd9fb48ec13448.md) | 126 | `declaration-track:e752ab78e3bd9fb48ec13448374163bfbb84835201c09bf4f108b057a97ef461` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--50573586f561d543f6b6b0a0.md) | 129 | `declaration-track:50573586f561d543f6b6b0a0fbf91dc745dba547d5f213ba5a27d610e14ff2ce` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--d57d85acfbdb007ced6ae178.md) | 130 | `declaration-track:d57d85acfbdb007ced6ae178f0ba5b2a98a5a32aaff885987e0a6b98eb09b0d1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--117ba5c254b484373939a21d.md) | 131 | `declaration-track:117ba5c254b484373939a21de42069de1e64393e179a640c03c48b537a6b70b9` |
| 7 | `lemma` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk-one--adaea7db8813f3c37a469db4.md) | 134 | `result-track:adaea7db8813f3c37a469db4869d7239c0a20e2528170d3993b3d444d2c89ff2` |
| 8 | `lemma` | [symm_mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/symm-mk-one--9294479307502bbbe730c941.md) | 137 | `result-track:9294479307502bbbe730c9414f3d61c1c43ec8ed48af49a31b8f5bd38f29e042` |
| 9 | `lemma` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk-mul--a26551fe97b0487296d5a8a8.md) | 140 | `result-track:a26551fe97b0487296d5a8a818ba83a2f6b654e09401d1dbf0d72029b9c87b68` |
| 10 | `lemma` | [symm_mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/symm-mk-mul--1e2d3c19519a18cdc8b40371.md) | 143 | `result-track:1e2d3c19519a18cdc8b40371d8657ca4620a0c556185587d4e65a97b2febe370` |
| 11 | `lemma` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk-inv--2954922f81d1d2d55bcbe9d7.md) | 146 | `result-track:2954922f81d1d2d55bcbe9d72de782d868f450b65371462071fd706bed03a1c1` |
| 12 | `lemma` | [symm_mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/symm-mk-inv--37b9a6ef46769bb75871a60c.md) | 149 | `result-track:37b9a6ef46769bb75871a60c82f169da8a0f50a43dbb55068e6dda90c257fe23` |
| 13 | `lemma` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk-pow--ebeab44787019c64bbd0fc32.md) | 152 | `result-track:ebeab44787019c64bbd0fc32c6bf521519b6a7e3a07ba3b9d42007cdc03e9f25` |
| 14 | `lemma` | [symm_mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/symm-mk-pow--2c25cdc124b4f38c02336f85.md) | 155 | `result-track:2c25cdc124b4f38c02336f8588e7e3f4f7f943bb8a77a195139cf5b4ae995205` |
| 15 | `lemma` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk-zpow--1763cde3b1c8c783b30c11dc.md) | 158 | `result-track:1763cde3b1c8c783b30c11dc991a5cc3d237e622714ceee731a261de914052e2` |
| 16 | `lemma` | [symm_mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/symm-mk-zpow--1dd7bc3d4d5bd7c04e388fd3.md) | 161 | `result-track:1dd7bc3d4d5bd7c04e388fd3f3b5428fe6088b2168a2042fab2c520ee6dc29f3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--5818a4b2093291d703fb8e3e.md) | 166 | `declaration-track:5818a4b2093291d703fb8e3eb2a0d333641e5f902a4d1c1ad4e1a15dbe84c41f` |
| 18 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/smul-apply--760dbbc3cb5b93a55c66b3fd.md) | 170 | `result-track:760dbbc3cb5b93a55c66b3fdad7bc81cef5ba61dcdf1253293708affc14c1b68` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--dff71a490f438e24bde5f6a3.md) | 173 | `declaration-track:dff71a490f438e24bde5f6a3072bc2efc1a493ec7f05f3586a5123aeffc6c5b0` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--6853e9355eccbee656127f39.md) | 177 | `declaration-track:6853e9355eccbee656127f39f4ca888db9a09e271bac133d53bf148f8c8586a9` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--06c875f479f74b1aa4490fb0.md) | 181 | `declaration-track:06c875f479f74b1aa4490fb000dce0991ca7dccaf768765b11fdedc5039b2777` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--590e1c88037b87061693abe9.md) | 185 | `declaration-track:590e1c88037b87061693abe930a933863cf5ea01f48360257d0ed7139c33a702` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--886b856ecadbbf3045306d3c.md) | 193 | `declaration-track:886b856ecadbbf3045306d3c457df18da2c01a7743fd5869a0c2dd0d8b7b63c9` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--af6412aeef2af2ca945a0793.md) | 196 | `declaration-track:af6412aeef2af2ca945a079377a86744693497b506a5c5ff69a42a516961e107` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--986338eb69c082ac3a877f5e.md) | 200 | `declaration-track:986338eb69c082ac3a877f5e71288795f537b882f8be59d214d459c3aef16d1a` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--c69c6f5024f32b0cdb07fa38.md) | 204 | `declaration-track:c69c6f5024f32b0cdb07fa3851f8a7483490042a7e692729622b4ec21f766b1c` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--39d760784c1c359d3b93a4fd.md) | 208 | `declaration-track:39d760784c1c359d3b93a4fd9f5b018da1a481eb930eb5fd0ade49c5dbed15d8` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--3af063eec78b0ce75027c6f5.md) | 216 | `declaration-track:3af063eec78b0ce75027c6f52b3a538b229758194bd010eb98856f14dd0427fb` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--a99a2d494e7d625f09b04fc8.md) | 219 | `declaration-track:a99a2d494e7d625f09b04fc8e6c6a47e56236b309ad80a2a49798921327d9f1e` |
| 30 | `theorem` | [smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/smul-monoidhom-apply--b7c6d5b545d9bc1e6894eaef.md) | 223 | `result-track:b7c6d5b545d9bc1e6894eaef068b9f54a8ae210c23044dc7d4b97666a50408e2` |
| 31 | `theorem` | [mk_smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk-smul-monoidhom-apply--1a26b622b1346152de1c71c7.md) | 227 | `result-track:1a26b622b1346152de1c71c7942db4a266da03822c6cf039590f61b64c231246` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--52cea470022c528988ccf778.md) | 229 | `declaration-track:52cea470022c528988ccf778400dc4533348da6993eec0fc733d18854117b3c0` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--0a12184416401cae3f3965cb.md) | 239 | `declaration-track:0a12184416401cae3f3965cb8e2e37cd9cc2b0a84db663d519e55bfd65c5a9e4` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--736b946b2aa5982f6169d1ae.md) | 242 | `declaration-track:736b946b2aa5982f6169d1ae2e1e1cec002fca606db9ad8a4ca05b614cc4b208` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--e0a3304935f6a6f58b89bb46.md) | 245 | `declaration-track:e0a3304935f6a6f58b89bb46bafd5316b0c541e841d4135d7d830382f79dfe0d` |
| 36 | `theorem` | [smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/smul-addmonoidhom-apply--7a0884c6edb61b485569ffc1.md) | 248 | `result-track:7a0884c6edb61b485569ffc1e1cf64d4e5acd915966d64b7b39763c6d5db01ee` |
| 37 | `theorem` | [mk_smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/mk-smul-addmonoidhom-apply--a795b9932906180d5a52bd53.md) | 252 | `result-track:a795b9932906180d5a52bd53f65bb90b57a2528de76b5c379d1c249f8b20b1fc` |
| 38 | `theorem` | [coe_smul_addMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/coe-smul-addmonoidhom--564b3b0c501686dcfa8cd9bf.md) | 254 | `result-track:564b3b0c501686dcfa8cd9bf2c99a15ee38f5052927576f8cb5e708ee835c97d` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--938a317a40d699542c7db0f7.md) | 261 | `declaration-track:938a317a40d699542c7db0f78bff63ca564b42b79a4338554389a8bd07786119` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--632edaa01799a6ee194b1163.md) | 264 | `declaration-track:632edaa01799a6ee194b116347a5548f5d76e5df30164db095ccfdae4ec82d75` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd36c419c4083cae03c6d79532660114da8188b406821ad9520b3d278bf167354.lean/declarations/instance--84fbd47b25c3d0197cc2b785.md) | 268 | `declaration-track:84fbd47b25c3d0197cc2b78590dfc1df7b48f0596a331454efa171bed46b2a87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
