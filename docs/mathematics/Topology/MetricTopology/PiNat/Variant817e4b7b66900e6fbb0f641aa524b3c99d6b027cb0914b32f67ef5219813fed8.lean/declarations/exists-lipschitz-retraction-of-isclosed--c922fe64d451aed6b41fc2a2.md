# exists_lipschitz_retraction_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 548,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6813629c-91d3-904a-e47f-fe6175891493",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37cfffe3-e5c5-71c3-b187-77b505543fe0",
  "kind": "theorem",
  "lexical_name": "exists_lipschitz_retraction_of_isClosed",
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
  "slug": "exists-lipschitz-retraction-of-isclosed--c922fe64d451aed6b41fc2a2",
  "source": {
    "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 651,
    "line": 548,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c922fe64d451aed6b41fc2a2f29b3af89e3d45075cf93acf8bceaaa9655ba23e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37cfffe3-e5c5-71c3-b187-77b505543fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–651.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lipschitz_retraction_of_isClosed {s : Set (∀ n, E n)} (hs : IsClosed s)
    (hne : s.Nonempty) :
    ∃ f : (∀ n, E n) → ∀ n, E n, (∀ x ∈ s, f x = x) ∧ range f = s ∧ LipschitzWith 1 f := by
  /- The map `f` is defined as follows. For `x ∈ s`, let `f x = x`. Otherwise, consider the longest
    prefix `w` that `x` shares with an element of `s`, and let `f x = z_w` where `z_w` is an element
    of `s` starting with `w`. All the desired properties are clear, except the fact that `f` is
    `1`-Lipschitz: if two points `x, y` belong to a common cylinder of length `n`, one should show
    that their images also belong to a common cylinder of length `n`. This is a case analysis:
    * if both `x, y ∈ s`, then this is clear.
    * if `x ∈ s` but `y ∉ s`, then the longest prefix `w` of `y` shared by an element of `s` is of
    length at least `n` (because of `x`), and then `f y` starts with `w` and therefore stays in the
    same length `n` cylinder.
    * if `x ∉ s`, `y ∉ s`, let `w` be the longest prefix of `x` shared by an element of `s`. If its
    length is `< n`, then it is also the longest prefix of `y`, and we get `f x = f y = z_w`.
    Otherwise, `f x` remains in the same `n`-cylinder as `x`. Similarly for `y`. Finally, `f x` and
    `f y` are again in the same `n`-cylinder, as desired. -/
  classical
  set f := fun x => if x ∈ s then x else (inter_cylinder_longestPrefix_nonempty hs hne x).some
  have fs : ∀ x ∈ s, f x = x := fun x xs => by simp [f, xs]
  refine ⟨f, fs, ?_, ?_⟩
  -- check that the range of `f` is `s`.
  · apply Subset.antisymm
    · rintro x ⟨y, rfl⟩
      by_cases hy : y ∈ s
      · rwa [fs y hy]
      simpa [f, if_neg hy] using (inter_cylinder_longestPrefix_nonempty hs hne y).choose_spec.1
    · intro x hx
      rw [← fs x hx]
      exact mem_range_self _
  -- check that `f` is `1`-Lipschitz, by a case analysis.
  · refine LipschitzWith.mk_one fun x y => ?_
    -- exclude the trivial cases where `x = y`, or `f x = f y`.
    rcases eq_or_ne x y with (rfl | hxy)
    · simp
    rcases eq_or_ne (f x) (f y) with (h' | hfxfy)
    · simp [h', dist_nonneg]
    have I2 : cylinder x (firstDiff x y) = cylinder y (firstDiff x y) := by
      rw [← mem_cylinder_iff_eq]
      apply mem_cylinder_firstDiff
    suffices firstDiff x y ≤ firstDiff (f x) (f y) by
      simpa [dist_eq_of_ne hxy, dist_eq_of_ne hfxfy]
    -- case where `x ∈ s`
    by_cases xs : x ∈ s
    · rw [fs x xs] at hfxfy ⊢
      -- case where `y ∈ s`, trivial
      by_cases ys : y ∈ s
      · rw [fs y ys]
      -- case where `y ∉ s`
      have A : (s ∩ cylinder y (longestPrefix y s)).Nonempty :=
        inter_cylinder_longestPrefix_nonempty hs hne y
      have fy : f y = A.some := by simp_rw [f, if_neg ys]
      have I : cylinder A.some (firstDiff x y) = cylinder y (firstDiff x y) := by
        rw [← mem_cylinder_iff_eq, firstDiff_comm]
        apply cylinder_anti y _ A.some_mem.2
        exact firstDiff_le_longestPrefix hs ys xs
      rwa [← fy, ← I2, ← mem_cylinder_iff_eq, mem_cylinder_iff_le_firstDiff hfxfy.symm,
        firstDiff_comm _ x] at I
    -- case where `x ∉ s`
    · by_cases ys : y ∈ s
      -- case where `y ∈ s` (similar to the above)
      · have A : (s ∩ cylinder x (longestPrefix x s)).Nonempty :=
          inter_cylinder_longestPrefix_nonempty hs hne x
        have fx : f x = A.some := by simp_rw [f, if_neg xs]
        have I : cylinder A.some (firstDiff x y) = cylinder x (firstDiff x y) := by
          rw [← mem_cylinder_iff_eq]
          apply cylinder_anti x _ A.some_mem.2
          apply firstDiff_le_longestPrefix hs xs ys
        rw [fs y ys] at hfxfy ⊢
        rwa [← fx, I2, ← mem_cylinder_iff_eq, mem_cylinder_iff_le_firstDiff hfxfy] at I
      -- case where `y ∉ s`
      · have Ax : (s ∩ cylinder x (longestPrefix x s)).Nonempty :=
          inter_cylinder_longestPrefix_nonempty hs hne x
        have fx : f x = Ax.some := by simp_rw [f, if_neg xs]
        have Ay : (s ∩ cylinder y (longestPrefix y s)).Nonempty :=
          inter_cylinder_longestPrefix_nonempty hs hne y
        have fy : f y = Ay.some := by simp_rw [f, if_neg ys]
        -- case where the common prefix to `x` and `s`, or `y` and `s`, is shorter than the
        -- common part to `x` and `y` -- then `f x = f y`.
        by_cases H : longestPrefix x s < firstDiff x y ∨ longestPrefix y s < firstDiff x y
        · have : cylinder x (longestPrefix x s) = cylinder y (longestPrefix y s) := by
            rcases H with H | H
            · exact cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff hs hne H xs ys
            · symm
              rw [firstDiff_comm] at H
              exact cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff hs hne H ys xs
          rw [fx, fy] at hfxfy
          apply (hfxfy _).elim
          congr
        -- case where the common prefix to `x` and `s` is long, as well as the common prefix to
        -- `y` and `s`. Then all points remain in the same cylinders.
        · push_neg at H
          have I1 : cylinder Ax.some (firstDiff x y) = cylinder x (firstDiff x y) := by
            rw [← mem_cylinder_iff_eq]
            exact cylinder_anti x H.1 Ax.some_mem.2
          have I3 : cylinder y (firstDiff x y) = cylinder Ay.some (firstDiff x y) := by
            rw [eq_comm, ← mem_cylinder_iff_eq]
            exact cylinder_anti y H.2 Ay.some_mem.2
          have : cylinder Ax.some (firstDiff x y) = cylinder Ay.some (firstDiff x y) := by
            rw [I1, I2, I3]
          rw [← fx, ← fy, ← mem_cylinder_iff_eq, mem_cylinder_iff_le_firstDiff hfxfy] at this
          exact this

/-- Given a closed nonempty subset `s` of `Π (n : ℕ), E n`, there exists a retraction onto this
set, i.e., a continuous map with range equal to `s`, equal to the identity on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c081c0178e9661d20c8edff18db3210ec4d7338d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
