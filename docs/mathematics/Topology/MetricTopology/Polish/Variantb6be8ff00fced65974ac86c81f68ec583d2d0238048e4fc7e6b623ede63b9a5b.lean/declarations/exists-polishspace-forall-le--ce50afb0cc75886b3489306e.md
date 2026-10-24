# exists_polishSpace_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b971d471-935a-18c1-b33d-d6d86d18b1a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40153684-2425-4807-4dc0-0b2dedc32a62",
  "kind": "theorem",
  "lexical_name": "exists_polishSpace_forall_le",
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
  "slug": "exists-polishspace-forall-le--ce50afb0cc75886b3489306e",
  "source": {
    "blob": "ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 185,
    "path": "GRWTSK/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce50afb0cc75886b3489306ebcc7c4052d82e9b5fc482cebca1a7e7655255ac6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40153684-2425-4807-4dc0-0b2dedc32a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_polishSpace_forall_le {ι : Type*} [Countable ι] [t : TopologicalSpace α]
    [p : PolishSpace α] (m : ι → TopologicalSpace α) (hm : ∀ n, m n ≤ t)
    (h'm : ∀ n, @PolishSpace α (m n)) :
    ∃ t' : TopologicalSpace α, (∀ n, t' ≤ m n) ∧ t' ≤ t ∧ @PolishSpace α t' := by
  rcases isEmpty_or_nonempty ι with (hι | hι)
  · exact ⟨t, fun i => (IsEmpty.elim hι i : _), le_rfl, p⟩
  inhabit ι
  /- Consider the product of infinitely many copies of `α`, each endowed with the topology `m n`.
    This is a Polish space, as a product of Polish spaces. Pulling back this topology under the
    diagonal embedding of `α`, one gets a Polish topology which is finer than all the `m n`. -/
  letI : ∀ n : ι, TopologicalSpace (AuxCopy α n) := fun n => m n
  haveI : ∀ n : ι, PolishSpace (AuxCopy α n) := fun n => h'm n
  letI T : TopologicalSpace (∀ n : ι, AuxCopy α n) := inferInstance
  let f : α → ∀ n : ι, AuxCopy α n := fun x _ => x
  -- show that the induced topology is finer than all the `m n`.
  have T_le_m : ∀ n, T.induced f ≤ m n := fun n ↦ by
    rw [induced_to_pi]
    exact iInf_le_of_le n (@induced_id _ (m n)).le
  refine' ⟨T.induced f, fun n => T_le_m n, (T_le_m default).trans (hm default), _⟩
  -- show that the new topology is Polish, as the pullback of a Polish topology under a closed
  -- embedding.
  have A : range f = ⋂ n, { x | x n = x default } := by
    ext x
    constructor
    · rintro ⟨y, rfl⟩
      exact mem_iInter.2 fun n => by simp only [mem_setOf_eq]
    · refine fun hx ↦ ⟨x default, ?_⟩
      ext1 n
      symm
      exact mem_iInter.1 hx n
  have f_closed : IsClosed (range f) := by
    rw [A]
    refine isClosed_iInter fun n => ?_
    have C : ∀ i : ι, Continuous fun x : ∀ n, AuxCopy α n => (id (x i) : α) := fun i ↦
      have : Continuous (show AuxCopy α i → α from id) := continuous_id_of_le (hm i)
      this.comp (continuous_apply i)
    apply isClosed_eq (C n) (C default)
  have K : @_root_.Embedding _ _ (T.induced f) T f := by
    refine Function.Injective.embedding_induced fun x y hxy ↦ ?_
    have : f x default = f y default := by rw [hxy]
    exact this
  have L : @ClosedEmbedding _ _ (T.induced f) T f := by
    refine @ClosedEmbedding.mk _ _ (T.induced f) T f ?_ ?_
    · exact K
    · exact f_closed
  exact @ClosedEmbedding.polishSpace _ _ (T.induced f) T (by infer_instance) _ L
#align polish_space.exists_polish_space_forall_le PolishSpace.exists_polishSpace_forall_le

end PolishSpace

/-!
### An open subset of a Polish space is Polish

To prove this fact, one needs to construct another metric, giving rise to the same topology,
for which the open subset is complete. This is not obvious, as for instance `(0,1) ⊆ ℝ` is not
complete for the usual metric of `ℝ`: one should build a new metric that blows up close to the
boundary.

Porting note: definitions and lemmas in this section now take `(s : Opens α)` instead of
`{s : Set α} (hs : IsOpen s)` so that we can turn various definitions and lemmas into instances.
Also, some lemmas used to assume `Set.Nonempty sᶜ` in Lean 3. In fact, this assumption is not
needed, so it was dropped.
-/

namespace TopologicalSpace.Opens

variable [MetricSpace α] {s : Opens α}

/-- A type synonym for a subset `s` of a metric space, on which we will construct another metric
for which it will be complete. -/
-- porting note: was @[nolint has_nonempty_instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
