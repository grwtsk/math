# Verification target: GRWTSK.Analysis.MeasureTheory.Periodic.Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean.json)

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
| 1 | `theorem` | [AddCircle.measurable_mk'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/addcircle-measurable-mk--1f5e72c5f58179bce62049e6.md) | 38 | `result-track:1f5e72c5f58179bce62049e641c17ea735203dfe61f747c7f4041d299282a3bf` |
| 2 | `theorem` | [isAddFundamentalDomain_Ioc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/isaddfundamentaldomain-ioc--3127a98534781d2b67bdcbfa.md) | 42 | `result-track:3127a98534781d2b67bdcbfa8831b1011c5e6119b858072df27cb100d0617e3c` |
| 3 | `theorem` | [isAddFundamentalDomain_Ioc'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/isaddfundamentaldomain-ioc--c047b9314bfd5df6b11b6e1e.md) | 51 | `result-track:c047b9314bfd5df6b11b6e1efd8fe78e2a15ac78b2d817e49a5a9cfb0c0c9ad1` |
| 4 | `instance` | [measureSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measurespace--145acffb6c5110d0e6a1dcb4.md) | 65 | `declaration-track:145acffb6c5110d0e6a1dcb4b9896af0125b31fe564a71a0216a6f657a7e6ea6` |
| 5 | `theorem` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measure-univ--d1094c8b0bce67e52e088821.md) | 69 | `result-track:d1094c8b0bce67e52e0888210a7e196b5b5ce96b917fdf3c2ab768166935c15d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/instance--63e1fec46cddcd0920ace583.md) | 74 | `declaration-track:63e1fec46cddcd0920ace583b69a972ec7dff20f73f0fac121541efb39bab962` |
| 7 | `instance` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/isfinitemeasure--f9fa11400d7820119327db63.md) | 77 | `declaration-track:f9fa11400d7820119327db63712c062963de875ff8355f963e7f5723400b3384` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/instance--119a99609e9986dfad60a5cc.md) | 80 | `declaration-track:119a99609e9986dfad60a5cc3bc370e318645a644c2eb8bce8ecf3c714ecca73` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/instance--c139fec5cc2bf928841e13d6.md) | 83 | `declaration-track:c139fec5cc2bf928841e13d62bc7285d267b7d67b318f9ebc72539124563c8f2` |
| 10 | `theorem` | [measurePreserving_mk](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measurepreserving-mk--242841e1281aa739bc90131d.md) | 91 | `result-track:242841e1281aa739bc90131d0fb537a38d18880a55768ec7d5c3a8cc6fbe2551` |
| 11 | `lemma` | [add_projection_respects_measure](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/add-projection-respects-measure--8d35bf245dd2c41fbd9e94c6.md) | 97 | `result-track:8d35bf245dd2c41fbd9e94c687694287524381a6c2491497b28cb17aa224bb76` |
| 12 | `theorem` | [volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/volume-closedball--4921453497e3cf31fad3232e.md) | 102 | `result-track:4921453497e3cf31fad3232e1ee5f62340165765294520ac2dd11dd24588b345` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/instance--e90f2b0f8cfa17493f1046a2.md) | 121 | `declaration-track:e90f2b0f8cfa17493f1046a246d094260df73df2c1be8028d8f08b44bc9613bf` |
| 14 | `def` | [measurableEquivIoc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measurableequivioc--2dc9adcbc33e3e0ce952abc8.md) | 131 | `declaration-track:2dc9adcbc33e3e0ce952abc80918d675b2691b2f82df84f9490079592b48835c` |
| 15 | `def` | [measurableEquivIco](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measurableequivico--8dbdd8cbfc10bc82fa20e366.md) | 140 | `declaration-track:8dbdd8cbfc10bc82fa20e36668f8c9ce248687de39cfbbdd78fd2a550c91615c` |
| 16 | `lemma` | [measurePreserving_equivIoc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measurepreserving-equivioc--2ec016f3f7f5f861c38c3ef7.md) | 148 | `result-track:2ec016f3f7f5f861c38c3ef779e67b0c86ad60625011076d284681820c2442b6` |
| 17 | `theorem` | [lintegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/lintegral-preimage--31c0f19a003981f13a59aa72.md) | 166 | `result-track:31c0f19a003981f13a59aa72c7dc6125226c525be90927e1c0cedbcf5334d9f3` |
| 18 | `theorem` | [integral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/integral-preimage--561dd83d0f439b22e77a7c87.md) | 188 | `result-track:561dd83d0f439b22e77a7c874c4ddc524231f509e4f2ef8f0ade0d708fa74833` |
| 19 | `theorem` | [intervalIntegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegral-preimage--e9f5e53615fbede872c53079.md) | 203 | `result-track:e9f5e53615fbede872c530790d3adea6f9f78c3dcb947e341cec8af49731776f` |
| 20 | `lemma` | [integral_liftIoc_eq_intervalIntegral](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/integral-liftioc-eq-intervalintegral--85b8ab605436497774867e90.md) | 210 | `result-track:85b8ab605436497774867e90f313a9d139b3ac74fd14e00b90f71e8d9b2846e0` |
| 21 | `lemma` | [MeasureTheory.MemLp.memLp_liftIoc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measuretheory-memlp-memlp-liftioc--d5d7df3ab75f7682943b8fe9.md) | 222 | `result-track:d5d7df3ab75f7682943b8fe94c1cd6463f2d4b730fb973b68171c4c81e3389e1` |
| 22 | `theorem` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measure-univ--b6942e28cd9d01832632194e.md) | 232 | `result-track:b6942e28cd9d01832632194e7f706baa96da8b6073e9d89d93f00e75b7502ef1` |
| 23 | `theorem` | [measurePreserving_mk](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/measurepreserving-mk--c8b4ffcabe6ae5c9cd7ccdbb.md) | 238 | `result-track:c8b4ffcabe6ae5c9cd7ccdbb7c6cda0f1bd9c6ddbc14e223e28912be96a5ce64` |
| 24 | `theorem` | [lintegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/lintegral-preimage--6f3dd49ce9e248bdffd3eed5.md) | 245 | `result-track:6f3dd49ce9e248bdffd3eed5a9cf6910e5245c29173f2bb261c78a173729d5d8` |
| 25 | `theorem` | [integral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/integral-preimage--ce3ff465b4910c955ee45f2a.md) | 253 | `result-track:ce3ff465b4910c955ee45f2a8e641792aee2e07ebc936b2fbb4af369f6bcba2d` |
| 26 | `theorem` | [intervalIntegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegral-preimage--97ef363072144be6f677b48e.md) | 259 | `result-track:97ef363072144be6f677b48ea11d8acadc4605e808a7470bb40e93cda7f46080` |
| 27 | `theorem` | [intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegrable--42a0a05e1fb9898a96f4226e.md) | 280 | `result-track:42a0a05e1fb9898a96f4226e0fc0decc2fa8673224cca72b7f55026f068e646a` |
| 28 | `theorem` | [intervalIntegrable_iff](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegrable-iff--832b3c13d3ea5690204cfe88.md) | 320 | `result-track:832b3c13d3ea5690204cfe88247edc18d958bc96682848181e9a6b1e2c12073e` |
| 29 | `theorem` | [intervalIntegrable₀](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegrable--9fc2c08fbb7c0d2b9e0ddc65.md) | 330 | `result-track:9fc2c08fbb7c0d2b9e0ddc65872aaa0f2da33cb85c0c29ecbc306a9f12cf884f` |
| 30 | `theorem` | [intervalIntegral_add_eq](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegral-add-eq--63cb37623a55699563d2c5d1.md) | 344 | `result-track:63cb37623a55699563d2c5d17c592e411d9fe313b1c64b079605ff6ed6fb1466` |
| 31 | `theorem` | [intervalIntegral_add_eq_add](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegral-add-eq-add--eb615e3e14c9fe2fb9b8af1a.md) | 360 | `result-track:eb615e3e14c9fe2fb9b8af1ad46bfd7a6c4c4715d73a3f822c812d9c7eea1257` |
| 32 | `theorem` | [intervalIntegral_add_zsmul_eq](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/intervalintegral-add-zsmul-eq--9b6d661df3d3b79484827ef0.md) | 367 | `result-track:9b6d661df3d3b79484827ef091840a499120d68a99bdb65961c2355fcb1882ce` |
| 33 | `theorem` | [sInf_add_zsmul_le_integral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/sinf-add-zsmul-le-integral-of-pos--66983e7100c2fa5e9699bd97.md) | 400 | `result-track:66983e7100c2fa5e9699bd972e223ffd0ada0fcce37309c226d2dfed751cc66c` |
| 34 | `theorem` | [integral_le_sSup_add_zsmul_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/integral-le-ssup-add-zsmul-of-pos--37b6aecb5a5c401926611483.md) | 417 | `result-track:37b6aecb5a5c401926611483d1d617f4ea71c18b7b1a80f0157de2953f64dc6a` |
| 35 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/tendsto-attop-intervalintegral-of-pos--b3a4acfdf0664ce5da5b59bd.md) | 433 | `result-track:b3a4acfdf0664ce5da5b59bd2d5f1f147de6945a695cb669dcc71a0cf442c024` |
| 36 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/tendsto-atbot-intervalintegral-of-pos--b69f504653b0a63063a44112.md) | 443 | `result-track:b69f504653b0a63063a441127d3a9fd4da1660fdb7b9c964cd3b1415a4112ffe` |
| 37 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/tendsto-attop-intervalintegral-of-pos--4290e9485fc703e51d0ca272.md) | 453 | `result-track:4290e9485fc703e51d0ca27223a05e6f30ba2c204c21fbcd935132af705574ae` |
| 38 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/declarations/tendsto-atbot-intervalintegral-of-pos--94d9d020c0f8df1c3873e5d9.md) | 460 | `result-track:94d9d020c0f8df1c3873e5d93836b311f7a883e070d4da2dca0869bd48572a55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
