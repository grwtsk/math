# points_fromPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc96eceb-600e-b08f-365e-bdf3bfc94ae0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0288dfea-6899-f847-4474-fa59004bc5d1",
  "kind": "lemma",
  "lexical_name": "points_fromPoints",
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
  "slug": "points-frompoints--8b939729863881da7b72f399",
  "source": {
    "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 243,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b939729863881da7b72f399cbd5e4d39ccdf837c0c7423acdb1133930ebafca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0288dfea-6899-f847-4474-fa59004bc5d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma points_fromPoints {a b : ℝ} (s : Finset ℝ)
    (ha : a ∈ s) (hb : b ∈ s) (h_sub : (s : Set ℝ) ⊆ Set.Icc a b) :
    (fromPoints (a:=a) (b:=b) s ha hb h_sub).points = s := by
  classical
  -- replicate the local defs used in fromPoints, so we can reuse them
  let l : List ℝ := s.sort (· ≤ ·)

  have hs_nonempty : s.Nonempty := ⟨a, ha⟩
  have hlpos : 0 < l.length := by
    simpa [l, Finset.length_sort] using (Finset.card_pos.mpr hs_nonempty)

  let n : ℕ := l.length.pred
  have hn : n.succ = l.length := Nat.succ_pred_eq_of_pos hlpos
  have hn' : n + 1 = l.length := by
    simpa [Nat.succ_eq_add_one] using hn

  ext y
  constructor
  · intro hy
    -- unfold points and fromPoints enough to get "y is some l.get ..."
    -- (we keep [l,n] in simp so it doesn't explode)
    have hy' : y ∈ (Finset.univ : Finset (Fin (n + 1))).image (fun i =>
      l.get ⟨i.1, by
        -- this is exactly the bound proof used in fromPoints
        simpa [n, Nat.sub_add_cancel (Nat.succ_le_iff.mp hlpos)] using i.2⟩) := by
      -- this is what `points` is, after unfolding `fromPoints`
      simpa [IPartition.points, fromPoints, l, n] using hy

    rcases Finset.mem_image.mp hy' with ⟨i, hiuniv, rfl⟩
    -- Now show this list element is in s, since l = s.sort ...
    have : l.get ⟨i.1, by
        simpa [n, Nat.sub_add_cancel (Nat.succ_le_iff.mp hlpos)] using i.2⟩ ∈ l :=
      List.get_mem l _
    -- Convert list-membership in l to finset-membership in s using mem_sort
    exact (Finset.mem_sort (s := s) (r := (· ≤ ·))).1 (by simpa [l] using this)

  · intro hy
    -- y ∈ s → y ∈ l
    have hyL : y ∈ l := (Finset.mem_sort (s := s) (r := (· ≤ ·))).2 (by simpa using hy)
    -- pick an index j with l.get j = y
    rcases List.mem_iff_get.mp hyL with ⟨j, rfl⟩

    -- We need to show l.get j is in the image of x over Fin (n+1).
    -- Use i := cast j into Fin (n+1).
    let i : Fin (n + 1) := Fin.cast hn'.symm j

    -- Unfold points/fromPoints and provide witness i
    have : l.get j ∈ (Finset.univ : Finset (Fin (n + 1))).image (fun i =>
      l.get ⟨i.1, by
        simpa [n, Nat.sub_add_cancel (Nat.succ_le_iff.mp hlpos)] using i.2⟩) := by
      refine Finset.mem_image.mpr ?_
      refine ⟨i, Finset.mem_univ _, ?_⟩
      -- Compare the Fin indices used in the two gets
      -- j : Fin l.length, while the RHS uses ⟨i.1, _⟩ : Fin l.length.
      -- Show they are equal by Fin.ext (only vals matter).
      have hjlen : (⟨i.1, by
          -- i.2 : i.1 < n+1, rewrite via hn' to get i.1 < l.length
          simpa [hn', i] using i.2⟩ : Fin l.length) = j := by
        apply Fin.ext
        rfl
      -- Then the gets are equal
      simpa [hjlen]

    -- now translate back to the original goal
    simpa [IPartition.points, fromPoints, l, n] using this

/-
The union of two partitions P and Q is the partition constructed from the union of their point sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661a74a18ecefb4e719f68267d0ff8888af929d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
