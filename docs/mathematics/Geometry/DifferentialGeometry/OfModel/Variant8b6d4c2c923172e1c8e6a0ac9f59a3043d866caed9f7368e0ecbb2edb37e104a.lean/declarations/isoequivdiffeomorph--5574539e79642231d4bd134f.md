# isoEquivDiffeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa1d81fe7f2162e59d821dcd8bbcb527b8ae2d565ebddd922a12ecb9c47fadf4",
  "kind": "def",
  "lexical_name": "isoEquivDiffeomorph",
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
  "slug": "isoequivdiffeomorph--5574539e79642231d4bd134f",
  "source": {
    "blob": "258b19a9ad0d804cba577d3766ccf7b3f9ea220f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5574539e79642231d4bd134f327e0d3659b7872fc46d4b6bb0c0f71a84203838",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa1d81fe7f2162e59d821dcd8bbcb527b8ae2d565ebddd922a12ecb9c47fadf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoEquivDiffeomorph : (M ≅ N) ≃ (M ≃ₘ^n⟮I, I⟯ N) where
  toFun := diffeomorphOfIso
  invFun := isoOfDiffeomorph
  left_inv _ := rfl
  right_inv _ := rfl

end MfldCat

end ModelWithCorners
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `258b19a9ad0d804cba577d3766ccf7b3f9ea220f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
