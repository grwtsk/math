# injective_germ_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45922ab1-d447-fd79-fa80-a0395b413863",
  "kind": "lemma",
  "lexical_name": "injective_germ_basicOpen",
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
  "slug": "injective-germ-basicopen--1f0f7ee7154613635f792d24",
  "source": {
    "blob": "ef13b5ad96266265cbfea56ba0f7d68252c237ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f0f7ee7154613635f792d24709912b7455139a2bea533594c02bc2685fab7bc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45922ab1-d447-fd79-fa80-a0395b413863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_germ_basicOpen (U : X.Opens) (hU : IsAffineOpen U)
    (x : X) (hx : x ∈ U) (f : Γ(X, U))
    (hf : x ∈ X.basicOpen f)
    (H : Function.Injective (X.presheaf.germ U x hx)) :
    Function.Injective (X.presheaf.germ (X.basicOpen f) x hf) := by
  rw [RingHom.injective_iff_ker_eq_bot, RingHom.ker_eq_bot_iff_eq_zero] at H ⊢
  intros t ht
  have := hU.isLocalization_basicOpen f
  obtain ⟨t, s, rfl⟩ := IsLocalization.mk'_surjective (.powers f) t
  rw [← RingHom.mem_ker, IsLocalization.mk'_eq_mul_mk'_one, Ideal.mul_unit_mem_iff_mem,
    RingHom.mem_ker, RingHom.algebraMap_toAlgebra, TopCat.Presheaf.germ_res_apply] at ht
  swap; · exact @isUnit_of_invertible _ _ _ (@IsLocalization.invertible_mk'_one ..)
  rw [H _ ht, IsLocalization.mk'_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef13b5ad96266265cbfea56ba0f7d68252c237ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
