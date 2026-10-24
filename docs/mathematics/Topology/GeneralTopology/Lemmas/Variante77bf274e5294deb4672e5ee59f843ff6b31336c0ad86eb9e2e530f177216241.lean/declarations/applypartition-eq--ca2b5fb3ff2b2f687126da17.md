# applyPartition_eq

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
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8c4daf5-9b11-78ed-9beb-341bca1b4314",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ca45d86-89cb-d860-ef51-acc14966b514",
  "kind": "theorem",
  "lexical_name": "applyPartition_eq",
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
  "slug": "applypartition-eq--ca2b5fb3ff2b2f687126da17",
  "source": {
    "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 406,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca2b5fb3ff2b2f687126da17287988822a8b561db63c290d0ac950ae6cb12c4c",
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

Occurrence: `result:1ca45d86-89cb-d860-ef51-acc14966b514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyPartition_eq [Ord α] [TransOrd α] {k : α → Ordering} [IsStrictCut compare k] {l : Impl α β}
    {f : List ((a : α) × β a) → (c : Cell α β k) → (l.contains' k → c.contains) → List ((a : α ) × β a) → δ}
    (hlo : l.Ordered) :
    applyPartition k l f =
    f (l.toListModel.filter (k ·.1 == .gt)) (List.findCell l.toListModel k)
      (contains_findCell hlo) (l.toListModel.filter (k ·.1 == .lt)) := by
  rw [applyPartition]
  suffices ∀ ℓ ll rr h, ℓ.Ordered → (∀ p ∈ ll, k p.1 = .gt) → (∀ p ∈ rr, k p.1 = .lt) →
    (l.toListModel = ll ++ ℓ.toListModel ++ rr) →
      applyPartition.go k l f ll ℓ h rr = f (l.toListModel.filter (k ·.1 == .gt))
        (List.findCell l.toListModel k) (contains_findCell hlo)
        (l.toListModel.filter (k ·.1 == .lt)) by simpa using this l [] [] id hlo
  intro ℓ ll rr h hℓo hll hrr hl
  induction ℓ generalizing ll rr
  · rename_i sz k' v' l' r' ih₁ ih₂
    simp only [applyPartition.go, List.cons_append, List.append_assoc]
    split <;> rename_i hcmp
    · rw [ih₁ _ _ _ hℓo.left]
      · exact hll
      · simp only [List.mem_cons, List.mem_append, forall_eq_or_imp, hcmp, true_and]
        rintro p (hp|hp)
        · exact IsCut.lt hcmp (hℓo.compare_right hp)
        · exact hrr _ hp
      · simp [hl]
    · congr
      · rw [hl, List.filter_append, List.filter_append, List.filter_eq_self.2,
        toListModel_filter_gt_of_eq hcmp hℓo, List.filter_eq_nil_iff.2, List.append_nil]
        · exact fun p hp => by simp [hrr p hp]
        · exact fun p hp => by simp [hll p hp]
      · apply Cell.ext
        rw [Cell.ofEq_inner, List.findCell_inner, hl, List.find?_append, List.find?_append,
          List.find?_eq_none.2, Option.none_or, toListModel_find?_of_eq hcmp hℓo, Option.some_or]
        exact fun p hp => by simp [hll p hp]
      · rw [hl, List.filter_append, List.filter_append, List.filter_eq_nil_iff.2, List.nil_append,
          toListModel_filter_lt_of_eq hcmp hℓo, List.filter_eq_self.2]
        · exact fun p hp => by simp [hrr p hp]
        · exact fun p hp => by simp [hll p hp]
    · rw [ih₂ _ _ _ hℓo.right]
      · simp only [List.mem_append, List.mem_singleton]
        rintro p (hp|hp|rfl)
        · exact hll _ hp
        · exact IsCut.gt hcmp (OrientedCmp.gt_of_lt (hℓo.compare_left hp))
        · exact hcmp
      · exact hrr
      · simp [hl]
  · simp only [applyPartition.go]
    congr
    · rw [hl, toListModel_leaf, List.append_nil, List.filter_append, List.filter_eq_self.2,
        List.filter_eq_nil_iff.2, List.append_nil]
      · exact fun p hp => by simp [hrr p hp]
      · exact fun p hp => by simp [hll p hp]
    · apply Cell.ext
      rw [Cell.empty_inner, List.findCell_inner, hl, toListModel_leaf, List.append_nil,
        List.find?_eq_none.2]
      simp only [List.mem_append, beq_iff_eq]
      rintro p (hp|hp)
      · simp [hll p hp]
      · simp [hrr p hp]
    · rw [hl, toListModel_leaf, List.append_nil, List.filter_append, List.filter_eq_nil_iff.2,
        List.filter_eq_self.2, List.nil_append]
      · exact fun p hp => by simp [hrr p hp]
      · exact fun p hp => by simp [hll p hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc6135c55a9da254fb5401996378c149a5caf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
