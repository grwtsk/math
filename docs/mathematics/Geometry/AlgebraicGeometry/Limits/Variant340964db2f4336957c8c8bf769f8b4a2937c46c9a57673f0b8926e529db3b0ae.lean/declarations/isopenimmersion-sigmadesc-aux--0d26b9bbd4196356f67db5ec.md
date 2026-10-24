# isOpenImmersion_sigmaDesc_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:718b5c4c-789f-15dc-de80-cff586afc08b",
  "kind": "lemma",
  "lexical_name": "isOpenImmersion_sigmaDesc_aux",
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
  "slug": "isopenimmersion-sigmadesc-aux--0d26b9bbd4196356f67db5ec",
  "source": {
    "blob": "0dacb8a8190e7d397c53f5d9348910f99d156968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 350,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d26b9bbd4196356f67db5ec2a87aa974b3041e13314e0ba1e91e641e2e0a1b6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718b5c4c-789f-15dc-de80-cff586afc08b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isOpenImmersion_sigmaDesc_aux
    {X : Scheme.{u}} (α : ∀ i, f i ⟶ X) [∀ i, IsOpenImmersion (α i)]
    (hα : Pairwise (Disjoint on (Set.range <| α · |>.base))) :
    IsOpenImmersion (Sigma.desc α) := by
  rw [IsOpenImmersion.iff_stalk_iso]
  constructor
  · suffices Topology.IsOpenEmbedding ((Sigma.desc α).base ∘ sigmaMk f) by
      convert this.comp (sigmaMk f).symm.isOpenEmbedding; ext; simp
    refine .of_continuous_injective_isOpenMap ?_ ?_ ?_
    · fun_prop
    · rintro ⟨ix, x⟩ ⟨iy, y⟩ e
      have : (α ix).base x = (α iy).base y := by
        simpa [← Scheme.comp_base_apply] using e
      obtain rfl : ix = iy := by
        by_contra h
        exact Set.disjoint_iff_forall_ne.mp (hα h) ⟨x, rfl⟩ ⟨y, this.symm⟩ rfl
      rw [(α ix).isOpenEmbedding.injective this]
    · rw [isOpenMap_sigma]
      intro i
      simpa [← Scheme.comp_base_apply] using (α i).isOpenEmbedding.isOpenMap
  · intro x
    have ⟨y, hy⟩ := (sigmaOpenCover f).covers x
    rw [← hy]
    refine IsIso.of_isIso_fac_right (g := ((sigmaOpenCover f).map _).stalkMap y)
      (h := (X.presheaf.stalkCongr (.of_eq ?_)).hom ≫ (α _).stalkMap _) ?_
    · simp [← Scheme.comp_base_apply]
    · simp [← Scheme.stalkMap_comp, Scheme.stalkMap_congr_hom _ _ (Sigma.ι_desc _ _)]

open scoped Function in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dacb8a8190e7d397c53f5d9348910f99d156968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
