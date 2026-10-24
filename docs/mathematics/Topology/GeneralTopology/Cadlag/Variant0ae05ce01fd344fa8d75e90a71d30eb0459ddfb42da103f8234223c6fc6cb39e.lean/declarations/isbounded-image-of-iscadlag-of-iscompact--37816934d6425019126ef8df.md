# isBounded_image_of_isCadlag_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd6e5eba-b4a7-fcf6-442b-a618d1da8137",
  "kind": "lemma",
  "lexical_name": "isBounded_image_of_isCadlag_of_isCompact",
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
  "slug": "isbounded-image-of-iscadlag-of-iscompact--37816934d6425019126ef8df",
  "source": {
    "blob": "a287fb2b9edbb2e4aa65fa767c9b5f44212e0f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37816934d6425019126ef8df11857ad313f93ad80b1d9836a82e3cdd4db79e3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd6e5eba-b4a7-fcf6-442b-a618d1da8137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBounded_image_of_isCadlag_of_isCompact (hf : IsCadlag f) {s : Set X} (hs : IsCompact s) :
    IsBounded (f '' s) :=
  isBounded_image_of_isLocallyBounded_of_isCompact hs hf.isLocallyBounded

end PseudoMetricSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a287fb2b9edbb2e4aa65fa767c9b5f44212e0f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
