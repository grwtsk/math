# IsVanKampenColimit.of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58972e08-f7f9-016e-6858-555e590f5ec6",
  "kind": "theorem",
  "lexical_name": "IsVanKampenColimit.of_iso",
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
  "slug": "isvankampencolimit-of-iso--f2073483a1ba1498fb8446b2",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2073483a1ba1498fb8446b297d35ce759ef006d3aca5bcf64405a183ed39c3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58972e08-f7f9-016e-6858-555e590f5ec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVanKampenColimit.of_iso {F : J ⥤ C} {c c' : Cocone F} (H : IsVanKampenColimit c)
    (e : c ≅ c') : IsVanKampenColimit c' := by
  intro F' c'' α f h hα
  have : c'.ι ≫ (Functor.const J).map e.inv.hom = c.ι := by
    ext j
    exact e.inv.2 j
  rw [H c'' α (f ≫ e.inv.1) (by rw [Functor.map_comp, ← reassoc_of% h, this]) hα]
  apply forall_congr'
  intro j
  conv_lhs => rw [← Category.comp_id (α.app j)]
  have : IsIso e.inv.hom := Functor.map_isIso (Cocone.forget _) e.inv
  exact (IsPullback.of_vert_isIso ⟨by simp⟩).paste_vert_iff (NatTrans.congr_app h j).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
