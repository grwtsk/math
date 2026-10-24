# refinement_index_map

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
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9a18d9b-8978-2e7f-1db3-537ec07b42a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d77fa4d4-f521-2e9c-82cd-dee27884bb79",
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
  "slug": "refinement-index-map--f3e30a8bcf4c23e0f2db2658",
  "source": {
    "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 385,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e30a8bcf4c23e0f2db26587525849587f4b3c1cb319ce832ce8d0e47c6a942",
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

Occurrence: `result:d77fa4d4-f521-2e9c-82cd-dee27884bb79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–411.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661a74a18ecefb4e719f68267d0ff8888af929d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
