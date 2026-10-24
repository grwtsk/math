# minor_eq_zero_of_diagonal_violation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06c99f68-2d08-a0d1-e67f-e67e1fd90d22",
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
  "slug": "minor-eq-zero-of-diagonal-violation--9dadb4d09f64ce5126d81ba3",
  "source": {
    "blob": "9e394b2dded12270c17772977493e034997ba4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dadb4d09f64ce5126d81ba33a676a283090b7827563eb59b03bcdc3e20b072c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06c99f68-2d08-a0d1-e67f-e67e1fd90d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–41.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e394b2dded12270c17772977493e034997ba4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
