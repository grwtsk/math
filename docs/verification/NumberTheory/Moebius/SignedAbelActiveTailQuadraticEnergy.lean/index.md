# Verification target: GRWTSK.NumberTheory.Moebius.SignedAbelActiveTailQuadraticEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1685755d379b867ea62556386356e03fbafcdfd7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1685755d379b867ea62556386356e03fbafcdfd7`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedAbelMassQuadraticEnergy`](../../../../mathematics/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dyadicMertensShiftWeightDrop_eq_zero_of_lt_left](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/dyadicmertensshiftweightdrop-eq-zero-of-lt-left--5829298ccc04a8c8a48b9021.md) | 38 | `result-track:5829298ccc04a8c8a48b9021b7ec8c7355ea8c2ec7b705076e8f2fca7c649b19` |
| 2 | `theorem` | [dyadicMertensShiftWeightDrop_eq_reciprocalDiff_of_left_le](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/dyadicmertensshiftweightdrop-eq-reciprocaldiff-of-left-le--39929a2d7cdc67b6f4b21543.md) | 56 | `result-track:39929a2d7cdc67b6f4b21543de70b49d85b0fc6898e14d53202ec5aeba512a68` |
| 3 | `def` | [signedAbelActiveReciprocalWeight](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/signedabelactivereciprocalweight--d01ec76fc4fab9d6b3c04430.md) | 72 | `declaration-track:d01ec76fc4fab9d6b3c04430a222a2b374ec163866661d0586c7530f7120a980` |
| 4 | `theorem` | [signedAbelDepthWeight_eq_activeReciprocalWeight](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/signedabeldepthweight-eq-activereciprocalweight--867cd3a0fd46a579f01aaf99.md) | 82 | `result-track:867cd3a0fd46a579f01aaf99ee9185878a36747ae1cd9b8f994ae42fcc00db17` |
| 5 | `theorem` | [signedAbelActiveReciprocalWeight_eq_zero_of_lt_left](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/signedabelactivereciprocalweight-eq-zero-of-lt-left--2c036191ce8d319c68d63693.md) | 110 | `result-track:2c036191ce8d319c68d6369365d260f6b75faf8e7d07a49f5b687c44bdaab548` |
| 6 | `theorem` | [signedAbelActiveReciprocalWeight_eq_zero_of_right_le](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/signedabelactivereciprocalweight-eq-zero-of-right-le--accb49adce40bf50c6b76a91.md) | 119 | `result-track:accb49adce40bf50c6b76a919fd584f42e431fe5c8bef40002fd02cdd33ba6fe` |
| 7 | `theorem` | [signedAbelActiveReciprocalWeight_eq_reciprocalDiff](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/signedabelactivereciprocalweight-eq-reciprocaldiff--12a5f0f4e8f4f67dc8e93ee9.md) | 129 | `result-track:12a5f0f4e8f4f67dc8e93ee912dbbd1ce4d65750aa2fcedddd20934d7b7cf8ed` |
| 8 | `def` | [weightedMertensSignedAbelActiveTailQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/weightedmertenssignedabelactivetailquadraticenergy--2c89a289bbb0d9afb174a3f9.md) | 140 | `declaration-track:2c89a289bbb0d9afb174a3f9ef8f39b37b3b8d3f507d3182efef284517791fb1` |
| 9 | `theorem` | [weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/weightedmertenssignedabelglobalquadraticenergy-eq-activetail--e0308a3160ec7d158c794fab.md) | 149 | `result-track:e0308a3160ec7d158c794fab09b242d7b1cb7e8220d0e3970fdc43b55dd8b865` |
| 10 | `theorem` | [weightedMertensSignedAbelActiveTailQuadraticEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/weightedmertenssignedabelactivetailquadraticenergy-nonneg--06a2a3c56d9a3eb731cad24f.md) | 162 | `result-track:06a2a3c56d9a3eb731cad24ffb4616ecd333c6a9730f7a2823d3e1a61e13a161` |
| 11 | `def` | [SubpolynomialDyadicSignedAbelActiveTailQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/subpolynomialdyadicsignedabelactivetailquadraticenergy--78aca7474cd74a2a1e2045a4.md) | 170 | `declaration-track:78aca7474cd74a2a1e2045a4eafee12744e93fdc3c51f664cf97dd84d1a970d6` |
| 12 | `theorem` | [subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy_iff_global](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/subpolynomialdyadicsignedabelactivetailquadraticenergy-iff-global--46fe4f4b4a0ff8abb97809b5.md) | 178 | `result-track:46fe4f4b4a0ff8abb97809b5f3a0cb0d1d7a925c671820c337d934f7f3bf3808` |
| 13 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/declarations/riemannhypothesis-of-subpolynomialdyadicsignedabelactivetailquadraticene--54303e4625ff9c524d147460.md) | 197 | `result-track:54303e4625ff9c524d147460df47595a7c52292abe2a59372c8c69a988b8190b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
