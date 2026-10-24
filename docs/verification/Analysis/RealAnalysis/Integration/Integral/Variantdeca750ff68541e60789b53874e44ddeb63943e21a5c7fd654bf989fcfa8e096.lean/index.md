# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f21d819a85e94f6995dd341369a556b21f3ec6c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f21d819a85e94f6995dd341369a556b21f3ec6c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Integrable.comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrable-comp-inv--743adf83d2ec6f070aa9ccb4.md) | 31 | `result-track:743adf83d2ec6f070aa9ccb4dd8c9c43f1d33bfc599ad780b4097c40e21902a7` |
| 2 | `theorem` | [integral_inv_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-inv-eq-self--aca514dfb0aedcb814d05f04.md) | 36 | `result-track:aca514dfb0aedcb814d05f04107097e94f091a41f4051d47ef4f54df17d0dff8` |
| 3 | `theorem` | [IntegrableOn.comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrableon-comp-inv--cc236bcbab86998bd0253db9.md) | 42 | `result-track:cc236bcbab86998bd0253db9bc2fec8fe3f23196a194f8869ad788e49b550654` |
| 4 | `theorem` | [IntegrableOn.comp_inv_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrableon-comp-inv-iic--8511d026810b0dc0505ff936.md) | 57 | `result-track:8511d026810b0dc0505ff9363d6c26cfc998c84d4b2f8b48c6cbc1ffb1ec4db1` |
| 5 | `theorem` | [IntegrableOn.comp_inv_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrableon-comp-inv-ici--2bd130d33eb47c4bcdb51106.md) | 62 | `result-track:2bd130d33eb47c4bcdb51106080e24aa9b8a993d69f3298348d2f8c1c39066f6` |
| 6 | `theorem` | [IntegrableOn.comp_inv_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrableon-comp-inv-iio--2d00568e5cf1de7657168f81.md) | 67 | `result-track:2d00568e5cf1de7657168f81381c0ac5290e3e7038f746604eb1a7908af7ac97` |
| 7 | `theorem` | [IntegrableOn.comp_inv_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrableon-comp-inv-ioi--430befd0805939319d2f5e11.md) | 72 | `result-track:430befd0805939319d2f5e119b9bbeba41176cb3ff19b83dfba24834d9aae96e` |
| 8 | `theorem` | [integral_mul_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-mul-left-eq-self--aae26f4e0f46b3651c9198a3.md) | 87 | `result-track:aae26f4e0f46b3651c9198a3e7d990918a3958309ffa45585b5e46d03c3dac1d` |
| 9 | `theorem` | [integral_mul_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-mul-right-eq-self--29248eab12a1b0d96c4be1f0.md) | 97 | `result-track:29248eab12a1b0d96c4be1f06ef17462911083ed62a141ac6065598038a8c546` |
| 10 | `theorem` | [integral_div_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-div-right-eq-self--ea303910706036289f3da4b7.md) | 104 | `result-track:ea303910706036289f3da4b709fcf9cc5f0def5923e4671504938469759435e8` |
| 11 | `theorem` | [integral_eq_zero_of_mul_left_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-eq-zero-of-mul-left-eq-neg--44d2566e6c7d600396344f35.md) | 113 | `result-track:44d2566e6c7d600396344f352f44edf5cf4bbdf431112be7f06fe1df2f9139ef` |
| 12 | `theorem` | [integral_eq_zero_of_mul_right_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-eq-zero-of-mul-right-eq-neg--5c6aa732dba1fb818f70b858.md) | 122 | `result-track:5c6aa732dba1fb818f70b858ad31b427390a65b85c0aa6ea223bcef2caea24f6` |
| 13 | `theorem` | [Integrable.comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrable-comp-mul-left--4981c38058eeb8a9599e9903.md) | 127 | `result-track:4981c38058eeb8a9599e99035c8f4e42c12103220c58fa33d9d2387531b0fe22` |
| 14 | `theorem` | [Integrable.comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrable-comp-mul-right--9c4d9bb68f9396ee847287b9.md) | 132 | `result-track:9c4d9bb68f9396ee847287b977777474d3e2cb0fd1a157719bdf20e8a1300d6d` |
| 15 | `theorem` | [Integrable.comp_div_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrable-comp-div-right--da3d42683cd8ae868119f905.md) | 137 | `result-track:da3d42683cd8ae868119f90537b228b98748a61021af116e30fba909c612e697` |
| 16 | `theorem` | [Integrable.comp_div_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrable-comp-div-left--04ae0ea797a50d4617f51f28.md) | 145 | `result-track:04ae0ea797a50d4617f51f28a0a760ebb34a720fd132cad641e9f9d9926eb505` |
| 17 | `theorem` | [integrable_comp_div_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integrable-comp-div-left--e2ac02d3b5740670eaf4607b.md) | 150 | `result-track:e2ac02d3b5740670eaf4607bca4501293e0cb91d10140ffa94129786d38c9f1e` |
| 18 | `theorem` | [integral_div_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-div-left-eq-self--5a91e8d94dba44425d274493.md) | 157 | `result-track:5a91e8d94dba44425d2744931326580aee55686536ea6729bfdbbbc40141e928` |
| 19 | `theorem` | [integral_smul_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantdeca750ff68541e60789b53874e44ddeb63943e21a5c7fd654bf989fcfa8e096.lean/declarations/integral-smul-eq-self--b725e4e509dec0bf315f71d1.md) | 169 | `result-track:b725e4e509dec0bf315f71d13a268682342006e08bf79a0ca55c215ea591511f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
