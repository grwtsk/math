# Verification target: GRWTSK.NumberTheory.FiniteDivisorSummatoryBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "719f1c90ece6815ba301158911ecb7a54f438fc9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FiniteDivisorSummatoryBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/index.md) · [Full source](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `719f1c90ece6815ba301158911ecb7a54f438fc9`.

Source path: `GRWTSK/NumberTheory/FiniteDivisorSummatoryBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FiniteDivisorSummatoryBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveDivisorIncidenceSet](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/declarations/positivedivisorincidenceset--36b3df93ab2ea3fe20b6a4c7.md) | 33 | `declaration-track:36b3df93ab2ea3fe20b6a4c7ddd81156323117d3ff0f388b889e5a35e48e5b62` |
| 2 | `def` | [positiveDivisorIncidenceMass](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/declarations/positivedivisorincidencemass--2ffd35f47566439dc5bc5f4f.md) | 38 | `declaration-track:2ffd35f47566439dc5bc5f4fdc0c80759e2a45d0942636024ee91214dddd327d` |
| 3 | `theorem` | [positiveDivisorIncidenceSet_card](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/declarations/positivedivisorincidenceset-card--67cda2c897e5b6d08ca220b9.md) | 43 | `result-track:67cda2c897e5b6d08ca220b98612fc06f9fd13506b9d4631da44870cd4afc58e` |
| 4 | `theorem` | [positiveDivisorIncidenceSet_card_cast](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/declarations/positivedivisorincidenceset-card-cast--6b993b958f999bd4f296109e.md) | 50 | `result-track:6b993b958f999bd4f296109e67aef20849524510187f08ae7dd3d977241ef0d7` |
| 5 | `theorem` | [positiveDivisorIncidenceMass_eq_sum_floor](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/declarations/positivedivisorincidencemass-eq-sum-floor--c6f7e60799d54f7433aab782.md) | 59 | `result-track:c6f7e60799d54f7433aab78258ec76f21420593263ff4c69023d9a52f6bed811` |
| 6 | `theorem` | [positiveDivisorIncidenceMass_le](../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/declarations/positivedivisorincidencemass-le--42746a150d9658cb3857e0ed.md) | 102 | `result-track:42746a150d9658cb3857e0ed7abf8c7ea7bf3d1383a083ae7e57a8e139e2d6f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
