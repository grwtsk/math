# goursat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72b0e2ce-9f69-2033-334d-6f7d1029d503",
  "kind": "lemma",
  "lexical_name": "goursat",
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
  "slug": "goursat--80fbc9becc6b6600c9f26862",
  "source": {
    "blob": "f188e36ea307b8b0c4f67815c853e8c7e6c40fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80fbc9becc6b6600c9f268621ea8ce87ae2857eac4b6ab25027ba5fff74b80cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72b0e2ce-9f69-2033-334d-6f7d1029d503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma goursat : ∃ (M' : Submodule R M) (N' : Submodule R N) (M'' : Submodule R M')
    (N'' : Submodule R N') (e : (M' ⧸ M'') ≃ₗ[R] N' ⧸ N''),
    L = (e.graph.comap <| M''.mkQ.prodMap N''.mkQ).map (M'.subtype.prodMap N'.subtype) := by
  let M' := L.map (LinearMap.fst ..)
  let N' := L.map (LinearMap.snd ..)
  let P : L →ₗ[R] M' := (LinearMap.fst ..).submoduleMap L
  let Q : L →ₗ[R] N' := (LinearMap.snd ..).submoduleMap L
  let L' : Submodule R (M' × N') := LinearMap.range (P.prod Q)
  have hL₁' : Surjective (Prod.fst ∘ L'.subtype) := by
    simp only [← coe_fst (R := R), ← coe_comp, ← range_eq_top, LinearMap.range_comp, range_subtype]
    simpa only [L', ← LinearMap.range_comp, fst_prod, range_eq_top] using
      (LinearMap.fst ..).submoduleMap_surjective L
  have hL₂' : Surjective (Prod.snd ∘ L'.subtype) := by
    simp only [← coe_snd (R := R), ← coe_comp, ← range_eq_top, LinearMap.range_comp, range_subtype]
    simpa only [L', ← LinearMap.range_comp, snd_prod, range_eq_top] using
      (LinearMap.snd ..).submoduleMap_surjective L
  obtain ⟨e, he⟩ := goursat_surjective hL₁' hL₂'
  use M', N', L'.goursatFst, L'.goursatSnd, e
  rw [← he]
  simp only [LinearMap.range_comp, Submodule.range_subtype, L', M', N', P, Q]
  rw [comap_map_eq_self]
  · ext ⟨m, n⟩
    constructor
    · simp only [mem_map, LinearMap.mem_range, LinearMap.prod_apply, Function.prod_apply,
      Subtype.exists, Prod.exists, LinearMap.prodMap_apply, subtype_apply, Prod.mk.injEq,
      Subtype.ext_iff, submoduleMap_coe_apply, fst_apply, snd_apply]
      grind
    · simp only [mem_map, LinearMap.mem_range, LinearMap.prod_apply, Function.prod_apply,
      Subtype.exists, Prod.exists, LinearMap.prodMap_apply, subtype_apply, Prod.mk.injEq,
      snd_apply, fst_apply, Subtype.ext_iff, submoduleMap_coe_apply]
      grind
  · convert! goursatFst_prod_goursatSnd_le (range <| P.prod Q)
    simp only [ker_prodMap, ker_mkQ, Submodule.ext_iff]
    grind

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f188e36ea307b8b0c4f67815c853e8c7e6c40fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
