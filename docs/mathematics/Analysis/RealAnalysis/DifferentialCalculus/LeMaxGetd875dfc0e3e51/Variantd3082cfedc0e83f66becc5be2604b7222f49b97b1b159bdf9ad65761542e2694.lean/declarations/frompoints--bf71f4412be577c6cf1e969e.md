# fromPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b22659caf94bf52cbaa3f9dbd51b7b81a7d91c37ff3fb0bab4c08bd2e64d380",
  "kind": "def",
  "lexical_name": "fromPoints",
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
  "slug": "frompoints--bf71f4412be577c6cf1e969e",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 196,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf71f4412be577c6cf1e969e4eee504f48581b5b0a4477067a8d6d253e31e7a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b22659caf94bf52cbaa3f9dbd51b7b81a7d91c37ff3fb0bab4c08bd2e64d380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromPoints {a b : ℝ} (s : Finset ℝ)
    (ha : a ∈ s) (hb : b ∈ s) (h_sub : (s : Set ℝ) ⊆ Set.Icc a b) :
    IPartition a b := by
  classical
  let l : List ℝ := s.sort (· ≤ ·)

  have hs_nonempty : s.Nonempty := ⟨a, ha⟩
  have hlpos : 0 < l.length := by
    simpa [l, Finset.length_sort] using (Finset.card_pos.mpr hs_nonempty)

  let n : ℕ := l.length.pred
  have hn : n.succ = l.length := Nat.succ_pred_eq_of_pos hlpos


  have hsorted : List.Sorted (· ≤ ·) l := by
    simpa [l] using (Finset.sort_sorted (s := s) (r := (· ≤ ·)))

  refine
    { n := n
      x := fun i => l.get ⟨i.1, by
  -- i.1 < n+1 = l.length
        simpa [n, Nat.sub_add_cancel (Nat.succ_le_iff.mp hlpos)] using i.2⟩
      monotone := by
        intro i j hij
        exact hsorted.rel_get_of_le (by simpa using hij)
      left := by
        -- show min(s) = a using s ⊆ [a,b] and a ∈ s, then relate to sorted list
        have hmin : Finset.min' s hs_nonempty = a := by
          refine le_antisymm ?_ ?_
          · exact Finset.min'_le _ _ ha
          · exact (h_sub (Finset.min'_mem _ hs_nonempty)).1

        simpa [l] using (by
          have : Finset.min' s hs_nonempty = l.get ⟨0, hlpos⟩ := by
            simpa [l] using (Finset.min'_eq_sorted_zero (s := s) (h := hs_nonempty))
          simpa [this] using hmin)
      right := by
  -- l.length - 1 < l.length because l.length > 0
        have hidx : l.length - 1 < l.length := Nat.pred_lt (Nat.pos_iff_ne_zero.mp hlpos)
  -- Fin l.length index for the last element
        let idx : Fin l.length := ⟨l.length - 1, hidx⟩
        -- show s.max' = b
        have hmax_eq_b : Finset.max' s hs_nonempty = b := by
          refine le_antisymm ?_ ?_
          · have : s.max' (H := hs_nonempty) ∈ s := Finset.max'_mem (s := s) (H := hs_nonempty)
            exact (h_sub this).2
          · exact Finset.le_max' (s := s) (H2 := hb) b
        have hlen_pred : l.length - 1 = n := by
          simpa using congrArg Nat.pred hn
        have hcard_len : s.card = l.length := by simp [l]
        have hcard_pred : s.card - 1 = n := by simpa [hcard_len] using congrArg Nat.pred hn
        simpa [l, hmax_eq_b, hcard_pred] using (Finset.max'_eq_sorted_last (s := s) (h := hs_nonempty)).symm
    }

/-- The points of `fromPoints s` are exactly `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
