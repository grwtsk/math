# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22894ffea7515ab3ab67361b81977893173f0f03",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22894ffea7515ab3ab67361b81977893173f0f03`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors`](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosedInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/closedinterval--c8454a43a966dfc0e7505404.md) | 37 | `declaration-track:c8454a43a966dfc0e7505404cfb2468c879edc3df9f6882692dbeef35f85d6ed` |
| 2 | `def` | [carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/carrier--5ebb4ad2b705ac7641863168.md) | 45 | `declaration-track:5ebb4ad2b705ac76418631689a8946250b471881567201fee335782d0dbd3aa7` |
| 3 | `def` | [Overlaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/overlaps--01a72cb39e72492373c8a896.md) | 49 | `declaration-track:01a72cb39e72492373c8a896caea86d69de46f54acad5973ed60283d3f100e53` |
| 4 | `def` | [decimalScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/decimalscale--7fbc4966192137e9fa758895.md) | 53 | `declaration-track:7fbc4966192137e9fa758895783b50b8362d05278a64e02dde283146fda5ef01` |
| 5 | `def` | [digitValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/digitvalue--417b3b1de4a10066a4a7439b.md) | 57 | `declaration-track:417b3b1de4a10066a4a7439b6a7f26734d12080cedbd073f69997dce9a91810e` |
| 6 | `def` | [DigitsCertified](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/digitscertified--a93706228c2991d1c99c0c54.md) | 62 | `declaration-track:a93706228c2991d1c99c0c549c6572be4965e662e433ae51d4d63fd261db64c4` |
| 7 | `theorem` | [floor_eq_digitValue_of_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/floor-eq-digitvalue-of-mem--098531c859dec82787d59084.md) | 67 | `result-track:098531c859dec82787d59084a686d7d5efc43774e06a3a084affd9cd586e8083` |
| 8 | `theorem` | [overlaps_iff_cross_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/overlaps-iff-cross-bounds--9d11a8930f772a821b1a7c5e.md) | 93 | `result-track:9d11a8930f772a821b1a7c5e6f5c63a16a01ad0895dcfeae26212e72a2c76124` |
| 9 | `def` | [interOfOverlaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/interofoverlaps--653ac28363143ff32bbbce0e.md) | 106 | `declaration-track:653ac28363143ff32bbbce0e0f610b87ea3ba088279696d1b3d2d9bc6e1cefd2` |
| 10 | `theorem` | [carrier_interOfOverlaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/carrier-interofoverlaps--acf5b4d4bf553141e12be552.md) | 115 | `result-track:acf5b4d4bf553141e12be55236bfe5a2034f13ada9068a06ee6d754a2d99e011` |
| 11 | `theorem` | [common_point_of_three_pairwise_overlaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/common-point-of-three-pairwise-overlaps--7cd0aa9631e2ce7ffafc252f.md) | 135 | `result-track:7cd0aa9631e2ce7ffafc252f86e7d107ec8dd0e657e171f729b2599613c96e50` |
| 12 | `theorem` | [overlap_chain_need_not_be_pairwise](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/overlap-chain-need-not-be-pairwise--ad870c20e3462f9b03c6fd33.md) | 153 | `result-track:ad870c20e3462f9b03c6fd33b0008134b59b834f044ee0555ac803099ca9a117` |
| 13 | `structure` | [ConsensusCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/consensuscertificate--cda77a0aaa7ac87f223f5b63.md) | 172 | `declaration-track:cda77a0aaa7ac87f223f5b63005ef8cf877b536f93078abd41892c559c047c18` |
| 14 | `theorem` | [mem_local](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/mem-local--766f2cb34e921a12827e92c4.md) | 184 | `result-track:766f2cb34e921a12827e92c472973fe3dc649a725f1af72ff21932edbce44d55` |
| 15 | `theorem` | [mem_consensus](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/mem-consensus--09ce981dc50797202384222a.md) | 193 | `result-track:09ce981dc50797202384222a4e719c3fb4941c3ee6754474e42bf958e73c6491` |
| 16 | `theorem` | [common_digit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/common-digit--7f6f08dcaafbbf38259f2960.md) | 202 | `result-track:7f6f08dcaafbbf38259f2960ab05578c6f09278bb48003efc36a89aa615c0fcb` |
| 17 | `structure` | [ProducerRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/producerrecord--340f793cf1179257d212fc4c.md) | 216 | `declaration-track:340f793cf1179257d212fc4c5cda8a85658697aac7047d7566224e7dcf10b707` |
| 18 | `def` | [Compatible](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/compatible--d6fae996975e6fb8f2accd3c.md) | 230 | `declaration-track:d6fae996975e6fb8f2accd3cc55cc12c454cad97c003f1197a573e143fb047ce` |
| 19 | `structure` | [Federation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/federation--0ebb95b5e8ed6c3224d877e8.md) | 243 | `declaration-track:0ebb95b5e8ed6c3224d877e8b6daaac132b2639da2741ca0daed863d8ea330b5` |
| 20 | `structure` | [DisjointCertifiedFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/disjointcertifiedfamily--d4bd91d8f36cb7d6dd64baca.md) | 254 | `declaration-track:d4bd91d8f36cb7d6dd64baca2a87c4163b071fe18fc170fb905742226c6d9261` |
| 21 | `def` | [certifiedCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/certifiedcount--6cf699cec77ac989d2a27664.md) | 267 | `declaration-track:6cf699cec77ac989d2a2766463b03113890d74af3869009f628d4a550acd7852` |
| 22 | `structure` | [TuringCountCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/turingcountcertificate--42cca81e210b4aa55ce847ca.md) | 276 | `declaration-track:42cca81e210b4aa55ce847cad0b784fdc8a7c45ffce9bc038b0b6edd78e4dc3d` |
| 23 | `def` | [gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/gap--d9ade63d4a8178fdbed1b0ae.md) | 294 | `declaration-track:d9ade63d4a8178fdbed1b0ae1e072d2b798c0dc18735458830b72e048e75b752` |
| 24 | `def` | [Complete](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/complete--03cf3c8c6f5054f79034de58.md) | 299 | `declaration-track:03cf3c8c6f5054f79034de5837e2be30501585271608c385340aabc2e540937e` |
| 25 | `theorem` | [gap_eq_zero_iff_complete](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/gap-eq-zero-iff-complete--9618bb7ceb6f54155db2c2de.md) | 305 | `result-track:9618bb7ceb6f54155db2c2dedd987370385e146823d924bb8508eba586b837e9` |
| 26 | `theorem` | [gap_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/declarations/gap-nonnegative--5c7dbf8af57a425cf692d40e.md) | 320 | `result-track:5c7dbf8af57a425cf692d40ee1bec384fc75d4bd56c88e2c35e856b51779db05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
