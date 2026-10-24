# IsDynCoverOf.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9967ab9-2e3e-4aad-0908-8121c4998c75",
  "kind": "lemma",
  "lexical_name": "IsDynCoverOf.image",
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
  "slug": "isdyncoverof-image--6de6cbe5bdaf7e0f79bee164",
  "source": {
    "blob": "5e3e3f5e7311a15c60fe029a7e006df0f08c65d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de6cbe5bdaf7e0f79bee164f08c3dae842f62e522172c7a5487d858de55c0bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9967ab9-2e3e-4aad-0908-8121c4998c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDynCoverOf.image (h : Semiconj φ S T) {F : Set X} {V : Set (Y × Y)} {n : ℕ} {s : Set X}
    (h' : IsDynCoverOf S F ((map φ φ) ⁻¹' V) n s) :
    IsDynCoverOf T (φ '' F) V n (φ '' s) := by
  simp only [IsDynCoverOf, image_subset_iff, preimage_iUnion₂, biUnion_image]
  refine h'.trans (iUnion₂_mono fun i _ ↦ subset_of_eq ?_)
  rw [← h.preimage_dynEntourage V n, ball_preimage]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e3e3f5e7311a15c60fe029a7e006df0f08c65d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
