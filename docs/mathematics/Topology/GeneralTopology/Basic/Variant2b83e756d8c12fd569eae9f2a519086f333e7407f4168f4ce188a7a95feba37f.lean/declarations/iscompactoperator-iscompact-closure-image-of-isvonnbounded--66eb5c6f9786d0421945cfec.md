# IsCompactOperator.isCompact_closure_image_of_isVonNBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c53119ad7127825fffda5d0df429d0284e8fd0ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf38f48f-35ee-8fd3-ed8d-231cd38d85c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0923d8b3-aaf3-b8da-cb33-4437efb52d63",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.isCompact_closure_image_of_isVonNBounded",
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
  "slug": "iscompactoperator-iscompact-closure-image-of-isvonnbounded--66eb5c6f9786d0421945cfec",
  "source": {
    "blob": "c53119ad7127825fffda5d0df429d0284e8fd0ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66eb5c6f9786d0421945cfec7fca11912545c105379cdd2bac8438aea60d6919",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0923d8b3-aaf3-b8da-cb33-4437efb52d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.isCompact_closure_image_of_isVonNBounded [T2Space M₂] {f : M₁ →ₛₗ[σ₁₂] M₂}
    (hf : IsCompactOperator f) {S : Set M₁} (hS : IsVonNBounded 𝕜₁ S) :
    IsCompact (closure <| f '' S) :=
  let ⟨_, hK, hKf⟩ := hf.image_subset_compact_of_isVonNBounded hS
  hK.closure_of_subset hKf

end Bounded

section NormedSpace

variable {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁] [SeminormedRing 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂}
  {M₁ M₂ : Type*} [SeminormedAddCommGroup M₁] [TopologicalSpace M₂] [AddCommMonoid M₂]
  [NormedSpace 𝕜₁ M₁] [Module 𝕜₂ M₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c53119ad7127825fffda5d0df429d0284e8fd0ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
