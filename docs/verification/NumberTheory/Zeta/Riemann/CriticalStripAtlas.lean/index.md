# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAtlas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98f3c4089c3896e1364e35ff3544906d86c1b8f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98f3c4089c3896e1364e35ff3544906d86c1b8f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../../mathematics/NumberTheory/Zeta/Riemann/Hypothesis.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NoncommutativeHeightRoot](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/noncommutativeheightroot--85f43e77167989f3b8ee4eb0.md) | 44 | `declaration-track:85f43e77167989f3b8ee4eb025d421e4bec49a35845e6c17ad6e6044dc8df166` |
| 2 | `def` | [commutatorAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/commutatorat--852a2fda360cf694b6c000cd.md) | 60 | `declaration-track:852a2fda360cf694b6c000cd8594220a81d33cc5c00ec795b33170d980803b79` |
| 3 | `def` | [coordinateHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/coordinateheight--06e5968f09a1e34a7ee1171d.md) | 66 | `declaration-track:06e5968f09a1e34a7ee1171dc7b66cd5cda83c51dd8c6978c3e7213895f209a1` |
| 4 | `def` | [heightAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/heightat--64dd5853bc214539fe3aa86f.md) | 72 | `declaration-track:64dd5853bc214539fe3aa86fe86b1778b72a85d7f400a3a0183dbf582ed4a582` |
| 5 | `theorem` | [heightAt_eq_coordinateHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/heightat-eq-coordinateheight--11aeb925558097ba558a2bc7.md) | 76 | `result-track:11aeb925558097ba558a2bc76752766ad5cb48bece605ffb856eeb1cfa45ee60` |
| 6 | `structure` | [CriticalStripChart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/criticalstripchart--2a4f98ed67345264aefe1dc4.md) | 85 | `declaration-track:2a4f98ed67345264aefe1dc4c3784895857d607e32c6ed457c31d315e58ed087` |
| 7 | `def` | [rootHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/rootheight--887df60a0cb175029e40c165.md) | 103 | `declaration-track:887df60a0cb175029e40c1652d9fa6170f68385b00f7aa7e86d46cb7a76fa5e0` |
| 8 | `theorem` | [coordinate_height_eq_root](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/coordinate-height-eq-root--59a7a16c723bcd584052e1b1.md) | 110 | `result-track:59a7a16c723bcd584052e1b1e07e2a531977492c43cc81ac365323d8069528b4` |
| 9 | `def` | [Overlaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/overlaps--9d4ef18a9ab7ab08e789ace6.md) | 119 | `declaration-track:9d4ef18a9ab7ab08e789ace642aeda2922615fcc2d3fcc70d23bb4b217067b38` |
| 10 | `structure` | [CoordinateTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/coordinatetransition--365eb12fdeee4a2c932f5bf5.md) | 129 | `declaration-track:365eb12fdeee4a2c932f5bf5c172cc6dce44d094d295d2a52d13a07610d6b48f` |
| 11 | `theorem` | [height_preserving](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/height-preserving--5749c578496c8fbfe2405993.md) | 142 | `result-track:5749c578496c8fbfe2405993355e1c882f05bd14bf49b80513091126ad31d0db` |
| 12 | `structure` | [ChartTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/charttransition--22d3b23cb49bc6f71f968ef4.md) | 156 | `declaration-track:22d3b23cb49bc6f71f968ef432d1aef337123ccdef44aeb5cb35dcf0b0de36d8` |
| 13 | `theorem` | [height_preserving](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/height-preserving--91a2673a365e02ed2c5b2c49.md) | 166 | `result-track:91a2673a365e02ed2c5b2c4901cd8c976b1dce171e38cb06d3634fd01dc742c1` |
| 14 | `inductive` | [LocalRHStatus](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/localrhstatus--6dd8b55d0700c07c8a985706.md) | 179 | `declaration-track:6dd8b55d0700c07c8a9857060b1619a10d02c79e3159b4ce4336db8da9295229` |
| 15 | `structure` | [LocalRHProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/localrhprofile--2d9dfb3924f589be24867b70.md) | 189 | `declaration-track:2d9dfb3924f589be24867b70c6a26940aea686afeee4a43328ddf10ac8ce6f54` |
| 16 | `def` | [ofEquivalence](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/ofequivalence--9d089afc2985b28ffa394073.md) | 202 | `declaration-track:9d089afc2985b28ffa394073fe228ed2a292bb058f74b6aba4fbf10e32b68583` |
| 17 | `def` | [ofSufficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/ofsufficient--4babbf08276cb802c439665f.md) | 212 | `declaration-track:4babbf08276cb802c439665fead235506be4520af857ec343cdb2abccfca870c` |
| 18 | `def` | [ofNecessary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/ofnecessary--a0806ac91e6ba445e2ca4604.md) | 224 | `declaration-track:a0806ac91e6ba445e2ca460443718370d3ba0d7bd8fe136faeb188bfb8e21d5f` |
| 19 | `def` | [neutral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/neutral--b62c90590839ef47f5d62551.md) | 236 | `declaration-track:b62c90590839ef47f5d62551e17bd43e94f5b6bbd8ea18e65e3ad52f1bec7186` |
| 20 | `def` | [inconsistent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/inconsistent--7b22a5d2e8611e6a3c45ba4c.md) | 249 | `declaration-track:7b22a5d2e8611e6a3c45ba4c9c8a187d5f8826a02a458dae0abf33decc03d4fc` |
| 21 | `theorem` | [iff_rh_of_equivalent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/iff-rh-of-equivalent--0ea87cfe0cafc5454bb9ebf8.md) | 260 | `result-track:0ea87cfe0cafc5454bb9ebf8883de11d732cf15df64f48b85fd89baad0e801ca` |
| 22 | `structure` | [CriticalStripAtlas](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/criticalstripatlas--8e617f4866a3da94acc438b6.md) | 272 | `declaration-track:8e617f4866a3da94acc438b635c26e1fc4ba3b8e479bb3772866176b4437ed8d` |
| 23 | `def` | [GlobalStatement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/globalstatement--2aedacc08b9c141065ba74d9.md) | 301 | `declaration-track:2aedacc08b9c141065ba74d97b99cf7f2b0925eafe2bc66cd0b73e2874167a98` |
| 24 | `def` | [GapFree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/gapfree--a67a027ed6c60f0d9cdc8e5b.md) | 307 | `declaration-track:a67a027ed6c60f0d9cdc8e5b5cf057c8785159d1720ed8f99b86b30d4f2dc1a2` |
| 25 | `def` | [ForwardGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/forwardgap--6cbed7debaf84478b5aa7c5d.md) | 313 | `declaration-track:6cbed7debaf84478b5aa7c5d5f5f99e6c92705b89aa23bc668c7fa4564ecc9c6` |
| 26 | `def` | [ReverseGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/reversegap--1e6e9a72a5ff6d9dd788a50f.md) | 320 | `declaration-track:1e6e9a72a5ff6d9dd788a50fa8f688e149ec5f9367d0967aeb9fc1edb58491eb` |
| 27 | `theorem` | [localStatement_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/localstatement-iff-rh--32df5f0528a5d99cf3c5028d.md) | 327 | `result-track:32df5f0528a5d99cf3c5028ddf5faaf583d4d20a02405a531050d95cd27b8feb` |
| 28 | `theorem` | [globalStatement_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/globalstatement-iff-rh--4d99117e5739e2a8aa7c247b.md) | 335 | `result-track:4d99117e5739e2a8aa7c247bb82202024ed03be41989dcdd6bc6b41e72f4f479` |
| 29 | `theorem` | [overlap_statement_trans](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/overlap-statement-trans--212033dd51563e5287ed09cc.md) | 347 | `result-track:212033dd51563e5287ed09ccb91635d9c03f514da6d18d8b6d20d4658573a738` |
| 30 | `structure` | [VerticalStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/verticalstep--b53607204e735a0a23399c66.md) | 359 | `declaration-track:b53607204e735a0a23399c6650281ae984331ac2f9a622b5cd12e32d1b83cf43` |
| 31 | `theorem` | [refl](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/refl--864825ee92c4906c5b538233.md) | 370 | `result-track:864825ee92c4906c5b53823318b3f1dfce94e02da044ce92afec7d4150350d24` |
| 32 | `theorem` | [trans](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/trans--4df089b07bec10ae6fb47a4e.md) | 378 | `result-track:4df089b07bec10ae6fb47a4eaeef31a0b42fceb2b69403ca0a19458130866c4b` |
| 33 | `structure` | [TopologicalEquivalence](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/topologicalequivalence--bcb945f00032499a25d03b72.md) | 390 | `declaration-track:bcb945f00032499a25d03b725324567e821115380b01a2d608f659be373d67d1` |
| 34 | `structure` | [StructuredHomotopy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/structuredhomotopy--4e409a7e6f3ab76e43453a7d.md) | 401 | `declaration-track:4e409a7e6f3ab76e43453a7d355d2ac9acecda63cc75507e75784b5e8053ce95` |
| 35 | `structure` | [RingChartHomomorphism](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/ringcharthomomorphism--d8c354d72e63125cad266da4.md) | 410 | `declaration-track:d8c354d72e63125cad266da487dbcc37848ff2821394d9b1462d1a4857cd44f6` |
| 36 | `structure` | [HolomorphicChartMap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/holomorphicchartmap--00d8fd03f837f9371e8cd1dc.md) | 415 | `declaration-track:00d8fd03f837f9371e8cd1dc4e1454639d98e051d2ec0db32a2ddea859365ac4` |
| 37 | `structure` | [TopologicalToAnalyticTransport](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/declarations/topologicaltoanalytictransport--0dd74f0417df96a47de4cd2d.md) | 425 | `declaration-track:0dd74f0417df96a47de4cd2d828d223f35568efe12c92844b900cd33dacda23a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
