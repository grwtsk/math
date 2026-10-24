# exists_p_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba1e8fecf181c4423292bd14dc46e70c6161d26f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 916,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce4c0369-ea23-e4ed-8726-5f2228535c50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df466986-0176-94b5-0b53-15df616e65ec",
  "kind": "lemma",
  "lexical_name": "exists_p_eq",
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
  "slug": "exists-p-eq--44d5b7a7360fd303def480b7",
  "source": {
    "blob": "ba1e8fecf181c4423292bd14dc46e70c6161d26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 938,
    "line": 916,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44d5b7a7360fd303def480b7cfdabfc8bbf2e4f28f07471c86fec5a9a254e7f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df466986-0176-94b5-0b53-15df616e65ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_p_eq : ∃ b c, ∀ n, b < n → p a (N' a N + 2 * n) = c := by
  let c : ℕ := sSup (Set.range (fun i ↦ p a (N' a N + 2 * (2 + i))))
  have hk : 2 * k a ∈ upperBounds (Set.range (fun i ↦ p a (N' a N + 2 * (2 + i)))) := by
    simp only [mem_upperBounds, Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff]
    exact fun i ↦ hc.p_le_two_mul_k (by omega) (hc.small_apply_N'_add_iff_even.mpr (by simp))
  have hlec : ∀ j ∈ Set.range (fun i ↦ p a (N' a N + 2 * (2 + i))), j ≤ c :=
    fun _ hj ↦ le_csSup ⟨_, hk⟩ hj
  obtain ⟨t, ht⟩ := Set.Nonempty.csSup_mem (Set.range_nonempty _) (BddAbove.finite ⟨2 * k a, hk⟩)
  have heqc (u : ℕ) : p a (N' a N + 2 * (2 + t + u)) = c := by
    induction u with
    | zero => simpa using ht
    | succ u ih =>
      refine le_antisymm ?_ (ih ▸ ?_)
      · simp only [Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff] at hlec
        exact add_assoc _ _ (u + 1) ▸ hlec (t + (u + 1))
      · have hs : Small a (a (N' a N + 2 * (2 + t + u))) := by
          rw [hc.small_apply_N'_add_iff_even]
          simp
        convert hc.p_apply_le_p_apply_add_two (by omega) hs using 1
  refine ⟨1 + t, c, fun n hn ↦ ?_⟩
  rw [show n = 2 + t + (n - (2 + t)) by omega]
  exact heqc _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1e8fecf181c4423292bd14dc46e70c6161d26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
