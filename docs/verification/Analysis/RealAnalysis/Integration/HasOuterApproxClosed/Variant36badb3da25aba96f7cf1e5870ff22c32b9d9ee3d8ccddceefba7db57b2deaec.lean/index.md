# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HasOuterApproxClosed.Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2b479e183dd8cea6db6c2f92afa5befd9c0fd04",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2b479e183dd8cea6db6c2f92afa5befd9c0fd04`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ThickenedIndicator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_lintegral_nn_filter_of_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/tendsto-lintegral-nn-filter-of-le-const--4541756f08e5112001e52d36.md) | 64 | `result-track:4541756f08e5112001e52d36167a8e720630ff4e7d6311130a37150440ce5e38` |
| 2 | `theorem` | [measure_of_cont_bdd_of_tendsto_filter_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/measure-of-cont-bdd-of-tendsto-filter-indicator--be61e8bb8da1ffe2c38ebc64.md) | 82 | `result-track:be61e8bb8da1ffe2c38ebc64875ed95c5c6f8aed5ac383ac64a10d3c952bd985` |
| 3 | `theorem` | [measure_of_cont_bdd_of_tendsto_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/measure-of-cont-bdd-of-tendsto-indicator--3a79b96866946abdf4df836d.md) | 101 | `result-track:3a79b96866946abdf4df836d25850a14cdbd804e75757d6b8b60863fa1a387be` |
| 4 | `theorem` | [tendsto_lintegral_thickenedIndicator_of_isClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/tendsto-lintegral-thickenedindicator-of-isclosed--0ef5c5a259afc32954329282.md) | 115 | `result-track:0ef5c5a259afc32954329282084b279a8d76ef8c3ae5df0e5954b79a1cc5de85` |
| 5 | `class` | [HasOuterApproxClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/hasouterapproxclosed--4ce50027ab7c0bd29c51514e.md) | 134 | `declaration-track:4ce50027ab7c0bd29c51514e355a9dc075993736e25d80e3eb8af4b80e1fd5b7` |
| 6 | `def` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.HasOuterApproxClosed.Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.IsClosed.apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/root-grwtsk-analysis-realanalysis-integration-hasouterapproxclosed-varia--c71391b09bc90b4608f8baa2.md) | 145 | `declaration-track:c71391b09bc90b4608f8baa25b822c54e1f741d236669407dde41dcfb50442ff` |
| 7 | `lemma` | [apprSeq_apply_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/apprseq-apply-le-one--1a811d9ad3b93735daf2a8ad.md) | 148 | `result-track:1a811d9ad3b93735daf2a8ad06b54b1ab0250d99280e6e455cadd337e0552fb2` |
| 8 | `lemma` | [apprSeq_apply_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/apprseq-apply-eq-one--1201907b12ea9b183ededc4c.md) | 152 | `result-track:1201907b12ea9b183ededc4c40f7e997ca59d34222d36a24a800d0dcf4263d24` |
| 9 | `lemma` | [tendsto_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/tendsto-apprseq--7684b9e61c2634ac5a679700.md) | 157 | `result-track:7684b9e61c2634ac5a67970061cbd9199c8d22bdea7d862f8269a7a7327b4698` |
| 10 | `lemma` | [indicator_le_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/indicator-le-apprseq--e15d9d70c455d61f6c28296d.md) | 161 | `result-track:e15d9d70c455d61f6c28296d0c437f549a872f74ff6661250c9916c246e2a2bc` |
| 11 | `theorem` | [measure_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/measure-le-lintegral--56843cfe950fec1365fddb87.md) | 170 | `result-track:56843cfe950fec1365fddb8752a77b72f93d4b691936cd68c5d0578c7f536382` |
| 12 | `lemma` | [tendsto_lintegral_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/tendsto-lintegral-apprseq--73f619720c7c3ec51b7d4a63.md) | 183 | `result-track:73f619720c7c3ec51b7d4a63a06cf5741f781b639a61d22aa9d350545cb988a0` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/instance--bc79020f2999af6ad82a1c4b.md) | 191 | `declaration-track:bc79020f2999af6ad82a1c4b6fea26015acc8dd036fbad38a7dac2423048e906` |
| 14 | `theorem` | [measure_isClosed_eq_of_forall_lintegral_eq_of_isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/measure-isclosed-eq-of-forall-lintegral-eq-of-isfinitemeasure--4d5606d6d1defdfa43bd5415.md) | 211 | `result-track:4d5606d6d1defdfa43bd54150e1531fbe2c21182602bd4b6134922a0394a5af2` |
| 15 | `theorem` | [ext_of_forall_lintegral_eq_of_IsFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/ext-of-forall-lintegral-eq-of-isfinitemeasure--cbb87ed0112cdad4e17c5e77.md) | 229 | `result-track:cbb87ed0112cdad4e17c5e771f8012303577c68d067db0b5b3b6272112137f1c` |
| 16 | `theorem` | [ext_of_forall_integral_eq_of_IsFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant36badb3da25aba96f7cf1e5870ff22c32b9d9ee3d8ccddceefba7db57b2deaec.lean/declarations/ext-of-forall-integral-eq-of-isfinitemeasure--c6627553340af5b5138c8c47.md) | 242 | `result-track:c6627553340af5b5138c8c47a648e0127f0f197ec9c3058d6d2143bafbd0721a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
