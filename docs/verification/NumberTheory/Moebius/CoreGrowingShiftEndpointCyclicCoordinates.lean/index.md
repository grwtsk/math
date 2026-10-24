# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3e063a2828cae7a9a2f26bccb1972eb5ab9445",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3e063a2828cae7a9a2f26bccb1972eb5ab9445`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.ZMod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreGrowingShiftEndpointFourierModulus](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointfouriermodulus--11dfd6111fb927f4b21da526.md) | 22 | `declaration-track:11dfd6111fb927f4b21da526427d861aa58293afbb140766c0a71aab8e06c1d4` |
| 2 | `instance` | [coreGrowingShiftEndpointFourierModulus_neZero](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointfouriermodulus-nezero--74b8b662353f0f67617b085a.md) | 25 | `declaration-track:74b8b662353f0f67617b085a88ce9ab0f7bae8c3c57e43fa33c4a7bf129b8d02` |
| 3 | `abbrev` | [CoreGrowingShiftEndpointFourierIndex](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointfourierindex--093403645034df671efb3bcd.md) | 30 | `declaration-track:093403645034df671efb3bcda7250b8863a728a90d25deeab9d8813f699899ea` |
| 4 | `def` | [coreGrowingShiftEndpointDoubledFourierModulus](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointdoubledfouriermodulus--193cedbfa2606a7d512d5b9e.md) | 37 | `declaration-track:193cedbfa2606a7d512d5b9eb67bdf7827929f8b8596c5cf9559c1a2c64cc428` |
| 5 | `instance` | [coreGrowingShiftEndpointDoubledFourierModulus_neZero](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointdoubledfouriermodulus-nezero--6799be098ccd8af33e48705c.md) | 40 | `declaration-track:6799be098ccd8af33e48705c6f1c3fdd4ee2d222ae1b1945fd91b46556b49f3f` |
| 6 | `abbrev` | [CoreGrowingShiftEndpointDoubledFourierIndex](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointdoubledfourierindex--9a56a46ae615e1d84d24010b.md) | 48 | `declaration-track:9a56a46ae615e1d84d24010bed464c98fb146f578303a434e2ccd2d7716478d7` |
| 7 | `def` | [coreGrowingShiftEndpointTransverseNatCharacter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversenatcharacter--daeebfa12fe5270794039bc6.md) | 53 | `declaration-track:daeebfa12fe5270794039bc634cfd701b2b81d01dd6568545f8f9eeaf63fb079` |
| 8 | `theorem` | [coreGrowingShiftEndpointTransverseNatCharacter_succ_mul](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversenatcharacter-succ-mul--b2f8fdac718efa61fa19e701.md) | 61 | `result-track:b2f8fdac718efa61fa19e701ffbfeb732987cf13db9ada4f79d2c0d6e3a8ca9c` |
| 9 | `def` | [coreGrowingShiftEndpointTransverseCircularDistance](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversecirculardistance--34f22a6ae6a2511be10b0a1d.md) | 76 | `declaration-track:34f22a6ae6a2511be10b0a1d17e23cdb0b4ef3f80fcc8cbba23d6e30e1663477` |
| 10 | `theorem` | [coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversecirculardistance-eq-zero-iff--70cf7e1152ae9f3c8b029bbe.md) | 82 | `result-track:70cf7e1152ae9f3c8b029bbe4d6a7790bfda96f08b7cbdb49ba3575bb83ae22c` |
| 11 | `theorem` | [coreGrowingShiftEndpointTransverseCircularDistance_neg](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversecirculardistance-neg--4ec6bf549d7760ab6b3040ad.md) | 101 | `result-track:4ec6bf549d7760ab6b3040ad55bc1d4df8cfb4eecd6af956105e35888820dc12` |
| 12 | `def` | [coreGrowingShiftEndpointTransverseMultiplier](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversemultiplier--3dcdc138649605b18251c2b7.md) | 109 | `declaration-track:3dcdc138649605b18251c2b77d9fa3853db79408c00e47349ea3883d436f5604` |
| 13 | `theorem` | [coreGrowingShiftEndpointTransverseMultiplier_eq_zero_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversemultiplier-eq-zero-iff--460845d1067200035a4f7af1.md) | 115 | `result-track:460845d1067200035a4f7af1467f57b0c4775fd0bdae5ba8992d298ad850457b` |
| 14 | `theorem` | [coreGrowingShiftEndpointTransverseMultiplier_ne_zero](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversemultiplier-ne-zero--2d92333d4fc951e105c7960a.md) | 129 | `result-track:2d92333d4fc951e105c7960a3249dd0254753b4d8a51be7a4e8358479db91669` |
| 15 | `def` | [coreGrowingShiftEndpointTransverseJordanLowerScale](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/declarations/coregrowingshiftendpointtransversejordanlowerscale--52f7b6ec24a767db91f68803.md) | 139 | `declaration-track:52f7b6ec24a767db91f688030522159e7ccc0f4bd84435cd22f54197ff4a8143` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
