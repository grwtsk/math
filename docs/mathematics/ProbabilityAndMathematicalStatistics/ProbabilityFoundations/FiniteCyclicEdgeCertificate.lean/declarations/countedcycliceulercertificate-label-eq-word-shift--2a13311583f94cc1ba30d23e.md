# CountedCyclicEulerCertificate.label_eq_word_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f7fa636-7c46-5679-01b8-61930817a35b",
  "kind": "theorem",
  "lexical_name": "CountedCyclicEulerCertificate.label_eq_word_shift",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "countedcycliceulercertificate-label-eq-word-shift--2a13311583f94cc1ba30d23e",
  "source": {
    "blob": "43e4146d642551f48744f76956a6317708f4a644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 111,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a13311583f94cc1ba30d23eaecd47f4b9956fd83e9626975be19850c6d50099",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f7fa636-7c46-5679-01b8-61930817a35b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CountedCyclicEulerCertificate.label_eq_word_shift
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {hN : 0 < countedBinaryEdgeTotal m c}
    (C : CountedCyclicEulerCertificate m c hN)
    (j : ℕ) (hj : j < m + 1) (i : Fin (countedBinaryEdgeTotal m c)) :
    countedEdgeLabel m c (C.order i) ⟨j, hj⟩ =
      C.word (cyclicShift (countedBinaryEdgeTotal m c) hN i j) := by
  induction j generalizing i with
  | zero =>
      rw [cyclicShift_zero]
      rfl
  | succ j ih =>
      have hjm : j < m := by omega
      have h := congrFun (C.compatible i) (⟨j, hjm⟩ : Fin m)
      change countedEdgeLabel m c (C.order i) ⟨j + 1, hj⟩ =
        countedEdgeLabel m c
          (C.order (cyclicSuccessor (countedBinaryEdgeTotal m c) hN i))
          ⟨j, by omega⟩ at h
      rw [cyclicShift_succ]
      exact h.trans (ih (by omega) _)

/-- The extracted word has exactly the ordered edge as its cyclic block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e4146d642551f48744f76956a6317708f4a644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
