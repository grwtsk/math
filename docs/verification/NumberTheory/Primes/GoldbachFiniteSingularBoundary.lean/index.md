# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b6b4a37c088704da25e5b250ed8979ea33665b9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b6b4a37c088704da25e5b250ed8979ea33665b9`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation`](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachProgressionDiagonalWindowMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressiondiagonalwindowmajorsum--e9895c7be7f93fd60a478df4.md) | 54 | `declaration-track:e9895c7be7f93fd60a478df44f30fb80080323b577a8218112a330d7306efc86` |
| 2 | `def` | [goldbachProgressionExplicitDiagonalMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressionexplicitdiagonalmajorsum--1f23ba77daff55cea587d3a9.md) | 62 | `declaration-track:1f23ba77daff55cea587d3a9f905d3fb0328093fa6129377d24a758743083bd5` |
| 3 | `theorem` | [goldbachProgressionDiagonalWindowMajorSum_eq_explicit](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressiondiagonalwindowmajorsum-eq-explicit--db20a24576e92de0d240093e.md) | 70 | `result-track:db20a24576e92de0d240093ebee9cd691a1fe4126a980d825825bce6ca4e76da` |
| 4 | `def` | [goldbachProgressionOscillatoryWindowMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressionoscillatorywindowmajorsum--8fafebb0fbe7db1dd0fea34e.md) | 83 | `declaration-track:8fafebb0fbe7db1dd0fea34ec698f7330a500e499daea784d0de3a7631d55640` |
| 5 | `def` | [goldbachProgressionOscillatoryWindowBudget](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressionoscillatorywindowbudget--64191313b46d819f7d5b62ca.md) | 90 | `declaration-track:64191313b46d819f7d5b62ca9d3cb95a1fd64a8257a88599eb81ddc3966dfa21` |
| 6 | `theorem` | [goldbachProgressionSymmetricWindowMajorSum_eq_diagonal_add_oscillatory](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressionsymmetricwindowmajorsum-eq-diagonal-add-oscillatory--915c110be4312d5a4904f8ca.md) | 97 | `result-track:915c110be4312d5a4904f8caf767b773bd07f991b277b54b71ee6cebac176aa7` |
| 7 | `theorem` | [goldbachProgressionOscillatoryWindowBudget_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressionoscillatorywindowbudget-nonneg--2289ff4828077e3cf4272bd9.md) | 135 | `result-track:2289ff4828077e3cf4272bd91d74a31cb45890c52207041204c511644b898744` |
| 8 | `theorem` | [norm_goldbachProgressionOscillatoryWindowMajorSum_le](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/norm-goldbachprogressionoscillatorywindowmajorsum-le--9770489dd5a9575d7070714f.md) | 144 | `result-track:9770489dd5a9575d7070714fce6b86e7b2464c80fd7a4916682bb598bbfee758` |
| 9 | `theorem` | [goldbachProgressionSymmetricWindowMajor_re_lower](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressionsymmetricwindowmajor-re-lower--b26c9e536d66a1d8378399ab.md) | 181 | `result-track:b26c9e536d66a1d8378399ab9f470ae61efeb88e5b132deeae24fdda22f71e52` |
| 10 | `theorem` | [goldbachProgressionDenominatorMajorBlock_eq_evaluated](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressiondenominatormajorblock-eq-evaluated--6f1c3a57963a65b3df2c630f.md) | 213 | `result-track:6f1c3a57963a65b3df2c630f7d16a6d6a02c431077d52e639aec7957c3cb2cb0` |
| 11 | `theorem` | [goldbachProgressionDenominatorMajorBlock_eq_explicit](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachprogressiondenominatormajorblock-eq-explicit--657935f8ed96f84448b6cf28.md) | 227 | `result-track:657935f8ed96f84448b6cf286afd80fa3a4c51039a03e4ef18b01d33ff61bf99` |
| 12 | `theorem` | [goldbachCount_pos_of_diagonalWindow_progression_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachcount-pos-of-diagonalwindow-progression-bounds--a1b9abc13263fa838f64dc67.md) | 242 | `result-track:a1b9abc13263fa838f64dc67cfa23da3e3da0d93a8fbd4ce6ddde8cf4e599521` |
| 13 | `theorem` | [goldbachCount_pos_of_diagonalWindow_coefficient_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/declarations/goldbachcount-pos-of-diagonalwindow-coefficient-certificate--5c27570b5cb6b61c3618158c.md) | 286 | `result-track:5c27570b5cb6b61c3618158cf0c10c5afae0f58bb73d542953f43a0ae99bc4bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
