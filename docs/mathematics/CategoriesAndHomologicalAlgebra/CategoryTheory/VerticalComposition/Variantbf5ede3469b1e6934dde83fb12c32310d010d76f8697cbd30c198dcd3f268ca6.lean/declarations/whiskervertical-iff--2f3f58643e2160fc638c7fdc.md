# whiskerVertical_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f23519-d87e-50b7-729a-a7af8ccf1230",
  "kind": "lemma",
  "lexical_name": "whiskerVertical_iff",
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
  "slug": "whiskervertical-iff--2f3f58643e2160fc638c7fdc",
  "source": {
    "blob": "54675ad8b7a54670e4c6509148c6dda621ee4b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f3f58643e2160fc638c7fdc917ddfcd5fbe3c245fa6a0d163825103f0ae73a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f23519-d87e-50b7-729a-a7af8ccf1230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerVertical_iff (α : L ≅ L') (β : R ≅ R') :
    (w.whiskerVertical α.hom β.inv).GuitartExact ↔ w.GuitartExact := by
  constructor
  · intro h
    have : w = (w.whiskerVertical α.hom β.inv).whiskerVertical α.inv β.hom := by
      ext X₁
      simp only [Functor.comp_obj, whiskerVertical_app, assoc, Iso.hom_inv_id_app_assoc,
        ← B.map_comp, Iso.hom_inv_id_app, B.map_id, comp_id]
    rw [this]
    exact whiskerVertical (w.whiskerVertical α.hom β.inv) α.symm β.symm
  · intro h
    exact whiskerVertical w α β

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54675ad8b7a54670e4c6509148c6dda621ee4b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
