# sameRay_of_mem_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d684c691f83f2e49640c07748104f0daa5526a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1cedd9350652e53bd2e6b66745cd65e2fe46cf7d7d0279e2d2fd022497374f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f74aeb29-993a-de76-fa66-013cb4b14976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4609f25-d32b-6af7-cb1b-60d05def7bc8",
  "kind": "theorem",
  "lexical_name": "sameRay_of_mem_segment",
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
  "slug": "sameray-of-mem-segment--4f51cc0ad699d9dafae32f96",
  "source": {
    "blob": "9d684c691f83f2e49640c07748104f0daa5526a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 309,
    "path": "GRWTSK/Algebra/LinearAlgebra/Segment/Variantf1cedd9350652e53bd2e6b66745cd65e2fe46cf7d7d0279e2d2fd022497374f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f51cc0ad699d9dafae32f964bac608ccdda3c486737b236192f817f42782641",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Segment/Variantf1cedd9350652e53bd2e6b66745cd65e2fe46cf7d7d0279e2d2fd022497374f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4609f25-d32b-6af7-cb1b-60d05def7bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sameRay_of_mem_segment [CommRing 𝕜] [PartialOrder 𝕜] [IsStrictOrderedRing 𝕜]
    [AddCommGroup E] [Module 𝕜 E] {x y z : E}
    (h : x ∈ [y -[𝕜] z]) : SameRay 𝕜 (x - y) (z - x) := by
  rw [segment_eq_image'] at h
  rcases h with ⟨θ, ⟨hθ₀, hθ₁⟩, rfl⟩
  simpa only [add_sub_cancel_left, ← sub_sub, sub_smul, one_smul] using
    (SameRay.sameRay_nonneg_smul_left (z - y) hθ₀).nonneg_smul_right (sub_nonneg.2 hθ₁)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Segment/Variantf1cedd9350652e53bd2e6b66745cd65e2fe46cf7d7d0279e2d2fd022497374f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Segment/Variantf1cedd9350652e53bd2e6b66745cd65e2fe46cf7d7d0279e2d2fd022497374f6.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d684c691f83f2e49640c07748104f0daa5526a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
