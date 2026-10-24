# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralRepresentation.Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "443f65af5756061d550fe74ea1d2c4e23305be90",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `443f65af5756061d550fe74ea1d2c4e23305be90`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.RingInverseOrder` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand--416f33673051e8db4749645a.md) | 70 | `declaration-track:416f33673051e8db4749645af3394480073e9d5cde47b780235d90efb15b719f` |
| 2 | `def` | [rpowIntegrand₁₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand--b8daa5d602f1f28a315ac4a7.md) | 73 | `declaration-track:b8daa5d602f1f28a315ac4a7531f4b26542e4b5fd93c0843d1a7cdc51a571dfb` |
| 3 | `lemma` | [rpowIntegrand₀₁_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-zero-right--c18931abc737d11ee99eb63a.md) | 83 | `result-track:c18931abc737d11ee99eb63a14f4119055214665e2425a7f5c047057afde34ed` |
| 4 | `lemma` | [rpowIntegrand₀₁_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-zero-left--2a78e8c76ae8b5e283e36d11.md) | 85 | `result-track:2a78e8c76ae8b5e283e36d1178c86784bea183e3623958645f3eda32c92ac6cc` |
| 5 | `lemma` | [rpowIntegrand₀₁_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-eq-sub--3c1712f0b7406b12ba3168d9.md) | 88 | `result-track:3c1712f0b7406b12ba3168d9551db5c23d4ee56c8f7c8c0018730e87b707021c` |
| 6 | `lemma` | [rpowIntegrand₀₁_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-nonneg--da50889f7a8baf1d0814bc45.md) | 95 | `result-track:da50889f7a8baf1d0814bc455e209715ee635db885c63c2263161d3ca4c4c4ee` |
| 7 | `lemma` | [rpowIntegrand₀₁_eq_pow_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-eq-pow-div--9f837e151e75006e5e9bcae5.md) | 106 | `result-track:9f837e151e75006e5e9bcae55b28da1e5e111515bd4ab27f81d536558a71aa43` |
| 8 | `lemma` | [rpowIntegrand₀₁_eqOn_pow_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-eqon-pow-div--99bd359fb94e214a745ca8e6.md) | 123 | `result-track:99bd359fb94e214a745ca8e6dd3ef5248c6642f80aca00dfcb3ce75cf95faa36` |
| 9 | `lemma` | [rpowIntegrand₀₁_apply_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-apply-mul--982b2124c47ffa905a919eed.md) | 128 | `result-track:982b2124c47ffa905a919eedc730e446f30ac5ce6d03abdff68b2f9f6c2a36e3` |
| 10 | `lemma` | [rpowIntegrand₀₁_apply_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-apply-mul--f4827aff739de218de7aee5e.md) | 144 | `result-track:f4827aff739de218de7aee5ea815d1c741a216fe5655353cd8092a3c9c26ba82` |
| 11 | `lemma` | [rpowIntegrand₀₁_apply_mul_eqOn_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-apply-mul-eqon-ici--0c7f7bd35c6209fdba66c9dc.md) | 150 | `result-track:0c7f7bd35c6209fdba66c9dc2b643f4ac05fd6b500e8dd6c66590c1d022b7455` |
| 12 | `lemma` | [continuousOn_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/continuouson-rpowintegrand--2a36f51fc9385d11fc00a678.md) | 155 | `result-track:2a36f51fc9385d11fc00a67805819c81ae696bed22ebdf120f5270a9e65981ef` |
| 13 | `lemma` | [aestronglyMeasurable_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/aestronglymeasurable-rpowintegrand--a3af17da20f29cc8f1829091.md) | 162 | `result-track:a3af17da20f29cc8f1829091ecbc4b658a296974f5e3383f6ec47bffde15fc1a` |
| 14 | `lemma` | [rpowIntegrand₀₁_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-monotoneon--a4a48c441383bdd5001a0409.md) | 166 | `result-track:a4a48c441383bdd5001a040919e074d8e4748ecf3abcec2b83e84ce0fc529649` |
| 15 | `lemma` | [continuousOn_rpowIntegrand₀₁_uncurry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/continuouson-rpowintegrand-uncurry--a94e6d25a1b1bb5eed11f872.md) | 175 | `result-track:a94e6d25a1b1bb5eed11f872dc17cba2d6f931f08f4869d88f1a156eb4ec4776` |
| 16 | `lemma` | [continuousOn_rpowIntegrand₀₁_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/continuouson-rpowintegrand-ici--3a3f1bc5dbf8c976af9fb4fb.md) | 187 | `result-track:3a3f1bc5dbf8c976af9fb4fb56528ad5bc81ba6a754a84a50544725d79e558cd` |
| 17 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_two_mul_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-le-rpow-sub-two-mul-self--0893fca41aec9d68f7ee35e6.md) | 191 | `result-track:0893fca41aec9d68f7ee35e6ae0195e653b46b4db17d24052b3a5befe3c61078` |
| 18 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-le-rpow-sub-one--27ca1a355f06ee8df01764f7.md) | 202 | `result-track:27ca1a355f06ee8df01764f7537dbfca279b17c0b571e1bac225e419c773b623` |
| 19 | `lemma` | [rpowIntegrand₀₁_one_ge_rpow_sub_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-one-ge-rpow-sub-two--70d4ae5d3189a86732298c5f.md) | 216 | `result-track:70d4ae5d3189a86732298c5f7e239b76b7eee5496ab097a5227a1dce0a3c64d2` |
| 20 | `lemma` | [rpowIntegrand₀₁_eqOn_mul_rpowIntegrand₀₁_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-eqon-mul-rpowintegrand-one--9c705661135b19413df4038e.md) | 230 | `result-track:9c705661135b19413df4038e4ff34b09e40ec80cd18753159e5c539f744dd9cb` |
| 21 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/integrableon-rpowintegrand-ioc--4c5e8c860db80a2e728cc59f.md) | 241 | `result-track:4c5e8c860db80a2e728cc59f15394ed1f266402de11973eb73ca4b79e4175d0b` |
| 22 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/integrableon-rpowintegrand-ioi-one--fa7f9549676e4ffa4a4a0d2a.md) | 262 | `result-track:fa7f9549676e4ffa4a4a0d2afeea3ede21919b5cc6b01187898e7e1ea8e237ae` |
| 23 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/integrableon-rpowintegrand-ioi--7412cde5ae75b9f29f65dd59.md) | 281 | `result-track:7412cde5ae75b9f29f65dd59654a76ad7d5375819bc74961dec7cccdcf87e3ae` |
| 24 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/integrableon-rpowintegrand-ici--6bc4a9913f7ea803ed9765a2.md) | 289 | `result-track:6bc4a9913f7ea803ed9765a2fa0f99f8aa4ed77b7c4810efe5c4339b5d417912` |
| 25 | `lemma` | [integral_rpowIntegrand₀₁_eq_rpow_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/integral-rpowintegrand-eq-rpow-mul-const--8048ec2429b518974ce50179.md) | 293 | `result-track:8048ec2429b518974ce501798c58bb93b7d6d8a45b2c9fdd87e68516e17f0380` |
| 26 | `lemma` | [le_integral_rpowIntegrand₀₁_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/le-integral-rpowintegrand-one--cd019be966cccc1dc29aff01.md) | 315 | `result-track:cd019be966cccc1dc29aff01bb1e497b6e22e34a930590dd9ae6e865026790fc` |
| 27 | `lemma` | [integral_rpowIntegrand₀₁_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/integral-rpowintegrand-one-pos--bfb44b046331f2efd8fb4fd9.md) | 335 | `result-track:bfb44b046331f2efd8fb4fd98133e5eeaa4802ff3310d39f47a7444ce9e3c15f` |
| 28 | `lemma` | [rpow_eq_const_mul_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpow-eq-const-mul-integral--c2d3a77991ad9aa985cc6b63.md) | 344 | `result-track:c2d3a77991ad9aa985cc6b6301736c29f0e4c50250de6ecd4c6cd56a8ac00733` |
| 29 | `lemma` | [exists_measure_rpow_eq_integral_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/exists-measure-rpow-eq-integral-rpowintegrand--6254af59c5d81964edc1bdd8.md) | 357 | `result-track:6254af59c5d81964edc1bdd874b16fc60a028875b6f1049d5ad1dba525aa705c` |
| 30 | `lemma` | [rpowIntegrand₁₂_eq_mul_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-eq-mul-rpowintegrand--3fda4570d4ac54521817b519.md) | 381 | `result-track:3fda4570d4ac54521817b519a4c85095c240317d7cb3bf4d549982c5cd9e3456` |
| 31 | `lemma` | [rpowIntegrand₁₂_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-nonneg--c92e89e72e739573ba0629cf.md) | 385 | `result-track:c92e89e72e739573ba0629cf3d2ca7ccc966bd13dd70affef4819d8e34ce4c85` |
| 32 | `lemma` | [rpowIntegrand₁₂_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpowintegrand-zero--99663707ca9b9aad824c6383.md) | 394 | `result-track:99663707ca9b9aad824c6383fa92a017d0049c1cd116b2995ca3e050d4328026` |
| 33 | `lemma` | [continuousOn_rpowIntegrand₁₂_uncurry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/continuouson-rpowintegrand-uncurry--416b9e762eaad3dca0b4b779.md) | 398 | `result-track:416b9e762eaad3dca0b4b779129e5159811c13e1a0de23eb365e12a80e510411` |
| 34 | `lemma` | [monotoneOn_rpowIntegrand₁₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/monotoneon-rpowintegrand--b8f1b451ebe77cf2610d2fb1.md) | 403 | `result-track:b8f1b451ebe77cf2610d2fb1d091b0adbba3ef38dbe8cbbe750f20c74db52587` |
| 35 | `lemma` | [integrableOn_rpowIntegrand₁₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/integrableon-rpowintegrand--49c504282bf0d5b82e894cc7.md) | 408 | `result-track:49c504282bf0d5b82e894cc7a4f8a26e8f81739b8bbcb2e7255d7bea5ec88ba3` |
| 36 | `lemma` | [rpow_eq_const_mul_integral_rpowIntegrand₁₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/rpow-eq-const-mul-integral-rpowintegrand--09286f72b2f38c3c0d5c0624.md) | 419 | `result-track:09286f72b2f38c3c0d5c06248d5d82f9ee5afee13f84c50faecd470f73f33e17` |
| 37 | `lemma` | [exists_measure_rpow_eq_integral_rpowIntegrand₁₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/exists-measure-rpow-eq-integral-rpowintegrand--97261367c3ab72a05d2b2b55.md) | 435 | `result-track:97261367c3ab72a05d2b2b55de46a25d0ff5b497f4c27eefafb8acb445d7ab6d` |
| 38 | `lemma` | [cfcₙ_rpowIntegrand₀₁_eq_cfcₙ_rpowIntegrand₀₁_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/cfc-rpowintegrand-eq-cfc-rpowintegrand-one--0bae8279deed68d8f7576f14.md) | 465 | `result-track:0bae8279deed68d8f7576f1423f2226e9e82b2ee1ebdd12ea694e3111fe41b37` |
| 39 | `lemma` | [exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/exists-measure-nnrpow-eq-integral-cfc-rpowintegrand--a99a29660b48e7960ad7785f.md) | 489 | `result-track:a99a29660b48e7960ad7785f35cc5db303b7662d3d511e8ff17d711d1de03048` |
| 40 | `lemma` | [exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₁₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/exists-measure-nnrpow-eq-integral-cfc-rpowintegrand--c8a42b362b9bb780d90a1ef7.md) | 533 | `result-track:c8a42b362b9bb780d90a1ef7cbefec4a65c2d026c44d0d916a04dc10a75273f2` |
| 41 | `lemma` | [concaveOn_cfc_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/concaveon-cfc-rpowintegrand--35d2914c2e4ca2393ea7216d.md) | 586 | `result-track:35d2914c2e4ca2393ea7216d46fb11982d2a73baa939124d91b4cc2ffb75d5b4` |
| 42 | `lemma` | [monotoneOn_cfcₙ_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/monotoneon-cfc-rpowintegrand--95866efe9f768af9cdb1f366.md) | 611 | `result-track:95866efe9f768af9cdb1f36653df040afdfdc209961cc0ceec33e7f098f37d58` |
| 43 | `lemma` | [concaveOn_cfcₙ_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/declarations/concaveon-cfc-rpowintegrand--bc69e803323ac7b9e0546c65.md) | 629 | `result-track:bc69e803323ac7b9e0546c65769797fda1b0a069614e1411eddd13ea370a553f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
