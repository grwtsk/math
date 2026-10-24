# isSeparated_iff_isClosedImmersion_prod_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "726f805ed99bc70e21402f45676c9ef6e8a87381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0563eeaf-01d0-d8a8-509f-cf16f6d8e58b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e7a4416-242d-f4eb-fa61-89e8e1d18475",
  "kind": "lemma",
  "lexical_name": "isSeparated_iff_isClosedImmersion_prod_lift",
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
  "slug": "isseparated-iff-isclosedimmersion-prod-lift--e7bbbc1a6697c7008ef06e8f",
  "source": {
    "blob": "726f805ed99bc70e21402f45676c9ef6e8a87381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 338,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7bbbc1a6697c7008ef06e8fe976badba2e99f20b1acd552b95daac180c32c1f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e7a4416-242d-f4eb-fa61-89e8e1d18475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSeparated_iff_isClosedImmersion_prod_lift {X : Scheme.{u}} :
    X.IsSeparated ↔ IsClosedImmersion (prod.lift (𝟙 X) (𝟙 X)) := by
  rw [isSeparated_iff, AlgebraicGeometry.isSeparated_iff, iff_iff_eq,
    ← MorphismProperty.cancel_right_of_respectsIso @IsClosedImmersion _ (prodIsoPullback X X).hom]
  congr
  ext : 1 <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726f805ed99bc70e21402f45676c9ef6e8a87381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
