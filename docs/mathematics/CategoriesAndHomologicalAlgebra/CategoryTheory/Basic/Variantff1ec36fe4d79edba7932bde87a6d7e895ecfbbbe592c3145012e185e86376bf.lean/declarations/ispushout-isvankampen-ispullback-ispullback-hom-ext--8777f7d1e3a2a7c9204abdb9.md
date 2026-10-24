# IsPushout.isVanKampen_isPullback_isPullback_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ff15a7-ae87-0626-dedc-4ed451787562",
  "kind": "lemma",
  "lexical_name": "IsPushout.isVanKampen_isPullback_isPullback_hom_ext",
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
  "slug": "ispushout-isvankampen-ispullback-ispullback-hom-ext--8777f7d1e3a2a7c9204abdb9",
  "source": {
    "blob": "d05c6c30b1f0971a74a2a01da21295d6d838be43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8777f7d1e3a2a7c9204abdb90a6f82106f863ae3e71cda66751c13bed28dbe51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ff15a7-ae87-0626-dedc-4ed451787562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPushout.isVanKampen_isPullback_isPullback_hom_ext
    {H : IsPushout f g h i} (H' : H.IsVanKampen)
    {X' Y' Z' : C} {h' : X' ⟶ Z'} {i' : Y' ⟶ Z'}
    {αX : X' ⟶ X} [HasPullback αX f] {αY : Y' ⟶ Y} {αZ : Z' ⟶ Z} {W : C} {f₁ f₂ : Z' ⟶ W}
    (hh : IsPullback h' αX αZ h) (hi : IsPullback i' αY αZ i)
    (h'_w : h' ≫ f₁ = h' ≫ f₂) (i'_w : i' ≫ f₁ = i' ≫ f₂) : f₁ = f₂ := by
  obtain ⟨W', f', g', αW, _, _, H''⟩ := H'.exists_cube_filling hh hi
  exact H''.hom_ext h'_w i'_w

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c6c30b1f0971a74a2a01da21295d6d838be43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
