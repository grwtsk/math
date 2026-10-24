# bound_of_ball_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62e1765ee5b6f94eadca1e9d687dede3be401cc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8b3b001-abc6-063f-9968-347623d7711c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d241064-8768-f021-3953-b0aa415df902",
  "kind": "theorem",
  "lexical_name": "bound_of_ball_bound",
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
  "slug": "bound-of-ball-bound--907fa34e5ec87370ce2b2f7f",
  "source": {
    "blob": "62e1765ee5b6f94eadca1e9d687dede3be401cc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:907fa34e5ec87370ce2b2f7f918da710091aa326c2cbf3dea1b10d1739cbb67d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d241064-8768-f021-3953-b0aa415df902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound_of_ball_bound {r : ℝ} (r_pos : 0 < r) (c : ℝ) (f : E →ₗ[𝕜] Fₗ)
    (h : ∀ z ∈ Metric.ball (0 : E) r, ‖f z‖ ≤ c) : ∃ C, ∀ z : E, ‖f z‖ ≤ C * ‖z‖ := by
  obtain ⟨k, hk⟩ := @NontriviallyNormedField.non_trivial 𝕜 _
  use c * (‖k‖ / r)
  intro z
  refine bound_of_shell _ r_pos hk (fun x hko hxo => ?_) _
  calc
    ‖f x‖ ≤ c := h _ (mem_ball_zero_iff.mpr hxo)
    _ ≤ c * (‖x‖ * ‖k‖ / r) := le_mul_of_one_le_right ?_ ?_
    _ = _ := by ring
  · exact le_trans (norm_nonneg _) (h 0 (by simp [r_pos]))
  · rw [div_le_iff₀ (zero_lt_one.trans hk)] at hko
    exact (one_le_div r_pos).mpr hko

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62e1765ee5b6f94eadca1e9d687dede3be401cc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
