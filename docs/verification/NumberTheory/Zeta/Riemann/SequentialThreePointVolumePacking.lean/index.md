# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2663a04efe086ef2a5c614674147770eee271dbc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2663a04efe086ef2a5c614674147770eee271dbc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ThreePointVolumeQuarticExtraction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialThreePointPrimePacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/sequentialthreepointprimepacking--0e91f07dee719dd393649a27.md) | 29 | `declaration-track:0e91f07dee719dd393649a270f59737f8ba185f78b7d340b2f5208ea9304d44e` |
| 2 | `def` | [packingAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/packingat--2faba34d71b23b6b45ec1203.md) | 38 | `declaration-track:2faba34d71b23b6b45ec120305566c0a6a328a47745c27317567364fd2ea0002` |
| 3 | `def` | [valueAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/valueat--173f89bac5ce09220d55d0bb.md) | 45 | `declaration-track:173f89bac5ce09220d55d0bba2dd4238da008ff3f61968dc2abaa0f51e1738fa` |
| 4 | `theorem` | [valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/valueat-nonnegative--1bb3c942344b5dde1e53e62c.md) | 49 | `result-track:1bb3c942344b5dde1e53e62c60062003de852062edfa4493a4900cf4f7a28280` |
| 5 | `theorem` | [packingAt_succ_first](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/packingat-succ-first--f765a8ec83575483a2e5ede3.md) | 56 | `result-track:f765a8ec83575483a2e5ede3f40fae9b19a1ff57bedc4a0cc5e227046049fa4c` |
| 6 | `theorem` | [packingAt_succ_second](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/packingat-succ-second--e41a22020a2e1c04f3742f45.md) | 63 | `result-track:e41a22020a2e1c04f3742f45048830f10a8388660ea74765f2022187e01a5403` |
| 7 | `theorem` | [window_source_ok](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/window-source-ok--ac677f322740eb0832be78f9.md) | 70 | `result-track:ac677f322740eb0832be78f9fd7642f7504e6c02663311df31cf82ba3b58d84c` |
| 8 | `theorem` | [valueAt_eq_gramDet](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/valueat-eq-gramdet--b0f874d33c8f6c23f27c508e.md) | 78 | `result-track:b0f874d33c8f6c23f27c508e28a5f7efa392a31a60f1bf6c3403db863602deeb` |
| 9 | `structure` | [SequentialThreePointVolumeExtractionAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/sequentialthreepointvolumeextractionatzero--7f2646ee30ce9c10998a94a9.md) | 88 | `declaration-track:7f2646ee30ce9c10998a94a9a1f3065f5527d2518207c5eb2e42cf0848430e1b` |
| 10 | `def` | [SequentialThreePointVolumeExtractionAtZero.toQuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/sequentialthreepointvolumeextractionatzero-toquarticextraction--c464466126d5934149e1bba0.md) | 102 | `declaration-track:c464466126d5934149e1bba0c4b3f6901d2ec743cf0385ee520bafff9bb23912` |
| 11 | `def` | [SequentialThreePointVolumeQuarticClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/sequentialthreepointvolumequarticclaim--599e9d6297259810b13f9598.md) | 115 | `declaration-track:599e9d6297259810b13f9598e4319f0f34878659c621da7a3a2299a4ba70e850` |
| 12 | `structure` | [SourceBoundSequentialThreePointVolumeExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/sourceboundsequentialthreepointvolumeextraction--ba407c2ba78e4f895d99c12d.md) | 120 | `declaration-track:ba407c2ba78e4f895d99c12dcc592f94299bd3bf4de0e9d9acfd9275dc212a90` |
| 13 | `theorem` | [riemannHypothesis_of_sourceBoundSequentialThreePointVolumeExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/riemannhypothesis-of-sourceboundsequentialthreepointvolumeextraction--2d6f903ec1305bd158f5f480.md) | 127 | `result-track:2d6f903ec1305bd158f5f480f255c36cdd968fda860609beb526def4ea77158d` |
| 14 | `structure` | [LocalSequentialThreePointExtractor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/localsequentialthreepointextractor--b51c8529d98dffd419625c6b.md) | 141 | `declaration-track:b51c8529d98dffd419625c6bd18d21507e18837de84590583ca177aa3f8a1f7e` |
| 15 | `def` | [SourceBoundMechanismBridgeAccepted.toSequentialThreePointExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/declarations/sourceboundmechanismbridgeaccepted-tosequentialthreepointextraction--fdb3a62f35b15c35f3b0b255.md) | 146 | `declaration-track:fdb3a62f35b15c35f3b0b25545713e44e797528e839c20f2d74d0cc916c05497` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
