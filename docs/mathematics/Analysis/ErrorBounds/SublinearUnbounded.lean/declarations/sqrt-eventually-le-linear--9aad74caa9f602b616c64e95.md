# sqrt_eventually_le_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b22e07a-320c-b3db-4887-32f42f504d5f",
  "kind": "theorem",
  "lexical_name": "sqrt_eventually_le_linear",
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
  "slug": "sqrt-eventually-le-linear--9aad74caa9f602b616c64e95",
  "source": {
    "blob": "546753f8854ed37946c88d533f622f3e39f97d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 10,
    "path": "GRWTSK/Analysis/ErrorBounds/SublinearUnbounded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aad74caa9f602b616c64e950d20cdc78c703188267666aeee41b1a0ad40c233",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/SublinearUnbounded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b22e07a-320c-b3db-4887-32f42f504d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_eventually_le_linear (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n → Real.sqrt (n : ℝ) ≤ ε * n := by
  obtain ⟨N, hN⟩ := exists_nat_gt ((1 / ε) ^ 2)
  refine ⟨N, fun n hn => ?_⟩
  have hnn : (N : ℝ) ≤ n := by exact_mod_cast hn
  have hs := Real.sq_sqrt (show 0 ≤ (n : ℝ) by positivity)
  have hp := Real.sqrt_nonneg (n : ℝ)
  have hi : 0 < 1 / ε := one_div_pos.mpr hε
  have hr : 1 / ε < Real.sqrt (n : ℝ) := by nlinarith
  have he : 1 < ε * Real.sqrt (n : ℝ) := by
    have := (mul_lt_mul_of_pos_left hr hε)
    simpa [ne_of_gt hε] using this
  nlinarith [mul_nonneg (le_of_lt (sub_pos.mpr he)) hp]

/-- The same sublinear sequence exceeds every fixed real bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/SublinearUnbounded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/SublinearUnbounded.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `546753f8854ed37946c88d533f622f3e39f97d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
