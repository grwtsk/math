# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverClearance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "345b46e0a87abbdab253b6720ecc0f3558aaabf1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `345b46e0a87abbdab253b6720ecc0f3558aaabf1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredCover`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Topology.Order.Compact` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [span](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/span--1ff12aa0a2bdb0f20d6a0725.md) | 26 | `declaration-track:1ff12aa0a2bdb0f20d6a0725589e617497ebf1a042f8989515158278ecfcb24c` |
| 2 | `def` | [Within](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/within--3d3cb489d67b6ecbd7d3a19a.md) | 29 | `declaration-track:3d3cb489d67b6ecbd7d3a19ac32bf7c9766bc9bc0cded4cc644c7cc9fdd45cda` |
| 3 | `lemma` | [within_refl](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/within-refl--85c78c1839a8f4314390a3e5.md) | 33 | `result-track:85c78c1839a8f4314390a3e50d78834eb337064a2cba34c2195d55dd9d3d1869` |
| 4 | `lemma` | [Within.trans](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/within-trans--c9c170d5806651e04ec5dfc0.md) | 36 | `result-track:c9c170d5806651e04ec5dfc0190b0e9b7548d78d82aa65165f866ec89948e3d7` |
| 5 | `lemma` | [Within.carrier_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/within-carrier-subset--78c6786781e18cc349f30051.md) | 41 | `result-track:78c6786781e18cc349f30051a7913c73b88ff5f96454a49b64291151b2a03a66` |
| 6 | `lemma` | [span_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/span-nonneg--23371862c48835d795584f5e.md) | 50 | `result-track:23371862c48835d795584f5eb6047dcc5ef9cc8dbfe18a619cba26276451ec76` |
| 7 | `lemma` | [norm_sub_le_span](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/norm-sub-le-span--99e4bc328eb6c3016cd30731.md) | 54 | `result-track:99e4bc328eb6c3016cd30731bf9aa2b058c443c41c248c55c18dc78fc48e4c0f` |
| 8 | `def` | [UniformDiskClearance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/uniformdiskclearance--1708eb633e03656b4c7be4f5.md) | 74 | `declaration-track:1708eb633e03656b4c7be4f53b576c76601628fee8f245dcb02feaff56c5fb03` |
| 9 | `def` | [SmallBoxCovered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/smallboxcovered--c10220d6251bb560b63120f9.md) | 81 | `declaration-track:c10220d6251bb560b63120f984f6d4efbb5d9c36bef6d40270c5665dfef3b45d` |
| 10 | `theorem` | [UniformDiskClearance.smallBoxCovered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/uniformdiskclearance-smallboxcovered--02b2bd444d1274441c5b87a7.md) | 88 | `result-track:02b2bd444d1274441c5b87a7194239ebe1ad660e9a9b4fccc707135f36d6fbf7` |
| 11 | `theorem` | [UniformDiskClearance.count_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/uniformdiskclearance-count-pos--915131af7b801515e2aa9f1a.md) | 109 | `result-track:915131af7b801515e2aa9f1a17bb2be23d626d82e9ddc316ff95294c090b9ec1` |
| 12 | `theorem` | [UniformDiskClearance.source_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/uniformdiskclearance-source-nonzero--275e3ecb9a6e8dff05ed4431.md) | 118 | `result-track:275e3ecb9a6e8dff05ed443127f4a53d6b05e351bd172443dc8dcbec69f0265e` |
| 13 | `def` | [OpenDiskCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/opendiskcover--69da4c01517866d8d1233396.md) | 129 | `declaration-track:69da4c01517866d8d1233396236464ececa7d584d478494984fae1e4cdc16ca4` |
| 14 | `theorem` | [exists_clearance_of_compact_openCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/declarations/exists-clearance-of-compact-opencover--97c66c9d79f48ac0c1da4b16.md) | 136 | `result-track:97c66c9d79f48ac0c1da4b16ec5bceedebc94594689c96c954cf1bbba2883dda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
