# isClosed_ball_of_isSymmetricRel_of_isTransitiveRel_of_mem_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a4dbf94-a853-0916-490a-d393ddaed38d",
  "kind": "lemma",
  "lexical_name": "isClosed_ball_of_isSymmetricRel_of_isTransitiveRel_of_mem_uniformity",
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
  "slug": "isclosed-ball-of-issymmetricrel-of-istransitiverel-of-mem-uniformity--de6e186595fcb107ee5ffb10",
  "source": {
    "blob": "18085128a6e959dca990870bd6a3ca410c0a49b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de6e186595fcb107ee5ffb103c326c61f5ee178a9e19fba2fd484f20e9d254ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4dbf94-a853-0916-490a-d393ddaed38d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_ball_of_isSymmetricRel_of_isTransitiveRel_of_mem_uniformity
    (x : X) {V : Set (X × X)} (h_symm : IsSymmetricRel V)
    (h_trans : IsTransitiveRel V) (h' : V ∈ 𝓤 X) :
    IsClosed (ball x V) := by
  rw [← isOpen_compl_iff, isOpen_iff_ball_subset]
  exact fun y hy ↦ ⟨V, h', fun z hyz hxz ↦ hy <| h_trans hxz <| h_symm.mk_mem_comm.mp hyz⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18085128a6e959dca990870bd6a3ca410c0a49b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
