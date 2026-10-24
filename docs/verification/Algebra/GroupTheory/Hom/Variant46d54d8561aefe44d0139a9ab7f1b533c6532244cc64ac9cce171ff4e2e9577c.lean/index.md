# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cb76d343740df1923fa2a4af439e4db1cadfc00",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cb76d343740df1923fa2a4af439e4db1cadfc00`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mkmulhom--70dd069927001ab20aef6826.md) | 51 | `declaration-track:70dd069927001ab20aef68261a981ec886647e6405b2b3f9babf56be21d04a06` |
| 2 | `def` | [ker](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/ker--ba2814fc3a328046f304045e.md) | 56 | `declaration-track:ba2814fc3a328046f304045eb6ce22bcec80f4db21aa0f4ffbe7de6f96a3f031` |
| 3 | `theorem` | [ker_coeMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/ker-coemulhom--f4c076c7125d9bca1a463d98.md) | 63 | `result-track:f4c076c7125d9bca1a463d983d11330adafb3761f6a74493e3670f7f70923db8` |
| 4 | `theorem` | [ker_rel](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/ker-rel--fa9d3fdc7d838e59509687c8.md) | 68 | `result-track:fa9d3fdc7d838e59509687c87ac5771d398cea83e3c963ba4e5f73c2d727d7f9` |
| 5 | `theorem` | [ker_mkMulHom_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/ker-mkmulhom-eq--92980aa6ec4efa4e3cb0d300.md) | 73 | `result-track:92980aa6ec4efa4e3cb0d300f43707a4c36900deaa066054022455b83cc40714` |
| 6 | `abbrev` | [mulKer](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mulker--5bb05e120025ef22e9f82e8b.md) | 78 | `declaration-track:5bb05e120025ef22e9f82e8b556c55b45fa51c014d46ed845137aa4952e3267d` |
| 7 | `theorem` | [mul_ker_mk_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mul-ker-mk-eq--507b7423b1aa5a7729f99214.md) | 88 | `result-track:507b7423b1aa5a7729f99214de60a838ccda63cd4b9ca6c9489e3c98529e19ea` |
| 8 | `def` | [mapGen](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mapgen--31ca3942be8cac7955513139.md) | 101 | `declaration-track:31ca3942be8cac7955513139a58e93b3a0fd1c335f8164fcab2e1dd1a70222f4` |
| 9 | `def` | [mapOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mapofsurjective--612bb8d50bb8f8f24b36cf4a.md) | 110 | `declaration-track:612bb8d50bb8f8f24b36cf4a59bc76f04b6f1f4e1554dd4be64aaa61da527cc6` |
| 10 | `theorem` | [mapOfSurjective_eq_mapGen](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mapofsurjective-eq-mapgen--01000f5ddc38e9e40aaa323e.md) | 121 | `result-track:01000f5ddc38e9e40aaa323e7ff0dc402256269f425d2a2792549cf577c2bcb0` |
| 11 | `def` | [correspondence](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/correspondence--e78b806d10994397e22480e4.md) | 131 | `declaration-track:e78b806d10994397e22480e4264cd9ab62b0ae8c8af0c702538fcedf6da3a06a` |
| 12 | `def` | [mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mk--16c5375be1e0905bc0cf0913.md) | 167 | `declaration-track:16c5375be1e0905bc0cf0913ab3e45cc9a05e360685e1122af58f204f19fe21b` |
| 13 | `theorem` | [mk'_ker](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mk-ker--295bc337e4ea3c3b601365e8.md) | 177 | `result-track:295bc337e4ea3c3b601365e8e99dc04bfbb5830e3275cedbb3197e522886a240` |
| 14 | `theorem` | [mk'_surjective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/mk-surjective--ce7ad46a53fea5e97cff5650.md) | 186 | `result-track:ce7ad46a53fea5e97cff56505b1f9437fc81f98d73cb1513b2de81708e746dd8` |
| 15 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/coe-mk--647f46828569de00affcdac1.md) | 190 | `result-track:647f46828569de00affcdac15a573bb96c75f171efba415b112d2ae07d174f1d` |
| 16 | `theorem` | [ker_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/ker-apply--c4225df5e60811a3b8abe1d5.md) | 194 | `result-track:c4225df5e60811a3b8abe1d54915e4d7493b0da453a7538bd572334f948b3871` |
| 17 | `theorem` | [comap_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/comap-eq--c0d1d9076c5ef883d0da2978.md) | 202 | `result-track:c0d1d9076c5ef883d0da2978304a53a3332e2379ce839d724fb7561e5da04138` |
| 18 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift--0b075bc06d5380452c0dfc9f.md) | 211 | `declaration-track:0b075bc06d5380452c0dfc9f09f703f3ca1a4d90416fb21a2d50bbed0163836c` |
| 19 | `theorem` | [lift_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift-mk--3b233a5293d34921f66967a4.md) | 223 | `result-track:3b233a5293d34921f66967a4cf1ecbc5b883bb0c9bd0647149593828b2cf2fb6` |
| 20 | `theorem` | [lift_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift-coe--faed1e0c0897e0b018aa2632.md) | 229 | `result-track:faed1e0c0897e0b018aa2632da7a9d16e44900edef53cdc82b42ddfb28696031` |
| 21 | `theorem` | [lift_comp_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift-comp-mk--1ecd36e41abfd93cbbfec59d.md) | 235 | `result-track:1ecd36e41abfd93cbbfec59d8d045b1a1cefc22ae93f23ce132d637e5cca809c` |
| 22 | `theorem` | [lift_apply_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift-apply-mk--f94312ba45d3e2070cf9e7b7.md) | 243 | `result-track:f94312ba45d3e2070cf9e7b7318e84c8bad80083eae030eb826bab2c1396bab2` |
| 23 | `theorem` | [lift_funext](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift-funext--f54c7e949f84f168f2aeefca.md) | 251 | `result-track:f54c7e949f84f168f2aeefcae64b2905d31bfba6f9fa5fa8b272e6ae7babe3e8` |
| 24 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift-unique--a2626480de25c7dff6acde0c.md) | 258 | `result-track:a2626480de25c7dff6acde0ca9bcc06a630f020cc4447500cb3a5c95b1c0dc39` |
| 25 | `theorem` | [lift_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/lift-surjective-of-surjective--9331870fea3c794e12ed5ee1.md) | 268 | `result-track:9331870fea3c794e12ed5ee101961373447a8439a829118c3e73038a8c1fe84f` |
| 26 | `theorem` | [ker_eq_lift_of_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/ker-eq-lift-of-injective--76a7eec710d46f6b2099e6be.md) | 279 | `result-track:76a7eec710d46f6b2099e6be1314425ade5ac4882fbcc017a0095e9d98f37e4e` |
| 27 | `def` | [kerLift](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/kerlift--e2a155f3d5f9843783e76fd9.md) | 287 | `declaration-track:e2a155f3d5f9843783e76fd9c4b26508cf18bca8c743f86e32d94d9525a3ecc1` |
| 28 | `theorem` | [kerLift_mk](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/kerlift-mk--e1daf1bfb8179cd63be98455.md) | 297 | `result-track:e1daf1bfb8179cd63be98455e103b52b16a2851628c859ec52f9949c60795c03` |
| 29 | `theorem` | [kerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/kerlift-injective--f85aa5109e43a271b462e89d.md) | 303 | `result-track:f85aa5109e43a271b462e89d7b42e3be01cd7b4082cd16d8a6bed3dd8ceaa678` |
| 30 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/map--19e27fd8f401ef84f3927b82.md) | 311 | `declaration-track:19e27fd8f401ef84f3927b8282372241a353cb3faf98b4b04a63b3d87f26da0b` |
| 31 | `theorem` | [map_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant46d54d8561aefe44d0139a9ab7f1b533c6532244cc64ac9cce171ff4e2e9577c.lean/declarations/map-apply--a39a3c6ec8a95603e2a5ecad.md) | 320 | `result-track:a39a3c6ec8a95603e2a5ecadaa5284642548757af068ed2f94c4b97576a11412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
