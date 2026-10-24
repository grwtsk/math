# Verification target: GRWTSK.Analysis.MeasureTheory.Density.Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75d8094b946fdae51b6a02420d35648b2a35a34c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75d8094b946fdae51b6a02420d35648b2a35a34c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Decomposition.RadonNikodym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/haspdf--3e32383e41d70306b6ea3143.md) | 67 | `declaration-track:3e32383e41d70306b6ea3143f2d7fc6d178705b4d54db185a987fef9ed35e0a9` |
| 2 | `theorem` | [HasPDF.measurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/haspdf-measurable--532280626b721a539a5399ae.md) | 74 | `result-track:532280626b721a539a5399ae376bfe328bf6f655f1058822be2e7a4f26c8e205` |
| 3 | `def` | [pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/pdf--f4a21ee6a2690a03cee2c712.md) | 82 | `declaration-track:f4a21ee6a2690a03cee2c71201c5b4f71609f8d3b0e2bd46bb8949de9e3b057d` |
| 4 | `theorem` | [pdf_undef](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/pdf-undef--3a896dea40690a0a2aa9a3b4.md) | 87 | `result-track:3a896dea40690a0a2aa9a3b416d9bbaa4320f1496a13919ab0566741a5fd5ff4` |
| 5 | `theorem` | [hasPDF_of_pdf_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/haspdf-of-pdf-ne-zero--c520699ede971df0256b9dfb.md) | 91 | `result-track:c520699ede971df0256b9dfb08ffed28362b518ab629ab071a9634d3bd31d058` |
| 6 | `theorem` | [pdf_eq_zero_of_not_measurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/pdf-eq-zero-of-not-measurable--6edc291d077841f8b25890bb.md) | 97 | `result-track:6edc291d077841f8b25890bbb93e585fb245bd69b8666fbbf8a80c42e8e93538` |
| 7 | `theorem` | [measurable_of_pdf_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/measurable-of-pdf-ne-zero--1997cd7d4e01ccd3c4ca7409.md) | 102 | `result-track:1997cd7d4e01ccd3c4ca7409f084fdcb17df387874abd177b8d3a084ee968859` |
| 8 | `theorem` | [measurable_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/measurable-pdf--655997bc1f95e718a393e957.md) | 109 | `result-track:655997bc1f95e718a393e9573997a3bd47dff960e58449a178b1cd9f5049537b` |
| 9 | `theorem` | [map_eq_withDensity_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/map-eq-withdensity-pdf--c27cafb405690bd6e3209b16.md) | 116 | `result-track:c27cafb405690bd6e3209b1611e8c021d20e3c0b120ebb8192c97b808554b01c` |
| 10 | `theorem` | [map_eq_set_lintegral_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/map-eq-set-lintegral-pdf--33047717f66167b054b056ce.md) | 123 | `result-track:33047717f66167b054b056cec3c72244feecca2d412ba7624b4867a24df4e960` |
| 11 | `theorem` | [lintegral_eq_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/lintegral-eq-measure-univ--983c2d647602f6acc13287a2.md) | 133 | `result-track:983c2d647602f6acc13287a2adae884462da08fa44269eeaeb48e28358f77d73` |
| 12 | `theorem` | [ae_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/ae-lt-top--b4360ccec950444fcb1aeefa.md) | 139 | `result-track:b4360ccec950444fcb1aeefa50f3ca60ad837f6089644b1227b61651484a3dd5` |
| 13 | `theorem` | [ofReal_toReal_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/ofreal-toreal-ae-eq--d7f9bb2c0cf28dee944821d0.md) | 149 | `result-track:d7f9bb2c0cf28dee944821d04e62aa8fb04f34f3ef9c93c8c538b228ab083656` |
| 14 | `theorem` | [integrable_iff_integrable_mul_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/integrable-iff-integrable-mul-pdf--7af06f0498da4da0a1a3e579.md) | 154 | `result-track:7af06f0498da4da0a1a3e579b6e068d19f73f38438eb52ae5a62a0d3734ad35c` |
| 15 | `theorem` | [integral_fun_mul_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/integral-fun-mul-eq-integral--3452ddeac43c6cb9b8be1ac9.md) | 166 | `result-track:3452ddeac43c6cb9b8be1ac9fc58c526f2e46a8e43e7477e28809381ae2d3d54` |
| 16 | `theorem` | [map_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/map-absolutelycontinuous--83c053a13af2f4fee75b1d64.md) | 204 | `result-track:83c053a13af2f4fee75b1d6440be7016f51af21521f6b4e7d8919ee4b1f7a5bd` |
| 17 | `theorem` | [to_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/to-quasimeasurepreserving--8f3b2f4f74605dc57623c94e.md) | 209 | `result-track:8f3b2f4f74605dc57623c94eedbbbd76158b1d5c2653c61d9abdde868d51fd05` |
| 18 | `theorem` | [haveLebesgueDecomposition_of_hasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/havelebesguedecomposition-of-haspdf--419cf72ce9e501d20b7ef5d6.md) | 214 | `result-track:419cf72ce9e501d20b7ef5d6ca84913251020994f8af6aeb283c27f8b9f32cf0` |
| 19 | `theorem` | [hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/haspdf-iff--88eb7ff4f18cd13cb651a6d4.md) | 221 | `result-track:88eb7ff4f18cd13cb651a6d4d9c067c3f0f2e61b32e75cf4ea7eb122baaf550e` |
| 20 | `theorem` | [hasPDF_iff_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/haspdf-iff-of-measurable--c8cbb6a635673b7c00b65c61.md) | 232 | `result-track:c8cbb6a635673b7c00b65c61509fd8ca1f675b6b256e2f2e80ca6768a40e79ec` |
| 21 | `theorem` | [quasiMeasurePreserving_hasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/quasimeasurepreserving-haspdf--af0fa185405db1bb8a95f9df.md) | 247 | `result-track:af0fa185405db1bb8a95f9df59c65db3ef1eb91c6ac612f07be1e47b5ca5b255` |
| 22 | `theorem` | [quasiMeasurePreserving_hasPDF'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/quasimeasurepreserving-haspdf--52727797986f00c3973aaae2.md) | 260 | `result-track:52727797986f00c3973aaae235d8b2462e5b423d80dd731b439b4913a3e96d00` |
| 23 | `theorem` | [_root_.Real.hasPDF_iff_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/root-real-haspdf-iff-of-measurable--92a74a329c2f20a2d962c631.md) | 273 | `result-track:92a74a329c2f20a2d962c6319998a489f5b7da29a5e36d222270b4d1731bb33a` |
| 24 | `theorem` | [_root_.Real.hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/root-real-haspdf-iff--d2da756d5eb5e4ac0a6edfda.md) | 279 | `result-track:d2da756d5eb5e4ac0a6edfdae61ab28d7ad982244af01628f9cbc24219ded0b9` |
| 25 | `theorem` | [integral_mul_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/integral-mul-eq-integral--7ff0e4bf4ea4ae6751b740f6.md) | 288 | `result-track:7ff0e4bf4ea4ae6751b740f614226a64af0f3c06aeb0418feb5fbf22f7a64f5e` |
| 26 | `theorem` | [hasFiniteIntegral_mul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/hasfiniteintegral-mul--85a480b7c890a6217ec61ccc.md) | 292 | `result-track:85a480b7c890a6217ec61ccc59ef770dd8f73e113a9b630f317c14f4178c37c8` |
| 27 | `def` | [IsUniform](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/isuniform--a3123c16bbc51ca84f02eb84.md) | 313 | `declaration-track:a3123c16bbc51ca84f02eb84a36438985f5b3faeef6cf294da3ddb1413b9ed6d` |
| 28 | `theorem` | [hasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/haspdf--83c433e1e0ed31baaee5031f.md) | 320 | `result-track:83c433e1e0ed31baaee5031f0412aa24b93f793d0c79313144662d0debf79d33` |
| 29 | `theorem` | [pdf_toReal_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/pdf-toreal-ae-eq--bb1e2102caf43300c7e55233.md) | 336 | `result-track:bb1e2102caf43300c7e55233821d53f155a58733aa52d042516fa9a09c3850e0` |
| 30 | `theorem` | [measure_preimage](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/measure-preimage--8a34026bb0572c4d25090b45.md) | 343 | `result-track:8a34026bb0572c4d25090b45de0a5a7417406feca5aead49548118e9d7ed51b3` |
| 31 | `theorem` | [isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/isprobabilitymeasure--d9d3e53482ea7c41e3a9c7ff.md) | 354 | `result-track:d9d3e53482ea7c41e3a9c7ffc1a041941b63d7a14e1340dff947f6cb7160d248` |
| 32 | `theorem` | [mul_pdf_integrable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/mul-pdf-integrable--715a2b24fe68ede31e06334f.md) | 365 | `result-track:715a2b24fe68ede31e06334f3626ca67a77394c68f3820fc7bb8a71abb2fbd3d` |
| 33 | `theorem` | [integral_eq](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/declarations/integral-eq--e8c70d3fff718d058070dc26.md) | 391 | `result-track:e8c70d3fff718d058070dc26e40bfd5a8bf9425eaf86e34cd01744904964ec73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
