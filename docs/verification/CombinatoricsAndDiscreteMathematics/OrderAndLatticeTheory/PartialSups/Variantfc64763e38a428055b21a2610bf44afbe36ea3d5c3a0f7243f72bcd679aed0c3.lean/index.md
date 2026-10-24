# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSups.Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f93914970ec96b11602d6f372d69b5233ff26c14",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f93914970ec96b11602d6f372d69b5233ff26c14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups--f21b7d9abc4aad03b250108b.md) | 64 | `declaration-track:f21b7d9abc4aad03b250108bd3787572d950e7fb09dc32f4366fa931158119f4` |
| 2 | `lemma` | [partialSups_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-apply--327c29ba8fa1aa97a8dbf430.md) | 68 | `result-track:327c29ba8fa1aa97a8dbf4301018c812acaeee8c7752d31b0b9dcd10cb05da38` |
| 3 | `lemma` | [partialSups_iff_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-iff-forall--335cd73e842b0e636efb1047.md) | 72 | `result-track:335cd73e842b0e636efb1047ee409b150014cd1aa98c20cd5e0d25466c084e97` |
| 4 | `lemma` | [partialSups_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-le-iff--ab8ded624a8a91f71c186fe1.md) | 83 | `result-track:ab8ded624a8a91f71c186fe1f2f7045e9c313df2b6d7c6a0531f1a2e8654e23a` |
| 5 | `theorem` | [le_partialSups_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/le-partialsups-of-le--55c6c5269d61494eb393c9fe.md) | 87 | `result-track:55c6c5269d61494eb393c9fef6a7b3f5006644aed58ae04b8617d1abf801a319` |
| 6 | `theorem` | [le_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/le-partialsups--bf79c1c294b8d3a3d0fa0b8e.md) | 91 | `result-track:bf79c1c294b8d3a3d0fa0b8e0eab728a707e70819a1041f77b5c9357d6c3222f` |
| 7 | `theorem` | [partialSups_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-le--1544de6838876e1d60461b48.md) | 95 | `result-track:1544de6838876e1d60461b48af06de47f215e7acad11d8ef5754ede33b80012f` |
| 8 | `lemma` | [upperBounds_range_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/upperbounds-range-partialsups--e9d25b6db354c253f54d722e.md) | 100 | `result-track:e9d25b6db354c253f54d722ee55bfa0a7aee21da94d4e5e7b64e772fab9e7513` |
| 9 | `theorem` | [bddAbove_range_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/bddabove-range-partialsups--bd0dfbaa57dae85bd2c13fb4.md) | 107 | `result-track:bd0dfbaa57dae85bd2c13fb40eb488510bea4c93aa8702ef111a0ddec519350b` |
| 10 | `theorem` | [Monotone.partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/monotone-partialsups-eq--3d52ad9c3bc3e1bb9668271c.md) | 111 | `result-track:3d52ad9c3bc3e1bb9668271c75ccd89c487ad46ba620f6a086727f3df30b9b4d` |
| 11 | `theorem` | [partialSups_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-mono--96a86445be9a8749fc4761b2.md) | 115 | `result-track:96a86445be9a8749fc4761b2ec8fb786a7c6f31cc1851029c682102f1ad328bf` |
| 12 | `lemma` | [partialSups_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-monotone--5952c56b12ab1060f8b1c1cf.md) | 119 | `result-track:5952c56b12ab1060f8b1c1cf4b2b895d9266548164e3895a80b46c7003c90fee` |
| 13 | `def` | [partialSups.gi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-gi--6c1cca62493c179b52be50a1.md) | 125 | `declaration-track:6c1cca62493c179b52be50a1e59fc6d26630599662a3df0ce2e5f90d64f84462` |
| 14 | `lemma` | [Pi.partialSups_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/pi-partialsups-apply--f393efaa74ba937bdf1026e7.md) | 136 | `result-track:f393efaa74ba937bdf1026e7372529dde614aec0f4a80aea0662d95cd638c5aa` |
| 15 | `lemma` | [comp_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/comp-partialsups--819b773c328e4348c06b017a.md) | 142 | `result-track:819b773c328e4348c06b017ac7f8a176845ea1eb496e9a582f69e90d43826b51` |
| 16 | `lemma` | [map_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/map-partialsups--0e19353c9445d7853832749f.md) | 146 | `result-track:0e19353c9445d7853832749f83b6e566cd2a9418bfd8934c480a18d51cb94612` |
| 17 | `theorem` | [partialSups_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-succ--292e662f847893b65bf2abd9.md) | 152 | `result-track:292e662f847893b65bf2abd9685065e0cb669b8afadca39681cf0a720de8a03b` |
| 18 | `theorem` | [partialSups_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-bot--325b30b77fc8b093c0f965f1.md) | 164 | `result-track:325b30b77fc8b093c0f965f13e9ba49f5ddb3e4eeed03c6b0eeb1e2a329ec4e8` |
| 19 | `theorem` | [partialSups_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-zero--056c8715ec830cfbe197f2b2.md) | 176 | `result-track:056c8715ec830cfbe197f2b2a6940b527b786ce48eb1baa18b51255aee13c727` |
| 20 | `theorem` | [partialSups_eq_sup'_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-eq-sup-range--5c4add0f34aa293f6f138380.md) | 179 | `result-track:5c4add0f34aa293f6f1383808c6035dcb7e98170139990d358036d6948c51cfb` |
| 21 | `theorem` | [partialSups_eq_sup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-eq-sup-range--ebe0bb811aa3f48ee5df37cb.md) | 183 | `result-track:ebe0bb811aa3f48ee5df37cb543c8d62eaaa595dc37b55f10a5fa67272a3616b` |
| 22 | `lemma` | [disjoint_partialSups_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/disjoint-partialsups-left--a524b583e0866701a87dc349.md) | 201 | `result-track:a524b583e0866701a87dc349d00731d4db1daeba2c35c7a7746fd74b4a1ad66a` |
| 23 | `lemma` | [disjoint_partialSups_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/disjoint-partialsups-right--90aa2be9b683a2621ab6a778.md) | 206 | `result-track:90aa2be9b683a2621ab6a7782fab85647de63164fa0a2ca6c89fa957f4913626` |
| 24 | `theorem` | [partialSups_disjoint_of_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-disjoint-of-disjoint--19d1f9c9e4fb525d21c00c27.md) | 213 | `result-track:19d1f9c9e4fb525d21c00c27aa6b39cad165f9a556e4922ca9107316bdd41446` |
| 25 | `theorem` | [partialSups_eq_ciSup_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-eq-cisup-iic--dfd1c8cd15f7b93387025f55.md) | 229 | `result-track:dfd1c8cd15f7b93387025f5517e4d073db83fd9456716d76f16408563dc6bff2` |
| 26 | `theorem` | [ciSup_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/cisup-partialsups-eq--3f9a7905ac3b6d1841d229a8.md) | 238 | `result-track:3f9a7905ac3b6d1841d229a843375589d7143147723c69dcd5012bd17094cfc0` |
| 27 | `theorem` | [ciSup_partialSups_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/cisup-partialsups-eq--6c4bf2bf6e9eb1c0b9247548.md) | 250 | `result-track:6c4bf2bf6e9eb1c0b924754848e53e7e7b6d98595775581e25b73d7ec8efff68` |
| 28 | `theorem` | [iSup_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/isup-partialsups-eq--2bda9f192c4a30a1ca348bc3.md) | 266 | `result-track:2bda9f192c4a30a1ca348bc3d6e887855365986f132243a1e6bdb0b48c7c269d` |
| 29 | `theorem` | [partialSups_eq_biSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-eq-bisup--306d8942c9ba6ef4baa5d447.md) | 270 | `result-track:306d8942c9ba6ef4baa5d4473db352ff87f285f925cfbb63d6a0e6295c06116b` |
| 30 | `theorem` | [iSup_le_iSup_of_partialSups_le_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/isup-le-isup-of-partialsups-le-partialsups--2e16684672a9df96ccb70fd5.md) | 274 | `result-track:2e16684672a9df96ccb70fd5bb957397fe71dc77a2fdc478b85f53a70187a918` |
| 31 | `theorem` | [iSup_eq_iSup_of_partialSups_eq_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/isup-eq-isup-of-partialsups-eq-partialsups--1927e54a1d1f91d022b66fbf.md) | 279 | `result-track:1927e54a1d1f91d022b66fbfacc2fc8de4e664b1c7b0acfc3f61db76eb6cff74` |
| 32 | `lemma` | [partialSups_eq_sUnion_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-eq-sunion-image--6fe0534f2e9955f1cb03a24f.md) | 290 | `result-track:6fe0534f2e9955f1cb03a24fe13e95b022452e862b3e65a0a27afe86b7daef3b` |
| 33 | `lemma` | [partialSups_eq_biUnion_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/partialsups-eq-biunion-range--88d7362adeee3ae88e222151.md) | 294 | `result-track:88d7362adeee3ae88e2221514b86c585449863c8894f8ebcc9fe08d7349b410e` |
| 34 | `theorem` | [exists_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/declarations/exists-partialsups-eq--f62148c4f56fe3b7fcb9f846.md) | 307 | `result-track:f62148c4f56fe3b7fcb9f846756d54406fa7ccf15503707713530edd62bd2714` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
