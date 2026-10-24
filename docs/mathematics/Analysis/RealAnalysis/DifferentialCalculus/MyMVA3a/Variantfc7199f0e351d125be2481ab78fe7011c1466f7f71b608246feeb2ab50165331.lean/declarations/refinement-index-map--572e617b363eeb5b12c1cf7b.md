# refinement_index_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ef45f30-5ceb-b47f-2ef0-9b27273fc72f",
  "kind": "lemma",
  "lexical_name": "refinement_index_map",
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
  "slug": "refinement-index-map--572e617b363eeb5b12c1cf7b",
  "source": {
    "blob": "3b06a0570821a48a2e65208640ff2e5af25d4cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 393,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:572e617b363eeb5b12c1cf7b9b7461123e9b200adcfb58b06bca4454fca0e14a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ef45f30-5ceb-b47f-2ef0-9b27273fc72f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma refinement_index_map {a b : ℝ} (P R : IPartition a b) (h_ref : IsRefinement R P) :
    ∃ k : Fin (P.n + 1) → Fin (R.n + 1), Monotone k ∧ ∀ i, R.x (k i) = P.x i := by
      -- By definition of $IsRefinement$, there exists a monotone map $k$ from $P$ to $R$ such that $R.x (k i) = P.x i$ for all $i$.
      obtain ⟨k, hk⟩ : ∃ k : (Fin (P.n + 1)) → (Fin (R.n + 1)), (∀ i, R.x (k i) = P.x i) ∧ Monotone k := by
        -- By definition of $IsRefinement$, there exists a monotone map $k$ from $P$ to $R$ such that $R.x (k i) = P.x i$ for all $i$. We can construct $k$ by taking the smallest index $j$ such that $R.x j = P.x i$.
        have h_exists_k : ∀ i : Fin (P.n + 1), ∃ j : Fin (R.n + 1), R.x j = P.x i := by
          intro i
          have h_exists_j : P.x i ∈ R.points := by
            exact h_ref <| Finset.mem_image_of_mem _ <| Finset.mem_univ _
          obtain ⟨j, hj⟩ := Finset.mem_image.mp h_exists_j
          use j
          aesop;
        have h_exists_k : ∀ i : Fin (P.n + 1), ∃ j : Fin (R.n + 1), R.x j = P.x i ∧ ∀ k : Fin (R.n + 1), R.x k = P.x i → j ≤ k := by
          exact fun i => ⟨ Finset.min' ( Finset.univ.filter fun j => R.x j = P.x i ) ⟨ Classical.choose ( h_exists_k i ), Finset.mem_filter.mpr ⟨ Finset.mem_univ _, Classical.choose_spec ( h_exists_k i ) ⟩ ⟩, Finset.mem_filter.mp ( Finset.min'_mem ( Finset.univ.filter fun j => R.x j = P.x i ) ⟨ Classical.choose ( h_exists_k i ), Finset.mem_filter.mpr ⟨ Finset.mem_univ _, Classical.choose_spec ( h_exists_k i ) ⟩ ⟩ ) |>.2, fun k hk => Finset.min'_le _ _ ( by aesop ) ⟩;
        choose k hk₁ hk₂ using h_exists_k;
        refine' ⟨ k, hk₁, fun i j hij => _ ⟩;
        have h_monotone : ∀ i j : Fin (P.n + 1), i ≤ j → P.x i ≤ P.x j := by
          exact fun i j hij => P.monotone hij;
        have h_monotone_R : ∀ i j : Fin (R.n + 1), i ≤ j → R.x i ≤ R.x j := by
          exact fun i j hij => R.monotone hij;
        contrapose! h_monotone;
        exact ⟨ i, j, hij, by linarith [ hk₁ i, hk₁ j, h_monotone_R _ _ h_monotone.le, show R.x ( k j ) < R.x ( k i ) from lt_of_le_of_ne ( h_monotone_R _ _ h_monotone.le ) fun h => h_monotone.ne <| le_antisymm h_monotone.le <| hk₂ _ _ <| by aesop ] ⟩;
      exact ⟨ k, hk.2, hk.1 ⟩

/-
The sum of `term` over `Ico u v` telescopes to `g(v) - g(u)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06a0570821a48a2e65208640ff2e5af25d4cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
