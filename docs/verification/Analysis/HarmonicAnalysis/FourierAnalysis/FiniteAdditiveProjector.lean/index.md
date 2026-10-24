# Verification target: GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7b8fa7513e0370e0f1f22ebb996f5877eceb21b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7b8fa7513e0370e0f1f22ebb996f5877eceb21b`.

Source path: `GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteAdditiveProjector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterAverage](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/characteraverage--3c9397b9519087db9528f617.md) | 15 | `declaration-track:3c9397b9519087db9528f61712b1b13339b0bd7943ff2e5484bef25cceb97a30` |
| 2 | `theorem` | [characterAverage_eq_indicator](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/characteraverage-eq-indicator--386e114f50880b575dcc46a1.md) | 20 | `result-track:386e114f50880b575dcc46a1964d9c4d6c6c22808081a53c5cbebd80ceacc471` |
| 3 | `def` | [characterProjector](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/characterprojector--939350bb6f5a78e92b73c929.md) | 33 | `declaration-track:939350bb6f5a78e92b73c929f325406e5aa6034b5ef37c8fc02e791e587e1239` |
| 4 | `theorem` | [characterProjector_eq_average](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/characterprojector-eq-average--aa285f463930bd42efd9b9b3.md) | 37 | `result-track:aa285f463930bd42efd9b9b321cc3403e145c9fe1bb21656bb858d423a54c1e7` |
| 5 | `theorem` | [characterProjector_eq_modular_indicator](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/characterprojector-eq-modular-indicator--0e076794db5977aea43625a4.md) | 45 | `result-track:0e076794db5977aea43625a449df3868ea100ba2e4cd6aa7f4c0b5e658c78dfa` |
| 6 | `theorem` | [nat_add_sub_eq_zero_iff_of_lt](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/nat-add-sub-eq-zero-iff-of-lt--1a694205fa4aedf3cb32197d.md) | 53 | `result-track:1a694205fa4aedf3cb32197d42990f9250e29650c572c1159b754f2c4414de20` |
| 7 | `theorem` | [nat_add_sub_eq_zero_iff_of_noWrap](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/nat-add-sub-eq-zero-iff-of-nowrap--440571f88c560425f870e745.md) | 61 | `result-track:440571f88c560425f870e74592c856db1b6bce62ec3bd47bbc926a8dc6d59fd1` |
| 8 | `theorem` | [characterProjector_eq_indicator_of_noWrap](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/declarations/characterprojector-eq-indicator-of-nowrap--4bdb148c14fc6223bf919b56.md) | 72 | `result-track:4bdb148c14fc6223bf919b56aac9ffa5c88fcd51cda023fc10042370cc16acd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
