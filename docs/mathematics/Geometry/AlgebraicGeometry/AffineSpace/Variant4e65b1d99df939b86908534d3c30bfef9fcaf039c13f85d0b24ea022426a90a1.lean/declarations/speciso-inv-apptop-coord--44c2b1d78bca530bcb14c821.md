# SpecIso_inv_appTop_coord

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
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c85759a7-f2e7-271c-bfcf-83875da5cb6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdd628ae-d59b-391b-0728-6f101126e989",
  "kind": "lemma",
  "lexical_name": "SpecIso_inv_appTop_coord",
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
  "slug": "speciso-inv-apptop-coord--44c2b1d78bca530bcb14c821",
  "source": {
    "blob": "75e2e9160ebd6820908289ec31ccbc450862c613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 261,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44c2b1d78bca530bcb14c821bbb93735019cafdb4d7ada45cb1145bbbc7578de",
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

Occurrence: `result:bdd628ae-d59b-391b-0728-6f101126e989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpecIso_inv_appTop_coord (R : CommRingCat.{max u v}) (i) :
    (SpecIso n R).inv.appTop (coord _ i) = (Scheme.ΓSpecIso (.of _)).inv (.X i) := by
  simp only [SpecIso, Iso.trans_inv, Functor.mapIso_inv, Iso.op_inv,
    mapEquiv_symm, RingEquiv.toRingHom_eq_coe, Scheme.Spec_map, Quiver.Hom.unop_op,
    Scheme.comp_coeBase, TopologicalSpace.Opens.map_comp_obj, TopologicalSpace.Opens.map_top,
    Scheme.comp_app, CommRingCat.comp_apply]
  rw [isoOfIsAffine_inv_appTop_coord, ← CommRingCat.comp_apply, ← Scheme.ΓSpecIso_inv_naturality,
      CommRingCat.comp_apply]
  congr 1
  exact map_X _ _

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant4e65b1d99df939b86908534d3c30bfef9fcaf039c13f85d0b24ea022426a90a1.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75e2e9160ebd6820908289ec31ccbc450862c613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
