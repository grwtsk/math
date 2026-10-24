# zariskiTopology_le_etaleTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3db6cfb-1cfe-9f2c-cd8c-d24cc0330ded",
  "kind": "lemma",
  "lexical_name": "zariskiTopology_le_etaleTopology",
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
  "slug": "zariskitopology-le-etaletopology--80a30378a36155504c5d68f7",
  "source": {
    "blob": "20113b23ee739db88e88fcdbff841fee67671a1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80a30378a36155504c5d68f7949e70f25f9933929b03289ee8986c1d2e0f074a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3db6cfb-1cfe-9f2c-cd8c-d24cc0330ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zariskiTopology_le_etaleTopology : zariskiTopology ≤ etaleTopology := by
  apply grothendieckTopology_monotone
  intro X Y f hf
  infer_instance

/-- The small étale site of a scheme is the Grothendieck topology on the
category of schemes étale over `X` induced from the étale topology on `Scheme.{u}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20113b23ee739db88e88fcdbff841fee67671a1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
