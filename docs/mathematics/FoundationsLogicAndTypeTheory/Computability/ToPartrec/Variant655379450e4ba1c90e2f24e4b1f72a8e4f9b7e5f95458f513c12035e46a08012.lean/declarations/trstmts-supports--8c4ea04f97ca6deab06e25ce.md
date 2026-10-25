# trStmts₁_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8b2924b-e284-3f68-bb7c-0df71356895e",
  "kind": "theorem",
  "lexical_name": "trStmts₁_supports",
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
  "slug": "trstmts-supports--8c4ea04f97ca6deab06e25ce",
  "source": {
    "blob": "c99705ed18c92e83219c09ab347bf368539512b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1197,
    "line": 1174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4ea04f97ca6deab06e25cefa5671da13208fc00a1a9f5a8c274a040245916d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8b2924b-e284-3f68-bb7c-0df71356895e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1174–1197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trStmts₁_supports {S q} (H₁ : (q : Λ').Supports S) (HS₁ : trStmts₁ q ⊆ S) :
    Supports (trStmts₁ q) S := by
  have W {q} := trStmts₁_self q
  induction q with
  | move _ _ _ q q_ih => _ | clear _ _ q q_ih => _ | copy q q_ih => _ | push _ _ q q_ih => _
  | read q q_ih => _ | succ q q_ih => _ | pred q₁ q₂ q₁_ih q₂_ih => _
  | ret => exact supports_singleton.2 (ret_supports H₁)
  all_goals obtain ⟨h₁, h₂⟩ := Finset.insert_subset_iff.1 HS₁
  · exact supports_insert.2 ⟨⟨fun _ ↦ h₂ W, fun _ ↦ h₁⟩, q_ih H₁ h₂⟩
  · exact supports_insert.2 ⟨⟨fun _ ↦ h₂ W, fun _ ↦ h₁⟩, q_ih H₁ h₂⟩
  · exact supports_insert.2 ⟨⟨fun _ ↦ h₁, fun _ ↦ h₂ W⟩, q_ih H₁ h₂⟩
  · exact supports_insert.2 ⟨⟨fun _ ↦ h₂ W, fun _ ↦ h₂ W⟩, q_ih H₁ h₂⟩
  · simp_rw [Finset.subset_iff, Finset.mem_biUnion, Finset.mem_univ, true_and,
      forall_exists_index] at h₂
    exact supports_insert.2 ⟨fun _ ↦ h₂ _ W, supports_biUnion.2 fun _ ↦ q_ih _ (H₁ _) fun _ ↦ h₂ _⟩
  · simp_rw [Finset.subset_iff, Finset.mem_insert, forall_eq_or_imp] at h₂
    exact supports_insert.2 ⟨⟨fun _ ↦ h₁, fun _ ↦ h₂.1, fun _ ↦ h₂.1⟩,
      supports_insert.2 ⟨⟨fun _ ↦ h₂.2 _ W, fun _ ↦ h₂.1⟩, q_ih H₁ h₂.2⟩⟩
  · simp_rw [trStmts₁, Finset.union_insert, Finset.subset_iff, Finset.mem_insert, Finset.mem_union,
      forall_eq_or_imp] at h₂ ⊢
    exact supports_insert.2 ⟨⟨fun _ ↦ h₁, fun _ ↦ h₂.2 _ (.inl W), fun _ ↦ h₂.1, fun _ ↦ h₂.1⟩,
      supports_insert.2 ⟨⟨fun _ ↦ h₂.2 _ (.inr W), fun _ ↦ h₂.1⟩, supports_union.2
        ⟨q₁_ih H₁.1 fun _ h ↦ h₂.2 _ (.inl h), q₂_ih H₁.2 fun _ h ↦ h₂.2 _ (.inr h)⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean#L1174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99705ed18c92e83219c09ab347bf368539512b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
