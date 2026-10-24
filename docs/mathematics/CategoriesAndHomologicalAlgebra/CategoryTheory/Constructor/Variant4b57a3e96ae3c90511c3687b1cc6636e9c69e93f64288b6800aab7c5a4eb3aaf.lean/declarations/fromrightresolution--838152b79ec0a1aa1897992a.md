# fromRightResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02e7519d1aa121ebf53ce32d588712fdcfe4fa675064b09d52b115cff8c442ee",
  "kind": "def",
  "lexical_name": "fromRightResolution",
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
  "slug": "fromrightresolution--838152b79ec0a1aa1897992a",
  "source": {
    "blob": "0cbc74afc64209cad824a2eb037861a59537c956",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant4b57a3e96ae3c90511c3687b1cc6636e9c69e93f64288b6800aab7c5a4eb3aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:838152b79ec0a1aa1897992acaa8be9790dfd54fce28780654c425e72e088190",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant4b57a3e96ae3c90511c3687b1cc6636e9c69e93f64288b6800aab7c5a4eb3aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02e7519d1aa121ebf53ce32d588712fdcfe4fa675064b09d52b115cff8c442ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fromRightResolution :
    Φ.RightResolution X₂ ⥤ (TwoSquare.mk Φ.functor (Φ.functor ⋙ L) L (𝟭 _)
      (Functor.rightUnitor _).inv).CostructuredArrowDownwards y where
  obj R := CostructuredArrow.mk (Y := StructuredArrow.mk R.w)
    (StructuredArrow.homMk ((isoOfHom L W₂ R.w R.hw).inv ≫ y))
  map {R R'} φ := CostructuredArrow.homMk (StructuredArrow.homMk φ.f) (by
    ext
    dsimp
    rw [← assoc, ← cancel_epi (isoOfHom L W₂ R.w R.hw).hom,
      isoOfHom_hom, isoOfHom_hom_inv_id_assoc, assoc, ← L.map_comp_assoc,
      φ.comm, isoOfHom_hom_inv_id_assoc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant4b57a3e96ae3c90511c3687b1cc6636e9c69e93f64288b6800aab7c5a4eb3aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant4b57a3e96ae3c90511c3687b1cc6636e9c69e93f64288b6800aab7c5a4eb3aaf.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbc74afc64209cad824a2eb037861a59537c956` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
