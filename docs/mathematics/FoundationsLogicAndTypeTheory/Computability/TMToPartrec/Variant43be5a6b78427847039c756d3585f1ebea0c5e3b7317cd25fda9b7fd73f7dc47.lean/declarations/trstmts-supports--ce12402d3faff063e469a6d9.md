# trStmts₁_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f5f8cd8-b6a2-76f5-1166-73d970fa1b13",
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
  "slug": "trstmts-supports--ce12402d3faff063e469a6d9",
  "source": {
    "blob": "183ab7fd7953d1da639e2f38b8533f488f779d18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1982,
    "line": 1958,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce12402d3faff063e469a6d9d2c61e99875e05fa2bd39b2094c1115949f001c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f5f8cd8-b6a2-76f5-1166-73d970fa1b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1958–1982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trStmts₁_supports {S q} (H₁ : (q : Λ').Supports S) (HS₁ : trStmts₁ q ⊆ S) :
    Supports (trStmts₁ q) S := by
  have W := fun {q} => trStmts₁_self q
  induction' q with _ _ _ q q_ih _ _ q q_ih q q_ih _ _ q q_ih q q_ih q q_ih q₁ q₂ q₁_ih q₂_ih _ <;>
    simp [trStmts₁, -Finset.singleton_subset_iff] at HS₁ ⊢
  any_goals
    cases' Finset.insert_subset_iff.1 HS₁ with h₁ h₂
    first | have h₃ := h₂ W | try simp [Finset.subset_iff] at h₂
  · exact supports_insert.2 ⟨⟨fun _ => h₃, fun _ => h₁⟩, q_ih H₁ h₂⟩ -- move
  · exact supports_insert.2 ⟨⟨fun _ => h₃, fun _ => h₁⟩, q_ih H₁ h₂⟩ -- clear
  · exact supports_insert.2 ⟨⟨fun _ => h₁, fun _ => h₃⟩, q_ih H₁ h₂⟩ -- copy
  · exact supports_insert.2 ⟨⟨fun _ => h₃, fun _ => h₃⟩, q_ih H₁ h₂⟩ -- push
  · refine' supports_insert.2 ⟨fun _ => h₂ _ W, _⟩ -- read
    exact supports_biUnion.2 fun _ => q_ih _ (H₁ _) fun _ h => h₂ _ h
  · refine' supports_insert.2 ⟨⟨fun _ => h₁, fun _ => h₂.1, fun _ => h₂.1⟩, _⟩ -- succ
    exact supports_insert.2 ⟨⟨fun _ => h₂.2 _ W, fun _ => h₂.1⟩, q_ih H₁ h₂.2⟩
  · refine' -- pred
      supports_insert.2 ⟨⟨fun _ => h₁, fun _ => h₂.2 _ (Or.inl W), fun _ => h₂.1, fun _ => h₂.1⟩, _⟩
    refine' supports_insert.2 ⟨⟨fun _ => h₂.2 _ (Or.inr W), fun _ => h₂.1⟩, _⟩
    refine' supports_union.2 ⟨_, _⟩
    · exact q₁_ih H₁.1 fun _ h => h₂.2 _ (Or.inl h)
    · exact q₂_ih H₁.2 fun _ h => h₂.2 _ (Or.inr h)
  · exact supports_singleton.2 (ret_supports H₁)  -- ret
#align turing.partrec_to_TM2.tr_stmts₁_supports Turing.PartrecToTM2.trStmts₁_supports

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean#L1958).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183ab7fd7953d1da639e2f38b8533f488f779d18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
