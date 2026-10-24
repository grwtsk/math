# applyCell_eq_apply_toListModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de3e4855-5d72-6bc3-ecd1-a47e9e2b2311",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cfb7f67-e46b-1115-98fe-c6242e3e1eb3",
  "kind": "theorem",
  "lexical_name": "applyCell_eq_apply_toListModel",
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
  "slug": "applycell-eq-apply-tolistmodel--12af997d4305bf78608032e8",
  "source": {
    "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 516,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12af997d4305bf78608032e84fe43f1e7849571bec25c2c4076f7ec598dff7a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cfb7f67-e46b-1115-98fe-c6242e3e1eb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyCell_eq_apply_toListModel [Ord α] [TransOrd α] [BEq α] [LawfulBEqOrd α] {k : α}
    {l : Impl α β} (hlo : l.Ordered)
    {f : (c : Cell α β (compare k)) → (l.contains' (compare k) → c.contains) → δ}
    (g : (ll : List ((a : α) × β a)) → (l.contains' (compare k) → containsKey k ll) → δ)
    (hfg : ∀ c hc, f c hc = g c.inner.toList (Cell.containsKey_inner_toList ∘ hc))
    (hg₁ : ∀ l₁ l₂ h, DistinctKeys l₁ → (hP : List.Perm l₁ l₂) → g l₁ h = g l₂ (containsKey_of_perm hP ▸ h))
    (hg : ∀ l₁ l₂ h, (h' : containsKey k l₂ = false) → g (l₁ ++ l₂) h = g l₁ (by simpa [h'] using h)) :
    applyCell k l f = g l.toListModel containsKey_toListModel := by
  rw [applyCell_eq_applyPartition, applyPartition_eq_apply_toListModel hlo]
  intro ll rr c h₁ hd hll hrr
  have hperm : List.Perm (ll ++ c.inner.toList ++ rr) (c.inner.toList ++ (ll ++ rr)) := by
    simp only [List.append_assoc]; exact List.perm_append_comm_assoc ll c.inner.toList rr
  rw [hfg, hg₁ _ _ _ _ hperm, hg]
  · simp only [containsKey_append, Bool.or_eq_false_iff, containsKey_eq_false_iff_forall_mem_keys,
      keys_eq_map, List.mem_map, forall_exists_index, and_imp,
      forall_apply_eq_imp_iff₂]
    exact ⟨fun p hp => by simp [hll p hp, ← not_compare_eq_iff_beq_eq_false],
      fun p hp => by simp [hrr p hp, ← not_compare_eq_iff_beq_eq_false]⟩
  · refine ⟨?_⟩
    rw [keys_eq_map, List.pairwise_map]
    exact hd.imp (fun hp => by simp_all [← not_compare_eq_iff_beq_eq_false])

/-!
## Verification of access operations
-/

/-!
### Equiv
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc6135c55a9da254fb5401996378c149a5caf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
