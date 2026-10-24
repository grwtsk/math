# window_majorant_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7b34367-3e25-059c-a391-d9f8b437483e",
  "kind": "theorem",
  "lexical_name": "window_majorant_bound",
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
  "slug": "window-majorant-bound--9a2a17aa8d460ad0c6b4dbe8",
  "source": {
    "blob": "c109fc6c3687a5a15667fa0957e51f48d09239bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a2a17aa8d460ad0c6b4dbe8d41a1aa727cc2a3b471b8c6c1f7dbcaa64f9d168",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b34367-3e25-059c-a391-d9f8b437483e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem window_majorant_bound (B rate forcing : ℕ → ℝ) (initial : ℝ)
    (initialBound : B 0 ≤ initial) : ∀ k : ℕ,
    (∀ j, j < k → 0 ≤ rate j) →
    (∀ j, j < k → B (j + 1) ≤ rate j * B j + forcing j) →
    B k ≤ windowMajorant rate forcing initial k := by
  intro k
  induction k with
  | zero =>
      intro _ _
      exact initialBound
  | succ k ih =>
      intro rateNonnegative step
      have previous := ih
        (fun j hj => rateNonnegative j (Nat.lt_succ_of_lt hj))
        (fun j hj => step j (Nat.lt_succ_of_lt hj))
      exact (step k (Nat.lt_succ_self k)).trans
        (add_le_add_left
          (mul_le_mul_of_nonneg_left previous (rateNonnegative k (Nat.lt_succ_self k))) _)

/-- Restarting at N keeps B N; resetting the prefix to zero is not permitted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c109fc6c3687a5a15667fa0957e51f48d09239bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
