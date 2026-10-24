# Verification target: GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d955b3c71ad67285d63f6b740e70b52850c531f1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d955b3c71ad67285d63f6b740e70b52850c531f1`.

Source path: `GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization`](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.RieszPointwiseReconstruction`](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteNormalizedRiesz](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/finitenormalizedriesz--67e487cc6365ff6fc856e962.md) | 23 | `declaration-track:67e487cc6365ff6fc856e9626bc22f24670a3a198f4093d086a91520157b03c0` |
| 2 | `def` | [normalizedRieszTailBudget](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/normalizedriesztailbudget--8160064883ceae3fcd11864b.md) | 29 | `declaration-track:8160064883ceae3fcd11864b2997077f3caec04158db01f15e05315ab2c41774` |
| 3 | `theorem` | [source_sub_finite_eq](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/source-sub-finite-eq--3d127b977c320ce584df16a4.md) | 33 | `result-track:3d127b977c320ce584df16a4c340bdb6b7666d188341eaeb64ec09606af86a3b` |
| 4 | `theorem` | [norm_source_sub_finite_le](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/norm-source-sub-finite-le--99ccde4e8befe606a9da2f77.md) | 45 | `result-track:99ccde4e8befe606a9da2f77a937195bba2e97d3791e21e577ed416988f2e73e` |
| 5 | `theorem` | [normalizedRieszTailBudget_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/normalizedriesztailbudget-tendsto-zero--bbb0777d76d5e3f74a2a2369.md) | 62 | `result-track:bbb0777d76d5e3f74a2a23695435777f1f2ed6e21a6c57bc6054958fe9e229a6` |
| 6 | `theorem` | [finiteNormalizedRiesz_tendsto_source](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/finitenormalizedriesz-tendsto-source--928849b964744ef5279c895e.md) | 70 | `result-track:928849b964744ef5279c895ecdb9d732c3ae1ca52a148164aa6290e42da62cb9` |
| 7 | `def` | [finiteNormalizedPointwise](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/finitenormalizedpointwise--1752b1c34cc181e388c1d627.md) | 80 | `declaration-track:1752b1c34cc181e388c1d627bc23d0923e3c4e170429a6f77686bb91b08c4df5` |
| 8 | `def` | [pointwiseRieszTailBudget](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/pointwiseriesztailbudget--fd71f6dff7687188118d454c.md) | 83 | `declaration-track:fd71f6dff7687188118d454cb0b8afa4b2eb875770e614a4882c0dbe780be766` |
| 9 | `theorem` | [norm_pointwise_sub_finite_le](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/norm-pointwise-sub-finite-le--67384fc514c62c7c6e79c2a5.md) | 87 | `result-track:67384fc514c62c7c6e79c2a5c4efffba2c010f276c6b9dae9161cff7ba3575df` |
| 10 | `theorem` | [pointwiseRieszTailBudget_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/pointwiseriesztailbudget-tendsto-zero--7c8c33ab847296d35312b95d.md) | 96 | `result-track:7c8c33ab847296d35312b95df30473f2c959280a8a4b7ea6d9ff2ddcbb4e2ca0` |
| 11 | `theorem` | [finiteNormalizedPointwise_tendsto_psiHalf](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/declarations/finitenormalizedpointwise-tendsto-psihalf--231ec4d499adb40edca462f9.md) | 105 | `result-track:231ec4d499adb40edca462f99600a1476514da0f89193ba73c61e29e8eedc196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
