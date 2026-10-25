# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dual.Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "973dd0855ae3b606c04a53314b49071e5fd946ca",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `973dd0855ae3b606c04a53314b49071e5fd946ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.IndepAxioms` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualIndepMatroid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dualindepmatroid--cd7aa495a9cd868d060266a1.md) | 51 | `declaration-track:cd7aa495a9cd868d060266a16ee90f44d61078da7c0948d59e10dc2a642dcd0b` |
| 2 | `def` | [dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual--b58aac658961f65f8c6eb82f.md) | 120 | `declaration-track:b58aac658961f65f8c6eb82fb53846b3a22d1bd983e7624adfe4243c6df13295` |
| 3 | `theorem` | [dual_indep_iff_exists'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-indep-iff-exists--55493a7745bf0a63d4cada85.md) | 126 | `result-track:55493a7745bf0a63d4cada857d261fb5a8d7790a53d45eb7f1940dfd52a0e4a9` |
| 4 | `theorem` | [dual_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-ground--db2cdc5f8115ec6ebc663067.md) | 129 | `result-track:db2cdc5f8115ec6ebc6630677fd6721d875b55ed01f7902dffa97d63ebef0f3e` |
| 5 | `theorem` | [dual_indep_iff_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-indep-iff-exists--cc2a2a6c6e171fc57767c917.md) | 131 | `result-track:cc2a2a6c6e171fc57767c9172a4d774152c3120d6149510c8c52cd37e53fa073` |
| 6 | `theorem` | [dual_dep_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-dep-iff-forall--e821439df8ec66d7d83955bb.md) | 135 | `result-track:e821439df8ec66d7d83955bbeee1db50966fde9a4b4c5df09fba218a2263112c` |
| 7 | `instance` | [dual_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-finite--aab16c59090df027719c20a4.md) | 140 | `declaration-track:aab16c59090df027719c20a486a211bc17d42522fc3d226327fdd97cad417617` |
| 8 | `instance` | [dual_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-nonempty--1fe5cba57a355f16f13a9c13.md) | 143 | `declaration-track:1fe5cba57a355f16f13a9c13caa9066fa1273023210273ee89553948e11dfc84` |
| 9 | `theorem` | [dual_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-isbase-iff--cbfba317fd11dd97b2b4143f.md) | 146 | `result-track:cbfba317fd11dd97b2b4143f2ba3fac4dc04ffd2829b50a4afcf9f0b396ff988` |
| 10 | `theorem` | [dual_isBase_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-isbase-iff--b3992ba31c2448dad7e3c40c.md) | 152 | `result-track:b3992ba31c2448dad7e3c40cad846c8f49014485a2f481df5acd787502020ad4` |
| 11 | `theorem` | [setOf_dual_isBase_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/setof-dual-isbase-eq--7667e41e0bea1a986a9f748c.md) | 156 | `result-track:7667e41e0bea1a986a9f748c6afd0f29845cd53470c807e9269542e64ee790d3` |
| 12 | `theorem` | [dual_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-dual--d0713b75d3650b7d460bf376.md) | 163 | `result-track:d0713b75d3650b7d460bf376671ff3097735f2741bec9aaae663610514df797f` |
| 13 | `theorem` | [dual_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-involutive--0ae46448d6b765ae32a5114a.md) | 167 | `result-track:0ae46448d6b765ae32a5114aa4d39a175678f20a205b497fbafe29c2edcbc0b9` |
| 14 | `theorem` | [dual_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-injective--79598433739641b54e1ad492.md) | 169 | `result-track:79598433739641b54e1ad492676a3e95d5f0907a840d78a9608f1d8a904703bf` |
| 15 | `theorem` | [dual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-inj--d4436e5c82b11dbd50bc4b8d.md) | 172 | `result-track:d4436e5c82b11dbd50bc4b8d827e7b19c6ac4b8f96f3b30bfc33493f7aec839f` |
| 16 | `theorem` | [eq_dual_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/eq-dual-comm--9a3b184260107cd2d608d8e2.md) | 175 | `result-track:9a3b184260107cd2d608d8e2b55871db48058f819578b09b98532fc218d7c11c` |
| 17 | `theorem` | [eq_dual_iff_dual_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/eq-dual-iff-dual-eq--f926ff2e515cb3cd360917b3.md) | 178 | `result-track:f926ff2e515cb3cd360917b312d184ebe290aac319e86319359cf82094d961f5` |
| 18 | `theorem` | [IsBase.compl_isBase_of_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/isbase-compl-isbase-of-dual--4fe58f8b3409bb426cace5d6.md) | 181 | `result-track:4fe58f8b3409bb426cace5d6f6ce46988b93785a72e8368c2e04426dae501746` |
| 19 | `theorem` | [IsBase.compl_isBase_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/isbase-compl-isbase-dual--aa05aff03e17c979a9359d4e.md) | 184 | `result-track:aa05aff03e17c979a9359d4ea5d0641a33e44e6122ddedd9e7c6999d1f1cbc56` |
| 20 | `theorem` | [IsBase.compl_inter_isBasis_of_inter_isBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/isbase-compl-inter-isbasis-of-inter-isbasis--f81f003aa323e7e9a4dc9fab.md) | 187 | `result-track:f81f003aa323e7e9a4dc9fabdb3f4c29af17103c0febc9d3e17fc00b638307a3` |
| 21 | `theorem` | [IsBase.inter_isBasis_iff_compl_inter_isBasis_dual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/isbase-inter-isbasis-iff-compl-inter-isbasis-dual--368dc96180aae6808750205a.md) | 208 | `result-track:368dc96180aae6808750205adf5f3e2b40e520bf87c8c5a0f147b9803cad7064` |
| 22 | `theorem` | [base_iff_dual_isBase_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/base-iff-dual-isbase-compl--dc58ecca0d24134d32bfbf00.md) | 215 | `result-track:dc58ecca0d24134d32bfbf0017d21c46d4d5e19f20197ba3c2ea03fce8f0665f` |
| 23 | `theorem` | [ground_not_isBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/ground-not-isbase--878dcc448cf9645990987da0.md) | 219 | `result-track:878dcc448cf9645990987da0ca95dfb9b441d5c7a73901d6ca81d96ecc4f0411` |
| 24 | `theorem` | [IsBase.ssubset_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/isbase-ssubset-ground--34a4d355d662d836a6ba2276.md) | 222 | `result-track:34a4d355d662d836a6ba2276d5a9b4d159f830eba8ff73ed5c455eb3a37602e9` |
| 25 | `theorem` | [Indep.ssubset_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/indep-ssubset-ground--2b6a939fef5e1b858fa08026.md) | 225 | `result-track:2b6a939fef5e1b858fa08026ab9794ecf8bd71806d6c01a8217c35916070d4bc` |
| 26 | `abbrev` | [Coindep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep--027ac955ff447e5086987278.md) | 230 | `declaration-track:027ac955ff447e5086987278c346182a9a7b142875655b993f71dcba6f2017df` |
| 27 | `theorem` | [coindep_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-def--715a43c89598aa358a69aaec.md) | 232 | `result-track:715a43c89598aa358a69aaec61f7111fe68ba268fb2931b8a231d1b0c0d0d71e` |
| 28 | `theorem` | [Coindep.indep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-indep--746c62c690afcf072a3fe988.md) | 234 | `result-track:746c62c690afcf072a3fe988828879898d0dc99c4971824ef05cbf3678de0cc8` |
| 29 | `theorem` | [dual_coindep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/dual-coindep-iff--71e4b8397f2ec7c41ddfd029.md) | 237 | `result-track:71e4b8397f2ec7c41ddfd02907131778179e86a7a53c6884b475b15e124e4018` |
| 30 | `theorem` | [Indep.coindep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/indep-coindep--a5f44fcbd876878fb237c7ab.md) | 240 | `result-track:a5f44fcbd876878fb237c7ab634f490ceeefb8c1a749aea1c1758a61ec95262c` |
| 31 | `theorem` | [coindep_iff_exists'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-iff-exists--a2dad8d2f537163cd92e342b.md) | 243 | `result-track:a2dad8d2f537163cd92e342bb59768e41f45bc4d3f99b4c13e4417e43b2ea02e` |
| 32 | `theorem` | [coindep_iff_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-iff-exists--87b9f72313751ee50ec84404.md) | 248 | `result-track:87b9f72313751ee50ec844048e4d5e87f8ae918fdbb23520ada05fb1058e6227` |
| 33 | `theorem` | [coindep_iff_subset_compl_isBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-iff-subset-compl-isbase--9ce384aa8dc9bfe092762f44.md) | 252 | `result-track:9ce384aa8dc9bfe092762f448fe902f17f1956214ceccbd87469b3e1813e59b0` |
| 34 | `theorem` | [Coindep.subset_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-subset-ground--516b54cff816b0662b4a792f.md) | 258 | `result-track:516b54cff816b0662b4a792f0148a41e723c6b2e135c8219169bb9b98aab8e91` |
| 35 | `theorem` | [Coindep.exists_isBase_subset_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-exists-isbase-subset-compl--ae50feb7880fcfc62f5f73f7.md) | 261 | `result-track:ae50feb7880fcfc62f5f73f727de7ded62b550991a3c2c3e2fc5f12dc4b74089` |
| 36 | `theorem` | [Coindep.exists_subset_compl_isBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variantdb119cb4c1df81f3e1e82ba6277f3a4dd58da244ffc809d493679964388cb2df.lean/declarations/coindep-exists-subset-compl-isbase--75c9cdb2118fb6bf16135433.md) | 264 | `result-track:75c9cdb2118fb6bf161354330beadfaf672dded9272cc5fcc14e57ad76218c46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
