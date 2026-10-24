# IsCompactOperator.image_closedBall_subset_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b4d0815-f022-a0c0-ebee-e5f33ab8fc53",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.image_closedBall_subset_compact",
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
  "slug": "iscompactoperator-image-closedball-subset-compact--763c2e4d110bc34617d130c4",
  "source": {
    "blob": "916f908a70db9327f1f6f7428f680c492bfad09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763c2e4d110bc34617d130c4853b99f7edb9d1670395f344a954f0965ac46a81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b4d0815-f022-a0c0-ebee-e5f33ab8fc53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.image_closedBall_subset_compact [ContinuousConstSMul 𝕜₂ M₂]
    {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) (r : ℝ) :
    ∃ K : Set M₂, IsCompact K ∧ f '' Metric.closedBall 0 r ⊆ K :=
  hf.image_subset_compact_of_isVonNBounded (NormedSpace.isVonNBounded_closedBall 𝕜₁ M₁ r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `916f908a70db9327f1f6f7428f680c492bfad09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
