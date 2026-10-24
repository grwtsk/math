# Verification target: GRWTSK.NumberTheory.Moebius.AnchoredPairGreenCoefficientBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a25faa8c19378320070d1360474d8419368ea26",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a25faa8c19378320070d1360474d8419368ea26`.

Source path: `GRWTSK/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AdditiveMultiplicativeBridgeObstruction`](../../../../mathematics/NumberTheory/Moebius/AdditiveMultiplicativeBridgeObstruction.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFourierBridge`](../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [anchoredPairSign](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredpairsign--5723d84b34970632e75e7cb1.md) | 45 | `declaration-track:5723d84b34970632e75e7cb1642103c28115112f0a027bc3cc55c7679c5de70a` |
| 2 | `def` | [anchoredMobiusPair](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredmobiuspair--d166129b1da69f1a7b36b991.md) | 51 | `declaration-track:d166129b1da69f1a7b36b99147ba72af3f34060e467b9459e0ca2f7518ad8545` |
| 3 | `theorem` | [anchoredMobiusPair_left](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredmobiuspair-left--7e720c4b75a5b6c542b53862.md) | 58 | `result-track:7e720c4b75a5b6c542b53862b9b7403ad2b1a79127451a07e942b2cb7a2b9175` |
| 4 | `theorem` | [anchoredMobiusPair_right](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredmobiuspair-right--60772c0dc66fb019c83ba096.md) | 66 | `result-track:60772c0dc66fb019c83ba09640f7ec7a844b832dfda19b071211dcda1577cec0` |
| 5 | `theorem` | [anchoredMoebius_one](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredmoebius-one--8e37fb1ce6c18cf2cb44ad73.md) | 77 | `result-track:8e37fb1ce6c18cf2cb44ad7374e3ce421de12a3d5066e5e972d65cba4236614b` |
| 6 | `theorem` | [anchoredMoebius_two](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredmoebius-two--221ffdba4545bcf013d7bc2c.md) | 82 | `result-track:221ffdba4545bcf013d7bc2ccbeb88f12101800a436af7257e87bd964c177a4f` |
| 7 | `theorem` | [anchoredPair_signedCoefficient_eq_moebius](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredpair-signedcoefficient-eq-moebius--ccca5818e5fcc31456032e40.md) | 90 | `result-track:ccca5818e5fcc31456032e404e57b7021f10340a58509c4ebd1d1a42b348dcf5` |
| 8 | `def` | [anchoredDyadicSourceIndices](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoreddyadicsourceindices--e5b49bb0d6e07553ce14c4ad.md) | 123 | `declaration-track:e5b49bb0d6e07553ce14c4ad41103d1780f504acfd7c94305001c26bcb2cf1e4` |
| 9 | `theorem` | [anchoredFactor_mem_source](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredfactor-mem-source--b56e4212a6d70613dbd122dd.md) | 129 | `result-track:b56e4212a6d70613dbd122ddfa4809b3c119e519898aebe620e0948bc7d6efd6` |
| 10 | `def` | [anchoredFiniteGreenDivisorTransform](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredfinitegreendivisortransform--4821b3cefdb5a583ba2c3c50.md) | 147 | `declaration-track:4821b3cefdb5a583ba2c3c50be2f3d199672f3e8baccd624db71f34b645c1166` |
| 11 | `theorem` | [anchoredFiniteGreenDivisorTransform_actual](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredfinitegreendivisortransform-actual--564fc7dded84ec5fb7e75798.md) | 158 | `result-track:564fc7dded84ec5fb7e75798463818449f9218840d3116cc21d9f4e2cfef6198` |
| 12 | `def` | [anchoredDyadicGreenPrimeCoordinate](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoreddyadicgreenprimecoordinate--d7cf8d88c7b0e044d7fcdb1d.md) | 175 | `declaration-track:d7cf8d88c7b0e044d7fcdb1d009474a3c5ebb00dd1b26d9f6c04708c37fb6c8e` |
| 13 | `theorem` | [anchoredDyadicGreenPrimeCoordinate_eq](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoreddyadicgreenprimecoordinate-eq--f6cde9d86d84c6e762cd1b78.md) | 185 | `result-track:f6cde9d86d84c6e762cd1b78f2a13ca42f5c1445dffd821b831af208a20c7efe` |
| 14 | `theorem` | [anchoredGreen_withBackground_eq](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredgreen-withbackground-eq--eadf757fb97914ab530373e5.md) | 197 | `result-track:eadf757fb97914ab530373e5ecb94da8d6ecae13ec45d4ac5be2e85f50090c30` |
| 15 | `theorem` | [anchoredGreenFourierCoordinate_eq_thin](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredgreenfouriercoordinate-eq-thin--a2fa6eadce2caf4e473680a2.md) | 206 | `result-track:a2fa6eadce2caf4e473680a2968fc9262c5ab818cd938c09300c6469d58e4aa5` |
| 16 | `theorem` | [anchoredMobiusPair_one_two_zero_shift](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/declarations/anchoredmobiuspair-one-two-zero-shift--cde55954ff545c8e622a1a16.md) | 216 | `result-track:cde55954ff545c8e622a1a16dcb50ee71b218979e89014c940aac0c94a67f64e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
