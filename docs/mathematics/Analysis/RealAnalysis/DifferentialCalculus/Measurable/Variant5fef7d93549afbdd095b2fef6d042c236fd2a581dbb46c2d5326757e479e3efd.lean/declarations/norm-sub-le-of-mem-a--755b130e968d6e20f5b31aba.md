# norm_sub_le_of_mem_A

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aaafc77d15100c831eb787d82e714d6878c8e73e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64585aca-c761-0aec-2f4c-3495bee2e577",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8da4d35f-173d-8741-71a1-2a044c228bff",
  "kind": "theorem",
  "lexical_name": "norm_sub_le_of_mem_A",
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
  "slug": "norm-sub-le-of-mem-a--755b130e968d6e20f5b31aba",
  "source": {
    "blob": "aaafc77d15100c831eb787d82e714d6878c8e73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:755b130e968d6e20f5b31aba5f293e2cf39db846dcd460475bfa7a9765bdcf33",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8da4d35f-173d-8741-71a1-2a044c228bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_le_of_mem_A {c : 𝕜} (hc : 1 < ‖c‖) {r ε : ℝ} (hε : 0 < ε) (hr : 0 < r) {x : E}
    {L₁ L₂ : E →L[𝕜] F} (h₁ : x ∈ A f L₁ r ε) (h₂ : x ∈ A f L₂ r ε) : ‖L₁ - L₂‖ ≤ 4 * ‖c‖ * ε := by
  refine opNorm_le_of_shell (half_pos hr) (by positivity) hc ?_
  intro y ley ylt
  rw [div_div, div_le_iff₀' (by positivity)] at ley
  calc
    ‖(L₁ - L₂) y‖ = ‖f (x + y) - f x - L₂ (x + y - x) - (f (x + y) - f x - L₁ (x + y - x))‖ := by
      simp
    _ ≤ ‖f (x + y) - f x - L₂ (x + y - x)‖ + ‖f (x + y) - f x - L₁ (x + y - x)‖ := norm_sub_le _ _
    _ ≤ ε * r + ε * r := by
      apply add_le_add
      · apply le_of_mem_A h₂
        · simp only [le_of_lt (half_pos hr), mem_closedBall, dist_self]
        · simp only [dist_eq_norm, add_sub_cancel_left, mem_closedBall, ylt.le]
      · apply le_of_mem_A h₁
        · simp only [le_of_lt (half_pos hr), mem_closedBall, dist_self]
        · simp only [dist_eq_norm, add_sub_cancel_left, mem_closedBall, ylt.le]
    _ = 2 * ε * r := by ring
    _ ≤ 2 * ε * (2 * ‖c‖ * ‖y‖) := by gcongr
    _ = 4 * ‖c‖ * ε * ‖y‖ := by ring

/-- Easy inclusion: a differentiability point with derivative in `K` belongs to `D f K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaafc77d15100c831eb787d82e714d6878c8e73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
