# coverEntropy_restrict_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72efc3da-eeb2-7058-a3f6-5c2446fc00f3",
  "kind": "lemma",
  "lexical_name": "coverEntropy_restrict_subset",
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
  "slug": "coverentropy-restrict-subset--4703a6e2e29e9ed450510631",
  "source": {
    "blob": "79b88bf66e50b5bff3b6ebe89ef4ae307b11c6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5dbc67709e48ce5d3c207464ece7f4cd5bdb93a8835f777622b6a3323abb1358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4703a6e2e29e9ed450510631f3fb9863290097fd03a897a7ff613b4e3c249bd4",
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

Occurrence: `result:72efc3da-eeb2-7058-a3f6-5c2446fc00f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropy_restrict_subset [UniformSpace X] {T : X → X} {F G : Set X} (hF : F ⊆ G)
    (hG : MapsTo T G G) :
    coverEntropy (hG.restrict T G G) (val ⁻¹' F) = coverEntropy T F := by
  rw [← coverEntropy_image_of_comap _ hG.val_restrict_apply (val ⁻¹' F), image_preimage_coe G F,
    inter_eq_right.2 hF]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5dbc67709e48ce5d3c207464ece7f4cd5bdb93a8835f777622b6a3323abb1358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5dbc67709e48ce5d3c207464ece7f4cd5bdb93a8835f777622b6a3323abb1358.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b88bf66e50b5bff3b6ebe89ef4ae307b11c6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
