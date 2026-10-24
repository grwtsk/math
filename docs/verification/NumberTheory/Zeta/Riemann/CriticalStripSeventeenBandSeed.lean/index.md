# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "843b8c553eae297aa122a750ad46c23183dcf2e6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `843b8c553eae297aa122a750ad46c23183dcf2e6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripZeroPermittingExtension`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeWitness`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_negative_real](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/source-negative-real--63a3216896649c6985008d81.md) | 25 | `result-track:63a3216896649c6985008d81f39aef5ed8c38934ccfaeeed729d66e0fd61c5d5` |
| 2 | `theorem` | [source_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/source-norm-lower--5697a5ab436807930fad9a56.md) | 34 | `result-track:5697a5ab436807930fad9a56df9d4f56448e7c6420e32caa0f6a9bf249345f9d` |
| 3 | `theorem` | [source_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/source-nonzero--7e98161ffeaeac076019430c.md) | 41 | `result-track:7e98161ffeaeac076019430cadf166fc960df28f6746feb24de700c4a11a4d65` |
| 4 | `def` | [upperBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/upperband--a0aa52084592ca8c9489e1d5.md) | 49 | `declaration-track:a0aa52084592ca8c9489e1d5ff1e84365040ee8392caee344132121bc088e91c` |
| 5 | `theorem` | [noTargetZero_upperBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/notargetzero-upperband--b6245fd64cc1b92e0d5cb695.md) | 51 | `result-track:b6245fd64cc1b92e0d5cb6955869f8697795d8237bb9db2e3dfdc877f7aaac34` |
| 6 | `theorem` | [noTargetZero_signedBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/notargetzero-signedband--01f8a6b1795621a3bb2426e9.md) | 67 | `result-track:01f8a6b1795621a3bb2426e9fea1be5dbc90c6a622333acc60f2dfd3ea4ab5bb` |
| 7 | `theorem` | [shellRH_sixteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/shellrh-sixteen--317ba4366ae61134524546e8.md) | 81 | `result-track:317ba4366ae61134524546e8c999dd6ac6204dab04be21cf8d18185a3e58749e` |
| 8 | `theorem` | [windowRH_seventeen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/windowrh-seventeen--58f8626c6f427caabeb7644b.md) | 90 | `result-track:58f8626c6f427caabeb7644b9732a9cadc7f28c2e7f18816931d95c6439aad26` |
| 9 | `def` | [threeBandCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/threebandcover--a150ba2883eec63225668c99.md) | 94 | `declaration-track:a150ba2883eec63225668c9926c26c57b2e2313881d3725db6087874e2e59a0c` |
| 10 | `theorem` | [threeBandCover_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/threebandcover-count--21eb2624010ef0712a14d3fc.md) | 102 | `result-track:21eb2624010ef0712a14d3fcc5b3f90b139f9af946600b9e7e6e236985d346e0` |
| 11 | `theorem` | [threeBandCover_region](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/threebandcover-region--d453033b7e3c24445335bb00.md) | 105 | `result-track:d453033b7e3c24445335bb00e2cf9ff20050e010bb72d58a2fcc62840cd7f856` |
| 12 | `theorem` | [threeBand_rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/threeband-rhon--2e5d87353f694f8e70717fbd.md) | 107 | `result-track:2e5d87353f694f8e70717fbd2a851ea948611eb3dad205623f60058f5c596114` |
| 13 | `theorem` | [threeBand_target_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/threeband-target-capacity--dec19e6551d513a3c4d8dbe2.md) | 110 | `result-track:dec19e6551d513a3c4d8dbe2f4dbbb1c97c708e020c56d4dd60481b466b911cc` |
| 14 | `abbrev` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/deformation--508f6467705947d16b9b2a6a.md) | 115 | `declaration-track:508f6467705947d16b9b2a6a148f766c205e52cc00370dfb44653506f21800c0` |
| 15 | `theorem` | [deformation_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/deformation-norm-lower--cb28b1aca91a37be7458b221.md) | 117 | `result-track:cb28b1aca91a37be7458b221286c2827994a8857903271e8374d127a59ef6c3a` |
| 16 | `theorem` | [deformation_norm_lower_clear_union](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/deformation-norm-lower-clear-union--7531c4e8206cb374a42db88f.md) | 134 | `result-track:7531c4e8206cb374a42db88f7cdeca85fb16a7d1d7ffbb58cd4d029cc049f95d` |
| 17 | `theorem` | [inverse_deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/inverse-deformation-differentiableat--650e6520cc0ea7f4ec033db9.md) | 142 | `result-track:650e6520cc0ea7f4ec033db91348077eff259e89ec5360d4850af34b590e2903` |
| 18 | `theorem` | [window_eighteen_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/window-eighteen-of-shell--13f39a0dbd0e16c7d30d73bd.md) | 153 | `result-track:13f39a0dbd0e16c7d30d73bd5f05d5109125c0689660a09bb6ef673876588e5d` |
| 19 | `theorem` | [all_windows_of_above_seventeen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/all-windows-of-above-seventeen--44d7d9299ad55099052e351e.md) | 156 | `result-track:44d7d9299ad55099052e351ea5fad2687bdfd994bedf772491351805e706c672` |
| 20 | `theorem` | [rh_of_above_seventeen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/declarations/rh-of-above-seventeen--6775237f0159b6c53917c6e8.md) | 166 | `result-track:6775237f0159b6c53917c6e80e9fc990a284f8fb637aef4b83b2779ec64beaa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
