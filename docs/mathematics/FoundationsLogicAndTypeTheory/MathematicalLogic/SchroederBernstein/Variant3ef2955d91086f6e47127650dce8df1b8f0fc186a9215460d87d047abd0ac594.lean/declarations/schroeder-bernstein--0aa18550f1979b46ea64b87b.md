# schroeder_bernstein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6636d2dc-7103-363f-812b-917aea87b305",
  "kind": "theorem",
  "lexical_name": "schroeder_bernstein",
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
  "slug": "schroeder-bernstein--0aa18550f1979b46ea64b87b",
  "source": {
    "blob": "eba03ea7cd8d80b994784a694945688ee2830653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aa18550f1979b46ea64b87bc0cad5c6c62fd86e3a4ad4c604536d7b4b34f8d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6636d2dc-7103-363f-812b-917aea87b305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schroeder_bernstein {f : α → β} {g : β → α} (hf : Function.Injective f)
    (hg : Function.Injective g) : ∃ h : α → β, Bijective h := by
  classical
  rcases isEmpty_or_nonempty β with hβ | hβ
  · have : IsEmpty α := Function.isEmpty f
    exact ⟨_, ((Equiv.equivEmpty α).trans (Equiv.equivEmpty β).symm).bijective⟩
  set F : Set α →o Set α :=
    { toFun := fun s => (g '' (f '' s)ᶜ)ᶜ
      monotone' := fun s t hst =>
        compl_subset_compl.mpr <| image_subset _ <| compl_subset_compl.mpr <| image_subset _ hst }
  set s : Set α := F.lfp
  have hs : (g '' (f '' s)ᶜ)ᶜ = s := F.map_lfp
  have hns : g '' (f '' s)ᶜ = sᶜ := compl_injective (by simp [hs])
  set g' := invFun g
  have g'g : LeftInverse g' g := leftInverse_invFun hg
  have hg'ns : g' '' sᶜ = (f '' s)ᶜ := by rw [← hns, g'g.image_image]
  set h : α → β := s.piecewise f g'
  have : Surjective h := by rw [← range_eq_univ, range_piecewise, hg'ns, union_compl_self]
  have : Injective h := by
    refine (injective_piecewise_iff _).2 ⟨hf.injOn, ?_, ?_⟩
    · intro x hx y hy hxy
      obtain ⟨x', _, rfl⟩ : x ∈ g '' (f '' s)ᶜ := by rwa [hns]
      obtain ⟨y', _, rfl⟩ : y ∈ g '' (f '' s)ᶜ := by rwa [hns]
      rw [g'g _, g'g _] at hxy
      rw [hxy]
    · intro x hx y hy hxy
      obtain ⟨y', hy', rfl⟩ : y ∈ g '' (f '' s)ᶜ := by rwa [hns]
      rw [g'g _] at hxy
      exact hy' ⟨x, hx, hxy⟩
  exact ⟨h, ‹Injective h›, ‹Surjective h›⟩

/-- **The Schröder-Bernstein Theorem**: Given embeddings `α ↪ β` and `β ↪ α`, there exists an
equivalence `α ≃ β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba03ea7cd8d80b994784a694945688ee2830653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
