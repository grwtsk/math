# ofHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5577d18511bd72691f4afc337dc4bf7393a24f4abcf9d50a9fb01b10d1251679",
  "kind": "abbrev",
  "lexical_name": "ofHom",
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
  "slug": "ofhom--d64ee8e4e7c93e4cc20f8ef6",
  "source": {
    "blob": "258b19a9ad0d804cba577d3766ccf7b3f9ea220f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 99,
    "path": "GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d64ee8e4e7c93e4cc20f8ef639e1983cd6618f4db1b13f043caaf083c355aa43",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5577d18511bd72691f4afc337dc4bf7393a24f4abcf9d50a9fb01b10d1251679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofHom (f : ContMDiffMap I I X Y n) : of (I := I) (n := n) X ⟶ of (I := I) (n := n) Y :=
  ConcreteCategory.ofHom (C := MfldCat I n) f

/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `258b19a9ad0d804cba577d3766ccf7b3f9ea220f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
