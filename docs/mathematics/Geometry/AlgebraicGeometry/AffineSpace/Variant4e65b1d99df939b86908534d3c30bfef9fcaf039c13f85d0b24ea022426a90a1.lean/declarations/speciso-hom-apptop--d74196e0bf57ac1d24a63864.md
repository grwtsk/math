# SpecIso_hom_appTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75e2e9160ebd6820908289ec31ccbc450862c613",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4845bb7e-9967-51af-165c-c83dcd18fcca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff56e764-0220-869d-cec2-556bb8ef6865",
  "kind": "lemma",
  "lexical_name": "SpecIso_hom_appTop",
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
  "slug": "speciso-hom-apptop--d74196e0bf57ac1d24a63864",
  "source": {
    "blob": "75e2e9160ebd6820908289ec31ccbc450862c613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 246,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d74196e0bf57ac1d24a638642907081dafea8b45ce181767f406fdec11404a75",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff56e764-0220-869d-cec2-556bb8ef6865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpecIso_hom_appTop (R : CommRingCat.{max u v}) :
    (SpecIso n R).hom.appTop = (Scheme.ΓSpecIso _).hom ≫
      CommRingCat.ofHom (eval₂Hom ((Scheme.ΓSpecIso _).inv ≫
        (𝔸(n; Spec R) ↘ Spec R).appTop).hom (coord (Spec R))) := by
  simp only [SpecIso, Iso.trans_hom, Functor.mapIso_hom, Iso.op_hom,
    RingEquiv.toRingHom_eq_coe, Scheme.Spec_map, Quiver.Hom.unop_op, Scheme.comp_coeBase,
    TopologicalSpace.Opens.map_comp_obj, TopologicalSpace.Opens.map_top, Scheme.comp_app,
    isoOfIsAffine_hom_appTop, Scheme.ΓSpecIso_naturality_assoc]
  congr 1
  ext : 1
  apply ringHom_ext'
  · ext; simp
  · simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75e2e9160ebd6820908289ec31ccbc450862c613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
