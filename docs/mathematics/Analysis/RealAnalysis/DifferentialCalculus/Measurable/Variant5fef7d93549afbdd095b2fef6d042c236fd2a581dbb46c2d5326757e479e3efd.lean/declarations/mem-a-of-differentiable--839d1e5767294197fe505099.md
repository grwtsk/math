# mem_A_of_differentiable

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
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dba1a182-f240-d6bf-a02a-083ccff913c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26314133-6c01-2180-a0b0-6beffcb7a24f",
  "kind": "theorem",
  "lexical_name": "mem_A_of_differentiable",
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
  "slug": "mem-a-of-differentiable--839d1e5767294197fe505099",
  "source": {
    "blob": "aaafc77d15100c831eb787d82e714d6878c8e73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 484,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:839d1e5767294197fe50509967cb1dce49e3dce130b0a5e389b9dc9656405a96",
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

Occurrence: `result:26314133-6c01-2180-a0b0-6beffcb7a24f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_A_of_differentiable {ε : ℝ} (hε : 0 < ε) {x : ℝ}
    (hx : DifferentiableWithinAt ℝ f (Ici x) x) :
    ∃ R > 0, ∀ r ∈ Ioo (0 : ℝ) R, x ∈ A f (derivWithin f (Ici x) x) r ε := by
  have := hx.hasDerivWithinAt
  simp_rw [hasDerivWithinAt_iff_isLittleO, isLittleO_iff] at this
  rcases mem_nhdsGE_iff_exists_Ico_subset.1 (this (half_pos hε)) with ⟨m, xm, hm⟩
  refine ⟨m - x, by linarith [show x < m from xm], fun r hr => ?_⟩
  have : r ∈ Ioc (r / 2) r := ⟨half_lt_self hr.1, le_rfl⟩
  refine ⟨r, this, fun y hy z hz => ?_⟩
  calc
    ‖f z - f y - (z - y) • derivWithin f (Ici x) x‖ =
        ‖f z - f x - (z - x) • derivWithin f (Ici x) x -
            (f y - f x - (y - x) • derivWithin f (Ici x) x)‖ := by
      congr 1; simp only [sub_smul]; abel
    _ ≤
        ‖f z - f x - (z - x) • derivWithin f (Ici x) x‖ +
          ‖f y - f x - (y - x) • derivWithin f (Ici x) x‖ :=
      (norm_sub_le _ _)
    _ ≤ ε / 2 * ‖z - x‖ + ε / 2 * ‖y - x‖ :=
      (add_le_add (hm ⟨hz.1, hz.2.trans_lt (by linarith [hr.2])⟩)
        (hm ⟨hy.1, hy.2.trans_lt (by linarith [hr.2])⟩))
    _ ≤ ε / 2 * r + ε / 2 * r := by
      gcongr
      · rw [Real.norm_of_nonneg] <;> linarith [hz.1, hz.2]
      · rw [Real.norm_of_nonneg] <;> linarith [hy.1, hy.2]
    _ = ε * r := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaafc77d15100c831eb787d82e714d6878c8e73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
