# opNorm_linearIsometryEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91ea19160ef036dcc670c8e0c9a67c85bdb26104",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b52081c0-e4ba-1de4-93c4-a0f2f5c18d89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52455e0b-20b0-f2e1-9824-3a859fb827bb",
  "kind": "lemma",
  "lexical_name": "opNorm_linearIsometryEquiv_comp",
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
  "slug": "opnorm-linearisometryequiv-comp--80dcb62bfce46fb6803170c0",
  "source": {
    "blob": "91ea19160ef036dcc670c8e0c9a67c85bdb26104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 223,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80dcb62bfce46fb6803170c0e3d8202c89c250354d46b1814eba24d4d0cb1c00",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52455e0b-20b0-f2e1-9824-3a859fb827bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opNorm_linearIsometryEquiv_comp [RingHomIsometric σ₁₂] (e : F ≃ₛₗᵢ[σ₂₃] G)
    (f : E →SL[σ₁₂] F) : ‖(e : F →SL[σ₂₃] G).comp f‖ = ‖f‖ := by simp [← coe_nnnorm]

/-- Precomposition with a linear isometry preserves the operator norm. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ea19160ef036dcc670c8e0c9a67c85bdb26104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
