# IsCompactOperator.image_subset_compact_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94eeb38c-8d8e-cc52-7614-c254eb2801ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14e11ab2-9544-47d1-bff1-e02d04798af9",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.image_subset_compact_of_bounded",
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
  "slug": "iscompactoperator-image-subset-compact-of-bounded--1c06b963de589636bc5de018",
  "source": {
    "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c06b963de589636bc5de018d18f771dd15392ea91f1c00d329265500840464e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e11ab2-9544-47d1-bff1-e02d04798af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.image_subset_compact_of_bounded [ContinuousConstSMul 𝕜₂ M₂]
    {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) {S : Set M₁} (hS : Metric.Bounded S) :
    ∃ K : Set M₂, IsCompact K ∧ f '' S ⊆ K :=
  hf.image_subset_compact_of_isVonNBounded
    (by rwa [NormedSpace.isVonNBounded_iff, ← Metric.bounded_iff_isBounded])
#align is_compact_operator.image_subset_compact_of_bounded IsCompactOperator.image_subset_compact_of_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6f20323928ec80e6345c793fe419bff2da9f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
