# coverEntropyInfEntourage_image_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a5cf9d3-41c1-5c92-c3dc-873b32862eea",
  "kind": "lemma",
  "lexical_name": "coverEntropyInfEntourage_image_le",
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
  "slug": "coverentropyinfentourage-image-le--2bfdd0b27187a8ae16fcd460",
  "source": {
    "blob": "79b88bf66e50b5bff3b6ebe89ef4ae307b11c6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5dbc67709e48ce5d3c207464ece7f4cd5bdb93a8835f777622b6a3323abb1358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bfdd0b27187a8ae16fcd46030ad0512479e7e3104eb14698cfac6f36a37e3c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5dbc67709e48ce5d3c207464ece7f4cd5bdb93a8835f777622b6a3323abb1358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a5cf9d3-41c1-5c92-c3dc-873b32862eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropyInfEntourage_image_le (h : Semiconj φ S T) (F : Set X) (V : SetRel Y Y) :
    coverEntropyInfEntourage T (φ '' F) V ≤ coverEntropyInfEntourage S F ((map φ φ) ⁻¹' V) :=
  expGrowthInf_monotone fun n ↦ ENat.toENNReal_mono (coverMincard_image_le h F V n)

/-- The entropy of `φ '' F` equals the entropy of `F` if `X` is endowed with the pullback by `φ`
  of the uniform structure of `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5dbc67709e48ce5d3c207464ece7f4cd5bdb93a8835f777622b6a3323abb1358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5dbc67709e48ce5d3c207464ece7f4cd5bdb93a8835f777622b6a3323abb1358.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b88bf66e50b5bff3b6ebe89ef4ae307b11c6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
