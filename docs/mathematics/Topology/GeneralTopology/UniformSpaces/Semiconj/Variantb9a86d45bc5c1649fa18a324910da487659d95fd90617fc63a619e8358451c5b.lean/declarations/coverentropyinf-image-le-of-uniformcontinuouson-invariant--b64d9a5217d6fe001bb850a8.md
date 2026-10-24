# coverEntropyInf_image_le_of_uniformContinuousOn_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55860bb3-0c4a-7246-81f8-cececf63ed5b",
  "kind": "lemma",
  "lexical_name": "coverEntropyInf_image_le_of_uniformContinuousOn_invariant",
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
  "slug": "coverentropyinf-image-le-of-uniformcontinuouson-invariant--b64d9a5217d6fe001bb850a8",
  "source": {
    "blob": "5e3e3f5e7311a15c60fe029a7e006df0f08c65d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64d9a5217d6fe001bb850a8da91d32823d651e873f9e56e20b160482ecc4570",
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

Occurrence: `result:55860bb3-0c4a-7246-81f8-cececf63ed5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropyInf_image_le_of_uniformContinuousOn_invariant [UniformSpace X] [UniformSpace Y]
    {S : X → X} {T : Y → Y} {φ : X → Y} (h : Semiconj φ S T) {F G : Set X}
    (h' : UniformContinuousOn φ G) (hF : F ⊆ G) (hG : MapsTo S G G) :
    coverEntropyInf T (φ '' F) ≤ coverEntropyInf S F := by
  rw [← coverEntropyInf_restrict_subset hF hG]
  have hφ : Semiconj (G.restrict φ) (hG.restrict S G G) T := by
    intro a
    rw [G.restrict_apply, G.restrict_apply, hG.val_restrict_apply, h.eq a]
  apply (coverEntropyInf_image_le_of_uniformContinuous hφ
    (uniformContinuousOn_iff_restrict.1 h') (val ⁻¹' F)).trans_eq'
  rw [← image_image_val_eq_restrict_image, image_preimage_coe G F, inter_eq_right.2 hF]

end Dynamics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e3e3f5e7311a15c60fe029a7e006df0f08c65d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
