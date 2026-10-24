# applyPartition_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4157d0ae-70eb-92c7-d31f-584943362483",
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
  "slug": "applypartition-eq--d9c2ae871be949a65f3afc75",
  "source": {
    "blob": "342b13ed03f55afa231c980200374ff3ab10825e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 414,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c2ae871be949a65f3afc75bc4483b28c48d66cd57371624559ff7561a65f5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4157d0ae-70eb-92c7-d31f-584943362483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–476.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342b13ed03f55afa231c980200374ff3ab10825e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
