# isIso_indexCone_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de44eed6fd01953d1d71fe5eb61d05b77463a2c375f3b75807b818de667778bb",
  "kind": "instance",
  "lexical_name": "isIso_indexCone_lift",
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
  "slug": "isiso-indexcone-lift--fa10b9025cbe6ec062e4665d",
  "source": {
    "blob": "d2db24307e1ac293e2dbdf1f6e551e9b89d53552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa10b9025cbe6ec062e4665d29cce7818edd3c8fb0c3dd74615894027b0b2a66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de44eed6fd01953d1d71fe5eb61d05b77463a2c375f3b75807b818de667778bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_indexCone_lift :
    IsIso ((limitConeIsLimit.{u, u} (indexFunctor hC)).lift (indexCone hC)) :=
  haveI : CompactSpace C := by rwa [← isCompact_iff_compactSpace]
  CompHausLike.isIso_of_bijective _
    (by
      refine ⟨fun a b h ↦ ?_, fun a ↦ ?_⟩
      · refine eq_of_forall_π_app_eq a b (fun J ↦ ?_)
        apply_fun fun f : (limitCone.{u, u} (indexFunctor hC)).pt => f.val (op J) at h
        exact h
      · rsuffices ⟨b, hb⟩ : ∃ (x : C), ∀ (J : Finset ι), π_app C (· ∈ J) x = a.val (op J)
        · use b
          apply Subtype.ext
          apply funext
          intro J
          exact hb (unop J)
        have hc : ∀ (J : Finset ι) s, IsClosed ((π_app C (· ∈ J)) ⁻¹' {s}) := by
          intro J s
          refine IsClosed.preimage (π_app C (· ∈ J)).continuous ?_
          exact T1Space.t1 s
        have H₁ : ∀ (Q₁ Q₂ : Finset ι), Q₁ ≤ Q₂ →
            π_app C (· ∈ Q₁) ⁻¹' {a.val (op Q₁)} ⊇
            π_app C (· ∈ Q₂) ⁻¹' {a.val (op Q₂)} := by
          intro J K h x hx
          simp only [Set.mem_preimage, Set.mem_singleton_iff] at hx ⊢
          rw [← map_comp_π_app C h, Function.comp_apply,
            hx, ← a.prop (homOfLE h).op]
          rfl
        obtain ⟨x, hx⟩ :
            Set.Nonempty (⋂ (J : Finset ι), π_app C (· ∈ J) ⁻¹' {a.val (op J)}) :=
          IsCompact.nonempty_iInter_of_directed_nonempty_isCompact_isClosed
            (fun J : Finset ι => π_app C (· ∈ J) ⁻¹' {a.val (op J)}) (directed_of_isDirected_le H₁)
            (fun J => (Set.singleton_nonempty _).preimage (surjective_π_app _))
            (fun J => (hc J (a.val (op J))).isCompact) fun J => hc J (a.val (op J))
        exact ⟨x, Set.mem_iInter.1 hx⟩)

/-- The canonical map from `C` to the explicit limit as an isomorphism. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2db24307e1ac293e2dbdf1f6e551e9b89d53552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
