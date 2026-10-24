# MulAction.properSMul_iff_isCompact_setOfPred_inter_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7fbe170-c5fb-b88f-b2b0-45cb74fc7ce9",
  "kind": "lemma",
  "lexical_name": "MulAction.properSMul_iff_isCompact_setOfPred_inter_nonempty",
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
  "slug": "mulaction-propersmul-iff-iscompact-setofpred-inter-nonempty--f0704968ba471fcc3f8144fb",
  "source": {
    "blob": "30295c1898cad0bd020f91aa8fc56f5f7d812260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0704968ba471fcc3f8144fb82e4383dd5d57b54f299338ed9f18847917c1390",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7fbe170-c5fb-b88f-b2b0-45cb74fc7ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MulAction.properSMul_iff_isCompact_setOfPred_inter_nonempty [ContinuousSMul G X] :
    ProperSMul G X ↔
    (∀ {U V : Set X}, IsCompact U → IsCompact V → IsCompact {g : G | (g • U ∩ V).Nonempty}) := by
  refine ⟨fun h ↦ ProperSMul.isCompact_setOfPred_inter_nonempty, fun h ↦ ⟨?_⟩⟩
  refine isProperMap_iff_isCompact_preimage.mpr ⟨by fun_prop, fun {K} hK ↦ ?_⟩
  -- First reduce to the case `K = U × V`.
  let U := Prod.fst '' K
  let V := Prod.snd '' K
  have hU : IsCompact U := hK.image continuous_fst
  have hV : IsCompact V := hK.image continuous_snd
  suffices IsCompact ((fun (gx : G × X) ↦ (gx.1 • gx.2, gx.2)) ⁻¹' (U ×ˢ V)) by
    apply this.of_isClosed_subset (hK.isClosed.preimage <| by fun_prop)
    exact Set.preimage_mono Set.subset_fst_image_prod_snd_image
  apply ((h hV hU).prod hV).of_isClosed_subset
  · exact (hU.prod hV).isClosed.preimage (by fun_prop)
  · exact fun ⟨g, x⟩ ⟨hgx, hgx'⟩ ↦ ⟨⟨g • x, smul_mem_smul_set hgx', hgx⟩, hgx'⟩

@[deprecated (since := "2026-07-09")]
alias MulAction.properSMul_iff_isCompact_setOf_inter_nonempty :=
  MulAction.properSMul_iff_isCompact_setOfPred_inter_nonempty

@[deprecated (since := "2026-07-09")]
alias AddAction.properVAdd_iff_isCompact_setOf_inter_nonempty :=
  AddAction.properVAdd_iff_isCompact_setOfPred_inter_nonempty

/-- If a discrete group acts on a T2 space `X` such that `X × X` is compactly
coherent, and if the action is continuous in the second variable, then the action is properly
discontinuous if and only if it is proper. This is in particular true if `X` is first-countable or
weakly locally compact. -/
@[to_additive /-- If a discrete additive group acts on a T2 space `X` such that `X × X` is compactly
generated, and if the action is continuous in the second variable, then the action is properly
discontinuous if and only if it is proper. This is in particular true if `X` is first-countable or
weakly locally compact. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30295c1898cad0bd020f91aa8fc56f5f7d812260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
