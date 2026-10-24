# KaehlerDifferential.kerTotal_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e09448f-1fd6-e366-8d0b-82a534bd8c8d",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.kerTotal_map",
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
  "slug": "kaehlerdifferential-kertotal-map--2aad99fd8a5f4a5768b83393",
  "source": {
    "blob": "b184a5aebc67289390eac066e3c99fe99281dbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 618,
    "path": "GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aad99fd8a5f4a5768b83393e813b9ea367476c2bed3326c9056a83ff65b6339",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e09448f-1fd6-e366-8d0b-82a534bd8c8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.kerTotal_map [Algebra R B] [IsScalarTower R A B] [IsScalarTower R S B]
    (h : Function.Surjective (algebraMap A B)) :
    (KaehlerDifferential.kerTotal R A).map finsupp_map ⊔
        Submodule.span A (Set.range fun x : S => .single (algebraMap S B x) (1 : B)) =
      (KaehlerDifferential.kerTotal S B).restrictScalars _ := by
  rw [KaehlerDifferential.kerTotal, Submodule.map_span, KaehlerDifferential.kerTotal,
    Submodule.restrictScalars_span _ _ h]
  simp_rw [Set.image_union, Submodule.span_union, ← Set.image_univ, Set.image_image, Set.image_univ,
    map_sub, map_add]
  simp only [LinearMap.comp_apply, Finsupp.lmapDomain_apply, Finsupp.mapDomain_single,
    Finsupp.mapRange.linearMap_apply, Finsupp.mapRange_single, Algebra.linearMap_apply,
    map_one, map_add, map_mul]
  simp_rw [sup_assoc, ← (h.prodMap h).range_comp]
  congr!
  rw [sup_eq_right]
  apply Submodule.span_mono
  simp_rw [← IsScalarTower.algebraMap_apply R A B, IsScalarTower.algebraMap_apply R S B]
  exact Set.range_comp_subset_range (algebraMap R S)
    fun x => Finsupp.single (algebraMap S B x) (1 : B)

/--
This is a special case of `kerTotal_map` where `R = S`.
The kernel of the presentation `⊕ₓ B dx ↠ Ω_{B/R}` is spanned by the image of the
kernel of `⊕ₓ A dx ↠ Ω_{A/R}` and all `da` with `a : A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b184a5aebc67289390eac066e3c99fe99281dbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
