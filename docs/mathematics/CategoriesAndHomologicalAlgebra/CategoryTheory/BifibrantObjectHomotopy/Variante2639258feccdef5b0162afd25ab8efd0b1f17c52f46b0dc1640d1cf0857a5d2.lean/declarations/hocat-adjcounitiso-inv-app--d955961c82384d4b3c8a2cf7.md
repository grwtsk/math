# HoCat.adjCounitIso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02a1fb51-a582-85d3-8729-9e1926c4f0e0",
  "kind": "lemma",
  "lexical_name": "HoCat.adjCounitIso_inv_app",
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
  "slug": "hocat-adjcounitiso-inv-app--d955961c82384d4b3c8a2cf7",
  "source": {
    "blob": "eca4faa69882f8ee95cdfdd4273c2392b95afee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 432,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d955961c82384d4b3c8a2cf79c1f8384d829e79edde0354487eafa203ed06d7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02a1fb51-a582-85d3-8729-9e1926c4f0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HoCat.adjCounitIso_inv_app (X : BifibrantObject C) :
    HoCat.adjCounitIso.inv.app (BifibrantObject.toHoCat.obj X) =
      BifibrantObject.toHoCat.map (BifibrantObject.homMk
        ((iBifibrantResolutionObj (.mk X.obj))).hom) := rfl

/-- The adjunction between the category `CofibrantObject.HoCat C` and `BifibrantObject.HoCat C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca4faa69882f8ee95cdfdd4273c2392b95afee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
