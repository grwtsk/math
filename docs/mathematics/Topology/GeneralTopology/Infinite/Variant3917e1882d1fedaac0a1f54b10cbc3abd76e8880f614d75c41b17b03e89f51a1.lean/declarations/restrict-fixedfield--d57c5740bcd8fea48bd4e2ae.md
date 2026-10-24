# restrict_fixedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f92c4bff-384b-1818-53ff-94eb7c850b13",
  "kind": "lemma",
  "lexical_name": "restrict_fixedField",
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
  "slug": "restrict-fixedfield--d57c5740bcd8fea48bd4e2ae",
  "source": {
    "blob": "6aff0f690d21cd86887156330f15ed6e648f7fdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57c5740bcd8fea48bd4e2aec8dc308d57c9af6016d22e3896fa451279113812",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f92c4bff-384b-1818-53ff-94eb7c850b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrict_fixedField (H : Subgroup (K ≃ₐ[k] K)) (L : IntermediateField k K) [Normal k L] :
    fixedField H ⊓ L = lift (fixedField (Subgroup.map (restrictNormalHom L) H)) := by
  apply SetLike.ext'
  ext x
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · have xL := h.out.2
    apply (mem_lift (⟨x, xL⟩ : L)).mpr
    simp only [mem_fixedField_iff, Subgroup.mem_map, forall_exists_index, and_imp,
      forall_apply_eq_imp_iff₂]
    intro σ hσ
    apply Subtype.val_injective
    dsimp only
    nth_rw 2 [← (h.out.1 ⟨σ, hσ⟩)]
    exact AlgEquiv.restrictNormal_commutes σ L ⟨x, xL⟩
  · have xL := lift_le _ h
    apply (mem_lift (⟨x, xL⟩ : L)).mp at h
    simp only [mem_fixedField_iff, Subgroup.mem_map, forall_exists_index, and_imp,
      forall_apply_eq_imp_iff₂] at h
    simp only [coe_inf, Set.mem_inter_iff, SetLike.mem_coe, mem_fixedField_iff, xL, and_true]
    intro σ hσ
    have : ((restrictNormalHom L σ) ⟨x, xL⟩).1 = x := by rw [h σ hσ]
    nth_rw 2 [← this]
    exact (AlgEquiv.restrictNormal_commutes σ L ⟨x, xL⟩).symm

open IntermediateField in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aff0f690d21cd86887156330f15ed6e648f7fdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
