# iUnion_Iic_eq_Iio_of_lt_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72da5eec-02fe-ce2f-a341-cd08edaf255c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fc63a52-d2ce-08fe-f3cd-7411dabf5934",
  "kind": "theorem",
  "lexical_name": "iUnion_Iic_eq_Iio_of_lt_of_tendsto",
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
  "slug": "iunion-iic-eq-iio-of-lt-of-tendsto--36fcedd65f282bd3a5fc9283",
  "source": {
    "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 474,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36fcedd65f282bd3a5fc92835ea9029a7afc959903908fa254c23e3d1c5f9371",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fc63a52-d2ce-08fe-f3cd-7411dabf5934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_Iic_eq_Iio_of_lt_of_tendsto {ι : Type*} (x : R) {as : ι → R} (lt_x : ∀ i, as i < x)
    {F : Filter ι} [Filter.NeBot F] (as_lim : Filter.Tendsto as F (𝓝 x)) :
    ⋃ i : ι, Iic (as i) = Iio x :=
  iUnion_Ici_eq_Ioi_of_lt_of_tendsto (R := Rᵒᵈ) x lt_x as_lim
#align Union_Iic_eq_Iio_of_lt_of_tendsto iUnion_Iic_eq_Iio_of_lt_of_tendsto

end InfiAndSupr

section Indicator

open BigOperators

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
