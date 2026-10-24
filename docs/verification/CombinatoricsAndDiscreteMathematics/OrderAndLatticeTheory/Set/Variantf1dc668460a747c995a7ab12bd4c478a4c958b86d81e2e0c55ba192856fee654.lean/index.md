# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Set.Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d71a3bf940ac7ba67dca407c62aed9981c90e6b0",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d71a3bf940ac7ba67dca407c62aed9981c90e6b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean.json)

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
| 1 | `def` | [sumEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/sumequiv--00ec53d2c3a92c281cb87fb8.md) | 29 | `declaration-track:00ec53d2c3a92c281cb87fb88adbb771acad9be43316fd4a4c843ed69bd0a945` |
| 2 | `theorem` | [sumEquiv_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/sumequiv-symm-apply--04401da8f79b293a0b56fed2.md) | 38 | `result-track:04401da8f79b293a0b56fed2896bc60091ab45f7b5fab9f06023a36eb48fc2d7` |
| 3 | `theorem` | [MapsTo.sumElim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/mapsto-sumelim--25ae9ce15e00b564ac5ac6f6.md) | 41 | `result-track:25ae9ce15e00b564ac5ac6f6b13d8b38d0bffedb210c271d56a5712fe8c96bde` |
| 4 | `theorem` | [InjOn.sumElim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/injon-sumelim--6db32134df576bfbbe6c951d.md) | 46 | `result-track:6db32134df576bfbbe6c951d1ca6e790123ccf18f3bb82115b47fb398623ed98` |
| 5 | `def` | [orderIsoOfEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderisoofeq--bdf9d1b2649ab773342ca872.md) | 56 | `declaration-track:bdf9d1b2649ab773342ca872f4261b7a747ac984b4b1ea6d3867b8a3555c51a5` |
| 6 | `theorem` | [range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/range-eq--8d739fb16f978d556214c927.md) | 75 | `result-track:8d739fb16f978d556214c927517439a9ae23204b6b635568b6da6c11a224cefc` |
| 7 | `theorem` | [symm_image_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/symm-image-image--87581ede62119f60366d2390.md) | 79 | `result-track:87581ede62119f60366d2390d27cb455d5659aecfea449e9e41d58bf7ff7059e` |
| 8 | `theorem` | [image_symm_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/image-symm-image--23ff9f6ffd36ef38b0897d0c.md) | 83 | `result-track:23ff9f6ffd36ef38b0897d0c7bbef7779c30ba3fbb20934821fff56825aebb03` |
| 9 | `theorem` | [image_eq_preimage_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/image-eq-preimage-symm--bcfff1ae3ef4929d4535461f.md) | 86 | `result-track:bcfff1ae3ef4929d4535461f78afff1cb8c7ab478cc5660937dfd4a3801b7b81` |
| 10 | `theorem` | [preimage_symm_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/preimage-symm-preimage--8c94150cdbf8d9c01cc1a5e3.md) | 90 | `result-track:8c94150cdbf8d9c01cc1a5e3d4dd0b252fba184f4f7a46b2b8908803fda7bf4b` |
| 11 | `theorem` | [symm_preimage_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/symm-preimage-preimage--56bd402c520b40b722915934.md) | 94 | `result-track:56bd402c520b40b7229159349027ecd117bec1f4569caed06c7da77b5fa3ea65` |
| 12 | `theorem` | [image_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/image-preimage--b728143c5e5abac8c3bbbeab.md) | 98 | `result-track:b728143c5e5abac8c3bbbeab7e2acf1171670167bf209e69084970f901a3ce9e` |
| 13 | `theorem` | [preimage_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/preimage-image--f0027c3625622a9f975865c8.md) | 102 | `result-track:f0027c3625622a9f975865c8817d47f2a7bae66fef8574e5bf9505a1fd1acfb3` |
| 14 | `def` | [Set.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/set-univ--ac95c3ab7d010021dd55c769.md) | 117 | `declaration-track:ac95c3ab7d010021dd55c769b9f2e81c721eba639dcd5dfd3384cbe7d3419ecd` |
| 15 | `def` | [OrderEmbedding.orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderembedding-orderiso--bdfd5a7bb8f762bbe09811fe.md) | 125 | `declaration-track:bdfd5a7bb8f762bbe09811fee1950cbbb9421f8f058d41ff4b990d7d7689645c` |
| 16 | `def` | [StrictMonoOn.orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/strictmonoon-orderiso--b9907f4a4adecece2498ed27.md) | 132 | `declaration-track:b9907f4a4adecece2498ed27e5fb92bf31991d19563d1cd6f310be9ff8b33517` |
| 17 | `def` | [orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderiso--0c8479f6dda6866f1b1e4d77.md) | 146 | `declaration-track:0c8479f6dda6866f1b1e4d770c2b119e24fb971ae72f7492ebc98111b893d9d1` |
| 18 | `def` | [orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderisoofsurjective--b4d7ae6dc5c48265d458befc.md) | 152 | `declaration-track:b4d7ae6dc5c48265d458befcac843b098240d52f14b107833cdc1a4277d06f63` |
| 19 | `theorem` | [coe_orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/coe-orderisoofsurjective--7521b55829e2f4f77c38c202.md) | 157 | `result-track:7521b55829e2f4f77c38c202dc303e24721ffb68d0ce70002c7bb365dbe88f69` |
| 20 | `theorem` | [orderIsoOfSurjective_symm_apply_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderisoofsurjective-symm-apply-self--e8580b215409e1a9d31bf5bb.md) | 161 | `result-track:e8580b215409e1a9d31bf5bb82c80b3eed1d47d2bbaace61a84a2d7e19ca5859` |
| 21 | `theorem` | [orderIsoOfSurjective_self_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderisoofsurjective-self-symm-apply--b0d56e06d7da13af247b9fe6.md) | 165 | `result-track:b0d56e06d7da13af247b9fe637aa7a4ed8e0a81def34cc47010f2c1ca6ebae9e` |
| 22 | `lemma` | [OrderEmbedding.eq_of_range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderembedding-eq-of-range-eq--1b3b821a7447a35f7bd864f0.md) | 173 | `result-track:1b3b821a7447a35f7bd864f0ad561382bf6ed4eaed37a8a5bf36f6d071a687af` |
| 23 | `lemma` | [StrictMono.eq_of_range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/strictmono-eq-of-range-eq--5fba267548f6d4540093b1e0.md) | 184 | `result-track:5fba267548f6d4540093b1e03755ee41ff35dca18d8aa0f3e1db94189c0915b8` |
| 24 | `lemma` | [OrderEmbedding.range_inj_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderembedding-range-inj-of-wellfoundedlt--8147fe87a00af37c05794088.md) | 194 | `result-track:8147fe87a00af37c05794088578dbd19f0b3d98e117e895243a0629638c5f8c6` |
| 25 | `instance` | [subsingleton_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/subsingleton-of-wellfoundedlt--93638b4bb5c579b331205ac1.md) | 206 | `declaration-track:93638b4bb5c579b331205ac15471a105fa92a7cd08ada4849667eeee09eb8f76` |
| 26 | `instance` | [subsingleton_of_wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/subsingleton-of-wellfoundedlt--5368e78b97dfff4094663983.md) | 213 | `declaration-track:5368e78b97dfff40946639837bbc0ad4cf2199feb517bad62e338fe3ebb159f8` |
| 27 | `instance` | [unique_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/unique-of-wellfoundedlt--18dd08b95ed74df5edec156f.md) | 219 | `declaration-track:18dd08b95ed74df5edec156f01e465134739d60058fa4cd325b340a42d052e16` |
| 28 | `instance` | [subsingleton_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/subsingleton-of-wellfoundedgt--59a97fadefcadaa480a329bd.md) | 221 | `declaration-track:59a97fadefcadaa480a329bdb22842f101f41ab991179dac5013e9100a90edaf` |
| 29 | `instance` | [subsingleton_of_wellFoundedGT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/subsingleton-of-wellfoundedgt--709cc01c7c1b9581956a40d0.md) | 227 | `declaration-track:709cc01c7c1b9581956a40d02e78a0fed53be49a31efc5f9f5b09691426c25d0` |
| 30 | `instance` | [unique_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/unique-of-wellfoundedgt--8c5b08d04b00b453947b389e.md) | 233 | `declaration-track:8c5b08d04b00b453947b389eeb731af72aae6e5e40b0bb77e8c4359a64bef980` |
| 31 | `def` | [Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/iic--e11738f827a79d2aebf96856.md) | 238 | `declaration-track:e11738f827a79d2aebf968560f79d83a4776c40c3edcfb74849359b919fdabce` |
| 32 | `def` | [Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/ici--1ea2172e70e69eb1b3a8d6f1.md) | 249 | `declaration-track:1ea2172e70e69eb1b3a8d6f10dfff866aad1ed4a98f21d59ac4bbf8603b2de62` |
| 33 | `def` | [Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/icc--81bcb75aafd92d0d870389b9.md) | 259 | `declaration-track:81bcb75aafd92d0d870389b93dbbf85f0cb40f34164f0dcd0e5bd838b77891dd` |
| 34 | `def` | [OrderIso.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/orderiso-compl--d82298346fddc010f40fb63a.md) | 275 | `declaration-track:d82298346fddc010f40fb63addbd90422c5f8c4c8984bf214812527abc53a27e` |
| 35 | `theorem` | [compl_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/compl-strictanti--67e2477071a7d8fe9e129a8c.md) | 282 | `result-track:67e2477071a7d8fe9e129a8c50ac50be5a463ce2a2bdc79999915317a28f3daa` |
| 36 | `theorem` | [compl_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/declarations/compl-antitone--45f99bf38a9a8e8ea1e1f775.md) | 285 | `result-track:45f99bf38a9a8e8ea1e1f7758cc6c33dadfa63ff9074df7210fabdd3814459b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
