# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticInterceptFinite.Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44f349fb8182cc46eea26f7fa0fe5a694e3d2671",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44f349fb8182cc46eea26f7fa0fe5a694e3d2671`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-two-lower--bc4a2f6b540cfac8e8c6b6de.md) | 13 | `result-track:bc4a2f6b540cfac8e8c6b6dec7f18ef502c97558becc9200a54f47dda245143f` |
| 2 | `theorem` | [log_two_fine_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-two-fine-lower--d0c3ebfac6c0359a73ab7305.md) | 18 | `result-track:d0c3ebfac6c0359a73ab7305d1caad5c65ca82950d75c7376d0c215a2bbb8626` |
| 3 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-two-upper--af5e84c310c581e732577a76.md) | 23 | `result-track:af5e84c310c581e732577a766984798efc7fc71b33c94498218d53d8d5b06017` |
| 4 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-three-lower--6c9c85201b31e751bd8b8c29.md) | 28 | `result-track:6c9c85201b31e751bd8b8c2998a666d53f1a96e77e5e5c773a77bbea120c3732` |
| 5 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/stieltjeslowerfour--7f7e215992a749c950077c6b.md) | 34 | `declaration-track:7f7e215992a749c950077c6b33c96cb40b331bbc7f9f018682b90e6f26575599` |
| 6 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/stieltjeslowerfour-gt-neg-quarter--c4ea457a78a084d170b5856e.md) | 36 | `result-track:c4ea457a78a084d170b5856ed5542091d5138c576777193bc568b65d76228076` |
| 7 | `theorem` | [stieltjesLowerFour_gt_neg_249](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/stieltjeslowerfour-gt-neg-249--2dc4fc069916291fc426fa01.md) | 45 | `result-track:2dc4fc069916291fc426fa01cba2b25be9ede13a17f8dbfbc2a3093b17240d33` |
| 8 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-3-lower--5d77269536cbe3fc40c990f5.md) | 54 | `result-track:5d77269536cbe3fc40c990f52976533b0824c94ac3588ff94d65891334e63a82` |
| 9 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-5-lower--0b2c161593a8e9bc37a0b736.md) | 67 | `result-track:0b2c161593a8e9bc37a0b7362c1948424b6a99c330e9c659895ecc8f125c3d5c` |
| 10 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-7-lower--6f05574ef547f40944d13492.md) | 80 | `result-track:6f05574ef547f40944d13492e4496b91da9a7617beb772532b74965da15c9a0c` |
| 11 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-11-lower--99970333d9f71e29fbdf42a7.md) | 93 | `result-track:99970333d9f71e29fbdf42a75c48d3dc0726580e2fac4df1444b869eb088ae03` |
| 12 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-13-lower--4aad5b13efad95f0f7957995.md) | 106 | `result-track:4aad5b13efad95f0f79579959f2aa32845d0d9b8f2ed3c2171c66d9d89caca00` |
| 13 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-17-lower--5d6c59ad26479610d0ef10f7.md) | 119 | `result-track:5d6c59ad26479610d0ef10f7a9d1abaac2938d2c3afaf636cbd94b9027eaa2e0` |
| 14 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-19-lower--cfc27986ee71eb1be8c96686.md) | 132 | `result-track:cfc27986ee71eb1be8c966866bd9e20155a5a755750fef988d9d77564973f932` |
| 15 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-23-lower--6fcbb0738c31bb4c0738e7f8.md) | 145 | `result-track:6fcbb0738c31bb4c0738e7f86776cbb02f6cd4cab6a25317400d029aba8abe83` |
| 16 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-29-lower--fc9a58b23e76ba07e1d38fc8.md) | 158 | `result-track:fc9a58b23e76ba07e1d38fc84bb47a96324076ba8127e71c6ceff0a90716011b` |
| 17 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-31-lower--9302dbe358444dd659ba245c.md) | 171 | `result-track:9302dbe358444dd659ba245c36d68ca7e066c7b20ff28904b71fad8dd66d6f8d` |
| 18 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-37-lower--0b2c3cca62e16cee07fb566f.md) | 184 | `result-track:0b2c3cca62e16cee07fb566fb0921a45662761dcce292b4fc3054f58a04d1f72` |
| 19 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-41-lower--6cdab4f0c058578b3becdfdc.md) | 197 | `result-track:6cdab4f0c058578b3becdfdccb0a9530ac79cce923a105dab571eec26075aee8` |
| 20 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-43-lower--f2f744f1cb637f70eabd3fc0.md) | 210 | `result-track:f2f744f1cb637f70eabd3fc0eaeb66cba62aa2aaf7f14f3c471eced7da27f178` |
| 21 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-47-lower--eb05ce03c92cca09b80a5302.md) | 223 | `result-track:eb05ce03c92cca09b80a530203e23a2bfed08223e3362cdfb7a22cc25e01b7ab` |
| 22 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-53-lower--6a2e3cc2e679bc7d589f44aa.md) | 236 | `result-track:6a2e3cc2e679bc7d589f44aa0c508e3d61a57f4f2540a1bb5531f2ddce964e04` |
| 23 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-59-lower--f6a0b041ca4f763664dce262.md) | 249 | `result-track:f6a0b041ca4f763664dce262391bfa05afecd308036d25364beb1f780990250e` |
| 24 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-61-lower--023be2a635afd4aa3a049d94.md) | 262 | `result-track:023be2a635afd4aa3a049d94353f55d37ae09fe69d4d047ca1739fa633b79b34` |
| 25 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-67-lower--655c988400fce4332e82b90d.md) | 275 | `result-track:655c988400fce4332e82b90da8b8a0a818464a3e5c2bcbca7bb8f115da85cc3c` |
| 26 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-71-lower--a3f6ae892ef5a9037462fffc.md) | 288 | `result-track:a3f6ae892ef5a9037462fffcbcdcc5c23e957063d0e0447ca84e4007c5a4fa57` |
| 27 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-73-lower--2b1fbf51416f0673800c8f8b.md) | 301 | `result-track:2b1fbf51416f0673800c8f8b7029a46bc8eeea33002ecf0879517e0f500d92cf` |
| 28 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-79-lower--0ca0d929d3ce557c8ecab872.md) | 314 | `result-track:0ca0d929d3ce557c8ecab872949b9196fd258f635ad7ad84774a98de1f58d5a3` |
| 29 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-83-lower--b45b747c7590b075af05cb41.md) | 327 | `result-track:b45b747c7590b075af05cb41ff115320eff00d92004058891e03fd4911801c12` |
| 30 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-89-lower--8fd255d256a55ba922430a29.md) | 340 | `result-track:8fd255d256a55ba922430a296bed7c4e1e0fd0d0af9353396b2ac265426abfa9` |
| 31 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/log-97-lower--023429a9af55fb4766716a8c.md) | 353 | `result-track:023429a9af55fb4766716a8cdf1b490c9674b65ef02dff440a03ee1c235e474e` |
| 32 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/primeinventory--24b57cd03e5fdad3052090df.md) | 366 | `declaration-track:24b57cd03e5fdad3052090dfac6a8a8be8ecdefcbbdac6d4ce3b58a45eee73a0` |
| 33 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/certifiedloglower--8aed91c91e6c9aec5b0eefe1.md) | 368 | `declaration-track:8aed91c91e6c9aec5b0eefe1c0c14eed4fae6813553317ef7d2d8b699b78afcd` |
| 34 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/powercoefficient--e05a5e41bdb0d7a8c84fa600.md) | 371 | `declaration-track:e05a5e41bdb0d7a8c84fa60040fb806995ef7df0b1a011462ad5f4eb3296d643` |
| 35 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/finiteproperpowermoment--14237c68d9b10c1e3024c63e.md) | 373 | `declaration-track:14237c68d9b10c1e3024c63e0fe1edea7bb01c8a553c4fd99ec5fbd670e95afd` |
| 36 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/inventory-primes--b95ac0ffbd295e83c90d6d8a.md) | 376 | `result-track:b95ac0ffbd295e83c90d6d8a51dfb6d7331029ca12757653157db1d67e2975f3` |
| 37 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/inventory-log-lower--466702b78dfaf1beba57fddc.md) | 382 | `result-track:466702b78dfaf1beba57fddcef1d3eaf764a874d2e65c3b7407af9a339da6d1e` |
| 38 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/finiteproperpowermoment-gt-nine-quarters--615400443c8ed9d5aa00efec.md) | 463 | `result-track:615400443c8ed9d5aa00efec1ebe624ec0e21a55c18ca51002203c392b8df083` |
| 39 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/finiteproperpowermoment-eq-atoms--785cb049ee2a3c75400278d0.md) | 482 | `result-track:785cb049ee2a3c75400278d0025da156334bb181b458f8ffd1653af6fdda0ab5` |
| 40 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/intercept-positive-of-actual-bridges--d43d53ec7dbbf21b0bbc21e1.md) | 494 | `result-track:d43d53ec7dbbf21b0bbc21e109b1223f1ba5b84fd3b8da6f8e2481904da1cf7c` |
| 41 | `theorem` | [intercept_gt_one_five_hundred_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/declarations/intercept-gt-one-five-hundred-of-actual-bridges--d45e2eecad7cf0e70098d44f.md) | 503 | `result-track:d45e2eecad7cf0e70098d44fdb6f2202683c3bcb71fcd156df0d573e323d6089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
