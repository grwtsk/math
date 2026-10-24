# centeredRectangle_eq_covariance_add_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0888871a87eb006c18c18e9fe73531a04efbe69d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65b605bbf0c9ad99834e2466d146755d2a94cbc2093a80424644cea930960188.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:277f1003-ee27-7906-6841-8757b649289b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc8708ba-e30a-4529-275a-d380f4ae27b7",
  "kind": "theorem",
  "lexical_name": "centeredRectangle_eq_covariance_add_diagonal",
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
  "slug": "centeredrectangle-eq-covariance-add-diagonal--8c91a099e872eae8bc0f2522",
  "source": {
    "blob": "0888871a87eb006c18c18e9fe73531a04efbe69d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceVaughanHankel/Variant65b605bbf0c9ad99834e2466d146755d2a94cbc2093a80424644cea930960188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c91a099e872eae8bc0f252249d6b0fb1f543c5447534e437d4db55729aa2c45",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceVaughanHankel/Variant65b605bbf0c9ad99834e2466d146755d2a94cbc2093a80424644cea930960188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8708ba-e30a-4529-275a-d380f4ae27b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredRectangle_eq_covariance_add_diagonal (A : ℝ) (hA : 1 ≤ A) :
    centeredRectangle A = centeredTypeTwoOffDiagonal A + centeredDeletedDiagonal A := by
  classical
  rw [centeredOffDiagonal_eq_unmasked_rectangle A hA]
  unfold centeredRectangle centeredDeletedDiagonal
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have h := Finset.sum_filter_add_sum_filter_not (longInventory A) (fun n => n = m)
    (fun n => vonMangoldt m * centeredBeta (vaughanCutoff A) n *
      sourcePlainWeight A ((m * n : ℕ) : ℝ))
  have heq : (longInventory A).filter (fun n => n = m) = {m} := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_singleton]
    exact ⟨fun hn => hn.2, fun hn => by subst n; exact ⟨hm, rfl⟩⟩
  simpa only [heq, Finset.sum_singleton, add_comm] using h.symm

/-- Centering creates an exact additional diagonal term; the old Vaughan diagonal is uncentered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceVaughanHankel/Variant65b605bbf0c9ad99834e2466d146755d2a94cbc2093a80424644cea930960188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceVaughanHankel/Variant65b605bbf0c9ad99834e2466d146755d2a94cbc2093a80424644cea930960188.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0888871a87eb006c18c18e9fe73531a04efbe69d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
