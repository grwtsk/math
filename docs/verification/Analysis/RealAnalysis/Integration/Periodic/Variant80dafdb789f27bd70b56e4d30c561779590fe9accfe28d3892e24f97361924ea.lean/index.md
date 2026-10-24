# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Periodic.Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bce6106f3aebf44b66be58d8a8f82ff3650dd41",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bce6106f3aebf44b66be58d8a8f82ff3650dd41`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddCircle.measurable_mk'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/addcircle-measurable-mk--4db10a7c2c3e476317a92d71.md) | 43 | `result-track:4db10a7c2c3e476317a92d71750d723c9755ab49668c26a16980f3251368b9a6` |
| 2 | `theorem` | [isAddFundamentalDomain_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/isaddfundamentaldomain-ioc--e7125958f6a7c6781699bf26.md) | 47 | `result-track:e7125958f6a7c6781699bf2673b873ca037f62731b949bbe95b5c8526df31d8b` |
| 3 | `theorem` | [isAddFundamentalDomain_Ioc'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/isaddfundamentaldomain-ioc--e096128833c0657a09ddaf79.md) | 56 | `result-track:e096128833c0657a09ddaf79aa528c55583159e0cd62cdacf3482baa1d13973c` |
| 4 | `instance` | [measureSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/measurespace--b6a7875c833af8219e907d56.md) | 70 | `declaration-track:b6a7875c833af8219e907d564e8399416c961827831bf57faa1a431ffbd92b86` |
| 5 | `theorem` | [measure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/measure-univ--361d84c476ac9cf1c63c223d.md) | 74 | `result-track:361d84c476ac9cf1c63c223d13a15862428816b874c2d906223fd3c7a9ae12f2` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/instance--a673c22349f9e9f87f0f0a01.md) | 79 | `declaration-track:a673c22349f9e9f87f0f0a01bbcc919aa32f7491f2d6f371ac249f26443cbf1e` |
| 7 | `instance` | [isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/isfinitemeasure--31df3b1724f788f8e0321baf.md) | 82 | `declaration-track:31df3b1724f788f8e0321baf961b6a8205848388cdd1698cba3c2cdefada89a1` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/instance--446b53f31d63cedf70eef461.md) | 85 | `declaration-track:446b53f31d63cedf70eef4613847f6803eb3f8ca612be2a7641e4fb3960854ae` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/instance--820d3c44815dd2497776fa88.md) | 88 | `declaration-track:820d3c44815dd2497776fa88c41819ba9ae1e8dead92fcf4496b7cc9cef483de` |
| 10 | `theorem` | [measurePreserving_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/measurepreserving-mk--0a6b47f4e712bf536958a5e1.md) | 96 | `result-track:0a6b47f4e712bf536958a5e19063219e1479174f5543724ec4ee1b68fae08a49` |
| 11 | `lemma` | [add_projection_respects_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/add-projection-respects-measure--1687ab7d60fd0a8de278d67a.md) | 102 | `result-track:1687ab7d60fd0a8de278d67a599bffd7933048c326c7f729e37009a5781fc364` |
| 12 | `theorem` | [volume_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/volume-closedball--1c45def49b5a16fb261f1f79.md) | 107 | `result-track:1c45def49b5a16fb261f1f79d01ead53557b2bfe2270cec28aa5751bc7d33dbd` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/instance--fb4b54359d177f567ab8106b.md) | 126 | `declaration-track:fb4b54359d177f567ab8106be41e7ba1d5e3c002e42829dcd609200a7f413bdd` |
| 14 | `def` | [measurableEquivIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/measurableequivioc--bd8722ad773ffe3d3f85d2e1.md) | 136 | `declaration-track:bd8722ad773ffe3d3f85d2e1c7dedf5c9512902155175b3d3f2f4a821d80155f` |
| 15 | `def` | [measurableEquivIco](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/measurableequivico--88e7882cbd88c9ed6e157ce4.md) | 145 | `declaration-track:88e7882cbd88c9ed6e157ce4090d4f15490abdf61c10d33c2bd361a0640d38a7` |
| 16 | `theorem` | [lintegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/lintegral-preimage--47e33877ae4a88d0b6eefb2e.md) | 155 | `result-track:47e33877ae4a88d0b6eefb2e298a2f2084211f579af2f464e2ddc7206c57410e` |
| 17 | `theorem` | [integral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/integral-preimage--e70d25a004d6d295758c825a.md) | 177 | `result-track:e70d25a004d6d295758c825a34b32604f2619dfd30d736db404d5622f9989fe4` |
| 18 | `theorem` | [intervalIntegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegral-preimage--2f9c677040f00635afa9af19.md) | 192 | `result-track:2f9c677040f00635afa9af19fcc6b8407d392734c3b113c6b00519ed9fa0cedc` |
| 19 | `theorem` | [measure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/measure-univ--5411784010cf13892f323a34.md) | 203 | `result-track:5411784010cf13892f323a345b5fa043e9d4777dae318e587e96568e8ebee6a0` |
| 20 | `theorem` | [measurePreserving_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/measurepreserving-mk--61be68889483fea6939a40a1.md) | 209 | `result-track:61be68889483fea6939a40a13272d495f409490050034214f8bb829547e16113` |
| 21 | `theorem` | [lintegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/lintegral-preimage--48de48eac92edeffcde2c1d5.md) | 216 | `result-track:48de48eac92edeffcde2c1d53877419e853fe1738d5031a9c9352b54d61243dd` |
| 22 | `theorem` | [integral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/integral-preimage--49dca57266a6614fe5950876.md) | 224 | `result-track:49dca57266a6614fe5950876acdb79abd7589d11d4270d842dc29fac21f01b0f` |
| 23 | `theorem` | [intervalIntegral_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegral-preimage--8410ba5d9a00892f1dc38e8c.md) | 230 | `result-track:8410ba5d9a00892f1dc38e8c01996d3ec5efb2e2ce37766ad99f4e694f4b7484` |
| 24 | `theorem` | [intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegrable--b7b87bce610733c3ab369289.md) | 249 | `result-track:b7b87bce610733c3ab369289faa6273a815907d6fb5f46a2169797dfce4714dd` |
| 25 | `theorem` | [intervalIntegrable₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegrable--5d45b051331acea75cc938db.md) | 279 | `result-track:5d45b051331acea75cc938db4f39a25a60fedc0103ac389129d57a1736a6da7c` |
| 26 | `theorem` | [intervalIntegral_add_eq_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegral-add-eq-of-pos--ee679ea9df8087077a5375f0.md) | 292 | `result-track:ee679ea9df8087077a5375f08a9ba62c2a483fd94937d13b0587dc7a3ceea35f` |
| 27 | `theorem` | [intervalIntegral_add_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegral-add-eq--dd981442b097ee36b2b99005.md) | 302 | `result-track:dd981442b097ee36b2b990052516b17fa5135e00c5f1655961aae28f1bf05c67` |
| 28 | `theorem` | [intervalIntegral_add_eq_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegral-add-eq-add--4e01447aeed12b192bcad209.md) | 313 | `result-track:4e01447aeed12b192bcad209d42523320755dbc0ce9e43707eca071f88b490bb` |
| 29 | `theorem` | [intervalIntegral_add_zsmul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/intervalintegral-add-zsmul-eq--9445156c22825eb35a86e24d.md) | 320 | `result-track:9445156c22825eb35a86e24dca0df28913d09244255962c81fd72774c519ddcc` |
| 30 | `theorem` | [sInf_add_zsmul_le_integral_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/sinf-add-zsmul-le-integral-of-pos--a618080414f0617beaaa2f28.md) | 353 | `result-track:a618080414f0617beaaa2f28e586dc97781d43ff0f310051384279c0913b67f9` |
| 31 | `theorem` | [integral_le_sSup_add_zsmul_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/integral-le-ssup-add-zsmul-of-pos--f464b2700bc41b7a98058189.md) | 370 | `result-track:f464b2700bc41b7a98058189dd41d5cca5a873fd7b5c6a14bbf3a62e3a1eac4d` |
| 32 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/tendsto-attop-intervalintegral-of-pos--d3a97a90c1cdc4cc8db99485.md) | 386 | `result-track:d3a97a90c1cdc4cc8db99485456bf87cc065eb5d1c12e69d9e88a36b9df29b31` |
| 33 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/tendsto-atbot-intervalintegral-of-pos--ad0714df80b1e98acc1cc2fa.md) | 396 | `result-track:ad0714df80b1e98acc1cc2fabd679fcb023922bcdbbbab7592a5780a7476d29a` |
| 34 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/tendsto-attop-intervalintegral-of-pos--866e35419bf0ea3bb3ca256a.md) | 406 | `result-track:866e35419bf0ea3bb3ca256ab63da082072c94a191b5559614ff04514154c0d9` |
| 35 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/declarations/tendsto-atbot-intervalintegral-of-pos--a4a27a67df4f900b13f64794.md) | 413 | `result-track:a4a27a67df4f900b13f64794599d00db8fd8f8c392502be63d59f9b34d60ae06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
