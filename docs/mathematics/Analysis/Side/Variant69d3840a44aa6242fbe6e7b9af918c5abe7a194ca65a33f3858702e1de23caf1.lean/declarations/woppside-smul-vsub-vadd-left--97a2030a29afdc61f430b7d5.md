# wOppSide_smul_vsub_vadd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6c5d959c2095dec2c61004b99d4c237a21e4c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d60f251d-cca0-0eef-68e4-332edfca8b52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9720d1a7-db7e-d45e-13a8-17f9a8b97de2",
  "kind": "theorem",
  "lexical_name": "wOppSide_smul_vsub_vadd_left",
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
  "slug": "woppside-smul-vsub-vadd-left--97a2030a29afdc61f430b7d5",
  "source": {
    "blob": "d6c5d959c2095dec2c61004b99d4c237a21e4c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 301,
    "path": "GRWTSK/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a2030a29afdc61f430b7d51c09e8a6a0f298595cee71175e68de0b25d2b999",
  "verification": {
    "reference": "docs/verification/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9720d1a7-db7e-d45e-13a8-17f9a8b97de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wOppSide_smul_vsub_vadd_left {s : AffineSubspace R P} {p₁ p₂ : P} (x : P) (hp₁ : p₁ ∈ s)
    (hp₂ : p₂ ∈ s) {t : R} (ht : t ≤ 0) : s.WOppSide (t • (x -ᵥ p₁) +ᵥ p₂) x := by
  refine ⟨p₂, hp₂, p₁, hp₁, ?_⟩
  rw [vadd_vsub, ← neg_neg t, neg_smul, ← smul_neg, neg_vsub_eq_vsub_rev]
  exact SameRay.sameRay_nonneg_smul_left _ (neg_nonneg.2 ht)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c5d959c2095dec2c61004b99d4c237a21e4c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
