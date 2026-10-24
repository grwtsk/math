# Verification target: GRWTSK.NumberTheory.Moebius.DampedRecordingParseval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6b99ae65b8872800dbbf9ecdf285a1a6e377f73",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6b99ae65b8872800dbbf9ecdf285a1a6e377f73`.

Source path: `GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DampedRecordingParseval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.AngularFrequencyParseval`](../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt`](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [window](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/window--6992f42411af764b389062a4.md) | 32 | `declaration-track:6992f42411af764b389062a4fb87781573ab6c16c2cd36e07c563f15c1805791` |
| 2 | `theorem` | [window_base_continuous](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/window-base-continuous--87b4c29e09101f801989018d.md) | 36 | `result-track:87b4c29e09101f801989018d6065c1515b74950071d0a423938f809c84ccccfc` |
| 3 | `theorem` | [window_integrable](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/window-integrable--352d99bc783652a4d92df52f.md) | 45 | `result-track:352d99bc783652a4d92df52fd003161b96be2578eade93e98804458afa5262a9` |
| 4 | `theorem` | [window_memLp_two](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/window-memlp-two--71d9b0707ba853cf3d0ec64c.md) | 49 | `result-track:71d9b0707ba853cf3d0ec64cda985da59b5e4e68f3795ed6e99e3db927df70dc` |
| 5 | `theorem` | [rawFourier_window](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/rawfourier-window--cb547a59247e6096b35eea01.md) | 70 | `result-track:cb547a59247e6096b35eea01a78e4e8d1fd60c940e454ca61f7a864189c0c021` |
| 6 | `theorem` | [window_norm_sq_integral](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/window-norm-sq-integral--410adefd4045e4390630c31a.md) | 108 | `result-track:410adefd4045e4390630c31a26ba7281c4a0e717191ad9c7f3cf480dd487e740` |
| 7 | `theorem` | [verticalLine_parseval](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/verticalline-parseval--6ef13ca6cddecc03d014881a.md) | 128 | `result-track:6ef13ca6cddecc03d014881ab0fd5c5209c0225aa3a5fd8ea5ff55ae38e2d57b` |
| 8 | `theorem` | [verticalZ_ne_zero](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/verticalz-ne-zero--e96de65dcedebe73a1ac9cc8.md) | 139 | `result-track:e96de65dcedebe73a1ac9cc829a6c12354c656e49fa358e2c7b7184461710caf` |
| 9 | `theorem` | [verticalS_ne_zero](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/verticals-ne-zero--a99d547f000f8b3de7cf2895.md) | 148 | `result-track:a99d547f000f8b3de7cf2895a3f192e09ccd28d4c8bcc445427b6176367eaf5f` |
| 10 | `theorem` | [verticalLine_completed_formula](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/verticalline-completed-formula--d9f59def4d18ccd7464b0337.md) | 157 | `result-track:d9f59def4d18ccd7464b03374e338ba545f5b9daa0777ac620d61630feb7e256` |
| 11 | `theorem` | [completedNumerator_verticalLine_parseval](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/declarations/completednumerator-verticalline-parseval--70aaea5861af79005a022b81.md) | 174 | `result-track:70aaea5861af79005a022b8120f4a225f9a9992041357e5e83f87b4eeb023686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
