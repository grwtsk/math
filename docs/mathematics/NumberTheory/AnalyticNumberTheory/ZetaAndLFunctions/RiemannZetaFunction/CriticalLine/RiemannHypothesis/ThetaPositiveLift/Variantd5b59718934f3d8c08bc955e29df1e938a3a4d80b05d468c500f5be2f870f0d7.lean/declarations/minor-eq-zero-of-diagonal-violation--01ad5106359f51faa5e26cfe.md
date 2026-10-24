# minor_eq_zero_of_diagonal_violation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa1669c8b7781648ab5f11c877e98343b2688ec8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba89c365-99c3-7bfb-e9a8-5e11cfbea2a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7088d78b-5e1f-d810-3e5c-7f0869635937",
  "kind": "theorem",
  "lexical_name": "minor_eq_zero_of_diagonal_violation",
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
  "slug": "minor-eq-zero-of-diagonal-violation--01ad5106359f51faa5e26cfe",
  "source": {
    "blob": "fa1669c8b7781648ab5f11c877e98343b2688ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ad5106359f51faa5e26cfe9351abb64f45e6eae452dcf204b7a0c4a3e5e387",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7088d78b-5e1f-d810-3e5c-7f0869635937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minor_eq_zero_of_diagonal_violation (a : ℕ → ℝ) {k : ℕ}
    (r c : Fin k ↪o ℕ) (i : Fin k) (hi : c i < r i) :
    minor a r c = 0 := by
  change Matrix.det (Matrix.of fun i j : Fin k => entry a (r i) (c j)) = 0
  rw [Matrix.det_apply']
  apply Finset.sum_eq_zero
  intro σ _
  obtain ⟨j, hj, hσj⟩ := permutation_crosses_cut σ i
  have hz : entry a (r (σ j)) (c j) = 0 :=
    entry_below a ((c.monotone hj).trans_lt (hi.trans_le (r.monotone hσj)))
  have hp : (∏ l : Fin k, entry a (r (σ l)) (c l)) = 0 :=
    Finset.prod_eq_zero (Finset.mem_univ j) hz
  exact mul_eq_zero_of_right _ hp

/-- For a nonempty selection, the last row and first column decide separation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1669c8b7781648ab5f11c877e98343b2688ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
