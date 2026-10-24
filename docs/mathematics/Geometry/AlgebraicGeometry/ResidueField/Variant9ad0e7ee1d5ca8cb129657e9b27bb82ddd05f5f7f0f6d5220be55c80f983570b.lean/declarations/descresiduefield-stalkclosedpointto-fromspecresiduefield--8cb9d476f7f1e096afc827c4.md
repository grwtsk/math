# descResidueField_stalkClosedPointTo_fromSpecResidueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4384dfd7ac628f7087956a6a2d18b0a9a4433cb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0ed086f-765d-b1c8-06e5-39b73e8c7e12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2656174-72e8-b539-d91f-1033aef08c5d",
  "kind": "lemma",
  "lexical_name": "descResidueField_stalkClosedPointTo_fromSpecResidueField",
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
  "slug": "descresiduefield-stalkclosedpointto-fromspecresiduefield--8cb9d476f7f1e096afc827c4",
  "source": {
    "blob": "4384dfd7ac628f7087956a6a2d18b0a9a4433cb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 286,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cb9d476f7f1e096afc827c458f7c754f662ed0411771f99f894f2f2ecc6f9b3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2656174-72e8-b539-d91f-1033aef08c5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma descResidueField_stalkClosedPointTo_fromSpecResidueField
    (K : Type u) [Field K] (X : Scheme.{u}) (f : Spec ↧K ⟶ X) :
    Spec.map (descResidueField (Scheme.stalkClosedPointTo f)) ≫
      X.fromSpecResidueField (f (closedPoint K)) = f := by
  rw [X.descResidueField_fromSpecResidueField, Scheme.Spec_stalkClosedPointTo_fromSpecStalk]

end fromResidueField

section Spec

variable (R : CommRingCat) (x : Spec R)

set_option backward.isDefEq.respectTransparency.types false in
/-- The residue fields of `Spec R` are isomorphic to `Ideal.ResidueField`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4384dfd7ac628f7087956a6a2d18b0a9a4433cb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
