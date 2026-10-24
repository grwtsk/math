# _root_.ContinuousLinearMap.isUnit_iff_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53e450e01f99cb80b27652433fc3aba66945a8d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0558b6f3-cb2f-bf91-c104-7096b142783e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c41fed0-a770-ca94-a41b-cbee3d10e2a2",
  "kind": "lemma",
  "lexical_name": "_root_.ContinuousLinearMap.isUnit_iff_bijective",
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
  "slug": "root-continuouslinearmap-isunit-iff-bijective--ef7392af0112051dd7275e37",
  "source": {
    "blob": "53e450e01f99cb80b27652433fc3aba66945a8d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 451,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7392af0112051dd7275e37496a99032c672ed149f6e0ff4370b66d022583c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c41fed0-a770-ca94-a41b-cbee3d10e2a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.ContinuousLinearMap.isUnit_iff_bijective {f : E →L[𝕜] E} :
    IsUnit f ↔ Bijective f := by
  constructor
  · rintro ⟨f, rfl⟩
    exact ofUnit f |>.bijective
  · refine fun h ↦ ⟨toUnit <| .ofBijective f ?_ ?_, rfl⟩ <;>
    simp only [LinearMap.range_eq_top, LinearMapClass.ker_eq_bot, h.1, h.2]

end ContinuousLinearEquiv

namespace ContinuousLinearMap

variable [CompleteSpace E]

/-- Intermediate definition used to show
`ContinuousLinearMap.closed_complemented_range_of_isCompl_of_ker_eq_bot`.

This is `f.coprod G.subtypeL` as a `ContinuousLinearEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e450e01f99cb80b27652433fc3aba66945a8d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
