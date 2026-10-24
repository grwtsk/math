# isGermInjectiveAt_iff_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75a02a69-4b16-13a5-4892-424b5c3e5a0e",
  "kind": "lemma",
  "lexical_name": "isGermInjectiveAt_iff_of_isOpenImmersion",
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
  "slug": "isgerminjectiveat-iff-of-isopenimmersion--96ad0cee8392913b3a96cd43",
  "source": {
    "blob": "ef13b5ad96266265cbfea56ba0f7d68252c237ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 105,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96ad0cee8392913b3a96cd43f6db7fa12739e82535b0d169b24cc45558ffe8e6",
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

Occurrence: `result:75a02a69-4b16-13a5-4892-424b5c3e5a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isGermInjectiveAt_iff_of_isOpenImmersion {x : X} [IsOpenImmersion f] :
    Y.IsGermInjectiveAt (f.base x) ↔ X.IsGermInjectiveAt x := by
  refine ⟨fun H ↦ ?_, fun _ ↦ inferInstance⟩
  obtain ⟨U, hxU, hU, hU', H⟩ :=
    Y.exists_le_and_germ_injective (f.base x) (V := f.opensRange) ⟨x, rfl⟩
  obtain ⟨V, hV⟩ := (IsOpenImmersion.affineOpensEquiv f).surjective ⟨⟨U, hU⟩, hU'⟩
  obtain rfl : f ''ᵁ V = U := Subtype.eq_iff.mp (Subtype.eq_iff.mp hV)
  obtain ⟨y, hy, e : f.base y = f.base x⟩ := hxU
  obtain rfl := f.isOpenEmbedding.injective e
  refine ⟨V, hy, V.2, ?_⟩
  replace H := ((MorphismProperty.injective CommRingCat).cancel_right_of_respectsIso _
    (f.stalkMap y)).mpr H
  replace H := ((MorphismProperty.injective CommRingCat).cancel_left_of_respectsIso
    (f.appIso V).inv _).mpr H
  simpa using H

/--
The class of schemes such that for each `x : X`,
`Γ(X, U) ⟶ X_x` is injective for some affine `U` containing `x`.

This is typically satisfied when `X` is integral or locally noetherian.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef13b5ad96266265cbfea56ba0f7d68252c237ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
