# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Moments.Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b5c81f445a670386efa3edd3275b5ec0fe3274",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b5c81f445a670386efa3edd3275b5ec0fe3274`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellcorrection--06cc75bf92e298e7c8a6c80e.md) | 23 | `declaration-track:06cc75bf92e298e7c8a6c80e53e9446d3783aa68d754138645efdbe2b1c8395f` |
| 2 | `def` | [cellMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellmajorant--41709445e33c8a98135d18ab.md) | 29 | `declaration-track:41709445e33c8a98135d18ab2bff0e0905fb33d0d6ff967f49b02105725b803d` |
| 3 | `def` | [majorantPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/majorantprimitive--ace7459d2083f6106d3fb236.md) | 32 | `declaration-track:ace7459d2083f6106d3fb236ee67904a28c5ec53b1883f5b0637dc2259740e9e` |
| 4 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/majorantprimitive-hasderivat--bd13760545c3ec093b40308f.md) | 34 | `result-track:bd13760545c3ec093b40308f615baf8a81a596d29c47410955b63e449ab3a7c4` |
| 5 | `theorem` | [cellMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellmajorant-continuouson--1024db382ce6440c330be63f.md) | 44 | `result-track:1024db382ce6440c330be63fdf04634cdc2b490cf74a48ef96d4c4bd6cb7c840` |
| 6 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellmajorant-intervalintegrable--4d1c216158349678e28e72af.md) | 50 | `result-track:4d1c216158349678e28e72afd8a6bf8713c20156c9d7d38f77e158189729381e` |
| 7 | `theorem` | [cellMajorant_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellmajorant-integral-eq--21b2e39abb6d89f17ca84caf.md) | 55 | `result-track:21b2e39abb6d89f17ca84caf2104128b8a83d4d036d7e28240ca6e287f312608` |
| 8 | `theorem` | [cellMajorant_integral_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellmajorant-integral-le-four--426cdd200955d68990295938.md) | 65 | `result-track:426cdd200955d689902959387dc20fe11a4b0cdcbcc4691fb8aa9108541047e0` |
| 9 | `theorem` | [sourceCorrelation_log_increment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/sourcecorrelation-log-increment-bound--ca4ccafacaa5a112b6b8464d.md) | 72 | `result-track:ca4ccafacaa5a112b6b8464de80bc881f4f7f08e0c6737d26d9c005ee26a85bc` |
| 10 | `theorem` | [log_cell_increment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/log-cell-increment-le--13b82e67d4511b021cf6faf2.md) | 97 | `result-track:13b82e67d4511b021cf6faf2bbe0bf1a506a38a1f76893a352e1f9576844a7e5` |
| 11 | `theorem` | [cell_integrand_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cell-integrand-abs-le--3ab92f2c5d6c17e8f3dbca4b.md) | 110 | `result-track:3ab92f2c5d6c17e8f3dbca4b500653e28b018426cac2e2ba48c2313fcd782a59` |
| 12 | `theorem` | [div_sqrt_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/div-sqrt-continuouson--bc91c8f2cbc7b7bf88006691.md) | 131 | `result-track:bc91c8f2cbc7b7bf88006691bed9d8f2c8b9cb83f128cf0633b5aed1d9331974` |
| 13 | `theorem` | [cellIntegrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellintegrand-intervalintegrable--8bcb98a0eb07e4956fc9f4ad.md) | 138 | `result-track:8bcb98a0eb07e4956fc9f4adfe07fd547f132daa60b778c88de2822f9c54b924` |
| 14 | `theorem` | [cellCorrection_abs_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellcorrection-abs-le-majorant--2038cd81a57a635a3e2427e5.md) | 152 | `result-track:2038cd81a57a635a3e2427e56df6429de567e34786bea19d951e634058b6efd5` |
| 15 | `theorem` | [sum_cellMajorant_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/sum-cellmajorant-integrals--f9a89d6b069466b1e9960715.md) | 171 | `result-track:f9a89d6b069466b1e9960715506a459304a09c61b64eb6f50793b06cefc972b9` |
| 16 | `theorem` | [sum_cellCorrection_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/sum-cellcorrection-abs-le--991307bc8e37cbc608bcf9cf.md) | 184 | `result-track:991307bc8e37cbc608bcf9cf7711dccfa660ba06170bbd76b4dc87b781db6d3c` |
| 17 | `theorem` | [sum_sourceCorrelation_cell_transport_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/sum-sourcecorrelation-cell-transport-le--f0f1adcd73cc9f1b7f99b504.md) | 203 | `result-track:f0f1adcd73cc9f1b7f99b504f8c9eb6277b030921b39a0bbcf0f9bdaeb1330a1` |
| 18 | `theorem` | [constant_cell_transport_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/constant-cell-transport-zero--68c6f73b32a6689d8ed23dba.md) | 212 | `result-track:68c6f73b32a6689d8ed23dba1ac74341e07d066a1b5ebdbf094217122eaf7a62` |
| 19 | `def` | [cellFirstMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellfirstmoment--13cd8299ebf5816963c33eec.md) | 216 | `declaration-track:13cd8299ebf5816963c33eecd8651a701b2b34833456fc68623b5120b1fc3cb3` |
| 20 | `def` | [cellSecondMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellsecondmoment--5dfe726563d506a5928067b8.md) | 220 | `declaration-track:5dfe726563d506a5928067b88d3ea83e6a6fdc2211585ef26fc67a46d78b89a3` |
| 21 | `def` | [cellTaylorRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/celltaylorremainder--6d4095da85e383f2c21d03b2.md) | 224 | `declaration-track:6d4095da85e383f2c21d03b209efca000af4240c9e6e60338b81a6c0294f56ed` |
| 22 | `theorem` | [cellFirstMoment_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellfirstmoment-integrand-intervalintegrable--bfeb256900e83f5379b37b06.md) | 231 | `result-track:bfeb256900e83f5379b37b0656bfacdfba69ecd895e9ed4b4042a8b7d3f820cf` |
| 23 | `theorem` | [cellSecondMoment_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellsecondmoment-integrand-intervalintegrable--b89d3a511b5c157fc1d7a147.md) | 240 | `result-track:b89d3a511b5c157fc1d7a147c5d67a6696a37601a437ffa4d2761d1f82758383` |
| 24 | `theorem` | [cellFirstMoment_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellfirstmoment-nonneg--6c4183e807642f4d50603f8b.md) | 249 | `result-track:6c4183e807642f4d50603f8b9c2d4832246a1cd36367458e9957cfebfca61627` |
| 25 | `theorem` | [remainder_integrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/remainder-integrand-eq--7216bd16544d774a8f315165.md) | 255 | `result-track:7216bd16544d774a8f315165a50bb013d4edc86dbdd3977a13d706049eeea88a` |
| 26 | `theorem` | [cellTaylorRemainder_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/celltaylorremainder-eq--70dd93f40f7015e3d539b565.md) | 267 | `result-track:70dd93f40f7015e3d539b5652ad212d48d8f010fe3cb28b246d7785ff303e4c0` |
| 27 | `theorem` | [cellCorrection_eq_firstMoment_add_remainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/cellcorrection-eq-firstmoment-add-remainder--8012997c6bb5fc3af8a37150.md) | 279 | `result-track:8012997c6bb5fc3af8a3715054f0da1ae58453e3f0d35d869413998ee3fbe8db` |
| 28 | `theorem` | [remainder_integrand_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/remainder-integrand-abs-le--0e1fbc1b5189f5f91c31f3b4.md) | 287 | `result-track:0e1fbc1b5189f5f91c31f3b478e82611247bd3647808c94502258b41285ef75f` |
| 29 | `theorem` | [cellTaylorRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/declarations/celltaylorremainder-abs-le--986bd49ed93d99c3564e5b4b.md) | 314 | `result-track:986bd49ed93d99c3564e5b4b987ac9a888a56db768908f8627d3af4d8fcd5177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
