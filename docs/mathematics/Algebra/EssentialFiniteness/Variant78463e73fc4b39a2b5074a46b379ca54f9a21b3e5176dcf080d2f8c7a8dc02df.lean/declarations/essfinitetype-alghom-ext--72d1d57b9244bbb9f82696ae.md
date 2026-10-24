# EssFiniteType.algHom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cb5ac3e-e49d-9f7a-c250-440db059f496",
  "kind": "lemma",
  "lexical_name": "EssFiniteType.algHom_ext",
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
  "slug": "essfinitetype-alghom-ext--72d1d57b9244bbb9f82696ae",
  "source": {
    "blob": "b483b3fab0610ec8b4bd6d862a52b9d94dd94652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 225,
    "path": "GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72d1d57b9244bbb9f82696ae7ec2cdd6b2d5002a959f32e44215b86d12afe663",
  "verification": {
    "reference": "docs/verification/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cb5ac3e-e49d-9f7a-c250-440db059f496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EssFiniteType.algHom_ext [EssFiniteType R S]
    (f g : S →ₐ[R] T) (H : ∀ s ∈ finset R S, f s = g s) : f = g := by
  suffices f.toRingHom = g.toRingHom by ext; exact RingHom.congr_fun this _
  apply IsLocalization.ringHom_ext (EssFiniteType.submonoid R S)
  suffices f.comp (IsScalarTower.toAlgHom R _ S) = g.comp (IsScalarTower.toAlgHom R _ S) by
    ext; exact AlgHom.congr_fun this _
  apply AlgHom.ext_of_adjoin_eq_top (s := { x | x.1 ∈ finset R S })
  · rw [← top_le_iff]
    rintro ⟨x, hx⟩ _
    refine Algebra.adjoin_induction ?_ ?_ ?_ ?_ hx
    · intro x hx; exact Algebra.subset_adjoin hx
    · intro r; exact Subalgebra.algebraMap_mem _ _
    · intro x y _ _ hx hy; exact add_mem hx hy
    · intro x y _ _ hx hy; exact mul_mem hx hy
  · rintro ⟨x, hx⟩ hx'; exact H x hx'

end Algebra

namespace RingHom

variable {R S T : Type*} [CommRing R] [CommRing S] [CommRing T] {f : R →+* S}

/-- A ring hom is essentially of finite type if it is the composition of a localization map
and a ring hom of finite type. See `Algebra.EssFiniteType`. -/
@[algebraize Algebra.EssFiniteType]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b483b3fab0610ec8b4bd6d862a52b9d94dd94652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
