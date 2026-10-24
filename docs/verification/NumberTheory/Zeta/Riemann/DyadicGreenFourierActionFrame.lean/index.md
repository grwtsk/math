# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7c5c0a75c60e91db31aa508204d1c89079da25",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7c5c0a75c60e91db31aa508204d1c89079da25`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierReadout`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierReadout.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [greenSourceFrameValue_integral_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greensourceframevalue-integral-zero--6eb1c21881ecdf983bc45e50.md) | 39 | `result-track:6eb1c21881ecdf983bc45e50d8b6e412c28a1b6f2d22042a7a85d5ac05581ef5` |
| 2 | `theorem` | [greenResidualComplex_integral_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenresidualcomplex-integral-zero--46c02bc7cba8009e20c26e9b.md) | 48 | `result-track:46c02bc7cba8009e20c26e9bfedbedd7fd6fc542c8bdadecbe5c493c7a79e281` |
| 3 | `theorem` | [greenResidualFourierCoeff_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenresidualfouriercoeff-zero--910a7f2b80ca872543ad1908.md) | 63 | `result-track:910a7f2b80ca872543ad19085e3b0d17a9c91c5dbf49daa6f4469b6ead1b96db` |
| 4 | `def` | [greenAdmissibleFourierModeEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefouriermodeenergy--0e374df050ff85ccabdec2a0.md) | 72 | `declaration-track:0e374df050ff85ccabdec2a00d1b8512b2831feb4a7af2c9152b5439feedb858` |
| 5 | `theorem` | [greenAdmissibleFourierModeEnergy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefouriermodeenergy-nonnegative--64f635c795a8cca3d31c36a0.md) | 79 | `result-track:64f635c795a8cca3d31c36a0bb42ad5bc084c93acc27eeafdee6fd311dfb2fad` |
| 6 | `theorem` | [greenAdmissibleFourierModeEnergy_eq_coeff](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefouriermodeenergy-eq-coeff--d7739364f71cd5a5a7d867d7.md) | 88 | `result-track:d7739364f71cd5a5a7d867d7222897627c317c3ff5eba906b459d1523ff634be` |
| 7 | `theorem` | [greenAdmissibleFourierModeEnergy_hasSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefouriermodeenergy-hassum--9d5c266159dcc20ee3f1db9f.md) | 101 | `result-track:9d5c266159dcc20ee3f1db9f32c908fd914c159afa4e866b30946de76059102e` |
| 8 | `def` | [greenAdmissibleFourierShellEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefouriershellenergy--04cb66f187c1be514842293f.md) | 109 | `declaration-track:04cb66f187c1be514842293f8186bc1bf037f41a8b54a1a96edcf721222fb2e4` |
| 9 | `theorem` | [greenAdmissibleFourierShellEnergy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefouriershellenergy-nonnegative--f0e8e8bf5229b2bba398747f.md) | 114 | `result-track:f0e8e8bf5229b2bba398747f13881a02f3a4a98188d5266ef27a3df0201692f1` |
| 10 | `theorem` | [greenAdmissibleFourierShellEnergy_hasSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefouriershellenergy-hassum--ff3dd9ab08cd2c5eff042294.md) | 122 | `result-track:ff3dd9ab08cd2c5eff042294568648546d09e6576c435c3c237800938e7f1301` |
| 11 | `def` | [greenAdmissibleFourierActionHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefourieractionhead--6cd50cdbfc089ec0d08e92fd.md) | 129 | `declaration-track:6cd50cdbfc089ec0d08e92fdc6cc87f3d1fe29143a5c3b1045691d9c16e1ca84` |
| 12 | `theorem` | [greenAdmissibleFourierActionHead_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefourieractionhead-nonnegative--0986b569d03cb9d206bc631f.md) | 134 | `result-track:0986b569d03cb9d206bc631f533b5cefbba5dade234f05098f94a67dd097136e` |
| 13 | `theorem` | [greenAdmissibleFourierActionHead_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefourieractionhead-mono--57b2e036383eb618a4b48f4b.md) | 141 | `result-track:57b2e036383eb618a4b48f4b0c954b09afc7cebdfd1f0bc884014100fa413145` |
| 14 | `theorem` | [greenAdmissibleFourierActionHead_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefourieractionhead-tendsto--23d0e6844b57e62a10b55b70.md) | 152 | `result-track:23d0e6844b57e62a10b55b7050bcb7a4f388896e487275db7dff60d090df9ee9` |
| 15 | `theorem` | [greenAdmissibleFourierActionHead_le_greenEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/greenadmissiblefourieractionhead-le-greenenergy--88520e0c99a6cfc668981162.md) | 158 | `result-track:88520e0c99a6cfc668981162dcce85700ffb160ceadd7c6203d0f9c640ea34c4` |
| 16 | `def` | [fullGreenAdmissibleActionStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/fullgreenadmissibleactionstage--28940bb75cdaafab9e74b5a5.md) | 171 | `declaration-track:28940bb75cdaafab9e74b5a57d6484bed15781414829b71cb744e76d358dfbb1` |
| 17 | `theorem` | [fullGreenAdmissibleActionStage_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/fullgreenadmissibleactionstage-nonnegative--c0cc65e7e5e34dc73ca1ee81.md) | 176 | `result-track:c0cc65e7e5e34dc73ca1ee8164e42595b0570e2213383bf0862be888d81fdadf` |
| 18 | `theorem` | [fullGreenAdmissibleActionStage_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/fullgreenadmissibleactionstage-mono--50dc0a3e298762e35483552a.md) | 182 | `result-track:50dc0a3e298762e35483552a2567e6194dbc70efa0a24c4954db536f1926ce03` |
| 19 | `theorem` | [fullGreenAdmissibleActionStage_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/fullgreenadmissibleactionstage-tendsto--4eadbccfb2e3441d271a490d.md) | 191 | `result-track:4eadbccfb2e3441d271a490d1d37e00e1da3e1e4d382b5b5a562568c714376e6` |
| 20 | `theorem` | [fullGreenAdmissibleActionStage_le_augmentedEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/declarations/fullgreenadmissibleactionstage-le-augmentedenergy--89fc7754a27c553ccadece66.md) | 207 | `result-track:89fc7754a27c553ccadece664025353761b558ac6c979d1c303a8a4a21020c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
