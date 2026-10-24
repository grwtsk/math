# Verification target: GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e4429e6e7b9b5bc7d5c261e990f1e8204f000ba",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicSectionMeasureTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e4429e6e7b9b5bc7d5c261e990f1e8204f000ba`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicSectionMeasureTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicSectionMeasureTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircle.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasureDomination](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/measuredomination--84dbda727c1b4139630f26da.md) | 35 | `declaration-track:84dbda727c1b4139630f26da12783631960811482bfc85a9e7b77776c05eed2f` |
| 2 | `def` | [refl](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/refl--f83bb2360744c002fe042813.md) | 44 | `declaration-track:f83bb2360744c002fe042813338528e5f2b15c46c52bc42196e59df8bf0ab39a` |
| 3 | `def` | [comp](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/comp--dde7fc7a830f1c27608e9a4d.md) | 48 | `declaration-track:dde7fc7a830f1c27608e9a4d12451e174d9c25b8702dea6b721d1490a6738aa6` |
| 4 | `def` | [ofPositiveWeight](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/ofpositiveweight--1e136140d970e06e6264fe29.md) | 61 | `declaration-track:1e136140d970e06e6264fe29d5d2908ecb4db8e6afe63c02dde639cf7025c970` |
| 5 | `theorem` | [ae_transfer](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/ae-transfer--161cd423ff82a47f5731434f.md) | 71 | `result-track:161cd423ff82a47f5731434f3212bf53a97bf244693ef1f0d8f03bfbefc9c3d1` |
| 6 | `theorem` | [energy_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/energy-le--215ab24273a4dea9b4f4845d.md) | 79 | `result-track:215ab24273a4dea9b4f4845da0e5cbc15fc28ed2231249cff8513e2440cd8e48` |
| 7 | `def` | [finiteRestrict](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/finiterestrict--a8a26515c47712b4a1c36b71.md) | 87 | `declaration-track:a8a26515c47712b4a1c36b711c1bb1806892345b20d96012308a9db871ce17a4` |
| 8 | `def` | [quotientRestrict](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/quotientrestrict--94fc87425073835258d9001a.md) | 94 | `declaration-track:94fc87425073835258d9001abc2cd3186a96c3de8f762e297ccfadb761f173bc` |
| 9 | `theorem` | [quotientRestrict_classOf](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/quotientrestrict-classof--a206b98a182c993f8b7dc6d7.md) | 100 | `result-track:a206b98a182c993f8b7dc6d793111768ffab4644d4a64a2692046f3067cf504e` |
| 10 | `theorem` | [quotientRestrict_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/quotientrestrict-norm-le--0f74d234070346f7d656e74b.md) | 106 | `result-track:0f74d234070346f7d656e74b14cf8663102426ee7aa0c0c7e0ba67e7e1e6d5e9` |
| 11 | `def` | [restrictionCLM](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/restrictionclm--ff73bd6823aff0d8a8518c11.md) | 121 | `declaration-track:ff73bd6823aff0d8a8518c1139af09cdd653e8be0b39a7334730e50c7c097349` |
| 12 | `theorem` | [restrictionCLM_classOf](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/restrictionclm-classof--c8f141c602da77fab5b56586.md) | 140 | `result-track:c8f141c602da77fab5b565863d9ec0cdf572b3d440dcfadda139db21b575a874` |
| 13 | `theorem` | [restrictionCLM_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/restrictionclm-norm-le--c2e25b78173f1fee8724f735.md) | 145 | `result-track:c2e25b78173f1fee8724f7356886f906511f1f29e212974936568b2a033d5303` |
| 14 | `theorem` | [restrictionCLM_congr](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/restrictionclm-congr--6a0ae38cd98407453f44055c.md) | 152 | `result-track:6a0ae38cd98407453f44055c911899e0102fc925bcbcffae3c3952c9331999e2` |
| 15 | `theorem` | [restrictionCLM_refl](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/restrictionclm-refl--8c64bf76592b9c18e9f61d75.md) | 160 | `result-track:8c64bf76592b9c18e9f61d7510ccd8c99e6483e12bc3b401a0093d9ea2f69bf2` |
| 16 | `theorem` | [restrictionCLM_comp](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/restrictionclm-comp--146e20f6a41cb7d502d8dece.md) | 168 | `result-track:146e20f6a41cb7d502d8deceeada181150a69cf1d49893e8692f669fe1fc6808` |
| 17 | `theorem` | [restrictionCLM_multiplier](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/restrictionclm-multiplier--106210b8a6ebdb6920fcfd01.md) | 178 | `result-track:106210b8a6ebdb6920fcfd01dc16691e9ee1800e11d9e8560d7f3f536c121fc0` |
| 18 | `def` | [pullPointPort](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/pullpointport--5c323eb64e009ed9a6aeda68.md) | 190 | `declaration-track:5c323eb64e009ed9a6aeda6887af6ce413decc1fef2120049d545cfadea4704a` |
| 19 | `def` | [circlePointPort](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/circlepointport--59d13d163b26754498425ebc.md) | 205 | `declaration-track:59d13d163b26754498425ebc9b91579174c371597e79041d61ceeed3b437e77e` |
| 20 | `theorem` | [circlePointPort_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/circlepointport-norm-le--3fa603232fc8f5a3c0c9c0fd.md) | 211 | `result-track:3fa603232fc8f5a3c0c9c0fd4c2c78bbca3fa8cb139994eee0ed15f408b1f74b` |
| 21 | `theorem` | [no_circle_from_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/declarations/no-circle-from-zero--92fd4baf8aeb201fc6ecd298.md) | 222 | `result-track:92fd4baf8aeb201fc6ecd298d5500069f9363c3c1b608ca16c171e1ea7c6d7cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
