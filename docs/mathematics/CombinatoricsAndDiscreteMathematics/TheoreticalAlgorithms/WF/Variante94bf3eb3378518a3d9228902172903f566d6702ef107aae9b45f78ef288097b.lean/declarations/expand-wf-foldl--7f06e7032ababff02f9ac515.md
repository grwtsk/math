# expand_WF.foldl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42ec3d89-bd11-7512-5331-fb4a5f82d832",
  "kind": "theorem",
  "lexical_name": "expand_WF.foldl",
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
  "slug": "expand-wf-foldl--7f06e7032ababff02f9ac515",
  "source": {
    "blob": "6e1c3254ae1c099f827e12ce39547d083521336c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f06e7032ababff02f9ac5159f715c47a65d71beb910f119bacaac06dc968ffe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42ec3d89-bd11-7512-5331-fb4a5f82d832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expand_WF.foldl [BEq α] [Hashable α] (rank : α → Nat) {l : List (α × β)} {i : Nat}
    (hl₁ : ∀ [PartialEquivBEq α] [LawfulHashable α], l.Pairwise fun a b => ¬(a.1 == b.1))
    (hl₂ : ∀ x ∈ l, rank x.1 = i)
    {target : Buckets α β} (ht₁ : target.WF)
    (ht₂ : ∀ bucket ∈ target.1.data,
      bucket.All fun k _ => rank k ≤ i ∧
        ∀ [PartialEquivBEq α] [LawfulHashable α], ∀ x ∈ l, ¬(x.1 == k)) :
    (l.foldl (fun d x => reinsertAux d x.1 x.2) target).WF ∧
    ∀ bucket ∈ (l.foldl (fun d x => reinsertAux d x.1 x.2) target).1.data,
      bucket.All fun k _ => rank k ≤ i := by
  induction l generalizing target with
  | nil => exact ⟨ht₁, fun _ h₁ _ h₂ => (ht₂ _ h₁ _ h₂).1⟩
  | cons _ _ ih =>
    simp only [List.pairwise_cons, List.mem_cons, forall_eq_or_imp] at hl₁ hl₂ ht₂
    refine ih hl₁.2 hl₂.2
      (reinsertAux_WF ht₁ fun _ h => (ht₂ _ (Array.getElem_mem_data ..) _ h).2.1)
      (fun _ h => ?_)
    simp [reinsertAux, Buckets.update] at h
    match List.mem_or_eq_of_mem_set h with
    | .inl h =>
      intro _ hf
      have ⟨h₁, h₂⟩ := ht₂ _ h _ hf
      exact ⟨h₁, h₂.2⟩
    | .inr h => subst h; intro
      | _, .head .. =>
        exact ⟨hl₂.1 ▸ Nat.le_refl _, fun _ h h' => hl₁.1 _ h (PartialEquivBEq.symm h')⟩
      | _, .tail _ h =>
        have ⟨h₁, h₂⟩ := ht₂ _ (Array.getElem_mem_data ..) _ h
        exact ⟨h₁, h₂.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1c3254ae1c099f827e12ce39547d083521336c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
