# forwardHalfKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "074705dd46f1910d71be9ce133f1b290f91fa9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c760550ce7cda1907f6ea25a2226e317b83fc7ace90b9191956715e1bb5405b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2c84fb5-e751-649f-b2ea-3611d48b7dbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2cdce42-ee98-259e-2604-a384b8dc8b3e",
  "kind": "theorem",
  "lexical_name": "forwardHalfKernel_integrable",
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
  "slug": "forwardhalfkernel-integrable--3227f957035d2f44630c5954",
  "source": {
    "blob": "074705dd46f1910d71be9ce133f1b290f91fa9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantc760550ce7cda1907f6ea25a2226e317b83fc7ace90b9191956715e1bb5405b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3227f957035d2f44630c5954f15c5da6cc3a9d4e6bbebea984a97e714e5e6a50",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantc760550ce7cda1907f6ea25a2226e317b83fc7ace90b9191956715e1bb5405b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2cdce42-ee98-259e-2604-a384b8dc8b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardHalfKernel_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (forwardHalfKernel A) (volume.prod volume) :=
  (forwardHalfKernel_continuous hA).integrable_of_hasCompactSupport
    (forwardHalfKernel_hasCompactSupport hA)

/-- Freeze the plus-shift convention using the proved even autocorrelation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantc760550ce7cda1907f6ea25a2226e317b83fc7ace90b9191956715e1bb5405b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantc760550ce7cda1907f6ea25a2226e317b83fc7ace90b9191956715e1bb5405b8.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074705dd46f1910d71be9ce133f1b290f91fa9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
