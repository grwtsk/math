# ι_isoColimit_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b76a958-89c9-388a-0002-10f9bcbbfd95",
  "kind": "lemma",
  "lexical_name": "ι_isoColimit_hom",
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
  "slug": "isocolimit-hom--8a35d560a93606d017c2d560",
  "source": {
    "blob": "4c008922478951fc38fc92e8a36209f7b0c6640e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a35d560a93606d017c2d5603583d7dec22391740ec92cbfb000fcee7f510f52",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b76a958-89c9-388a-0002-10f9bcbbfd95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_isoColimit_hom (g : CostructuredArrow L Y) :
    E.hom.app g.left ≫ E.right.map g.hom ≫ h.isoColimit.hom =
      colimit.ι (CostructuredArrow.proj L Y ⋙ F) g := by
  simpa using h.comp_coconePointUniqueUpToIso_hom (colimit.isColimit _) g

end IsPointwiseLeftKanExtensionAt

/-- A left extension `E : LeftExtension L F` is a pointwise left Kan extension when
it is a pointwise left Kan extension at any object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c008922478951fc38fc92e8a36209f7b0c6640e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
