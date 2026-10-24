# zariskiTopology_le_etaleTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "274265ad316c787863c03c30a8cc6d137c20ff19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0957427a-732f-b521-7402-21420c817fee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f80d2e1a-f707-cfb1-5d8b-25f3615c96d1",
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
  "slug": "zariskitopology-le-etaletopology--b7152b25329e39d6dbf0675f",
  "source": {
    "blob": "274265ad316c787863c03c30a8cc6d137c20ff19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7152b25329e39d6dbf0675f7afb3976158cce8015f2eea420d538bfbb4090ca",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f80d2e1a-f707-cfb1-5d8b-25f3615c96d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274265ad316c787863c03c30a8cc6d137c20ff19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
