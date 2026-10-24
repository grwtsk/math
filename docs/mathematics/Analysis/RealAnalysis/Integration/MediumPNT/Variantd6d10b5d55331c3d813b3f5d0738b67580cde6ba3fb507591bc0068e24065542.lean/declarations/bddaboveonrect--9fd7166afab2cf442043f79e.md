# BddAboveOnRect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c5d010b-8d21-26ed-2e51-fe93697cd628",
  "kind": "lemma",
  "lexical_name": "BddAboveOnRect",
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
  "slug": "bddaboveonrect--9fd7166afab2cf442043f79e",
  "source": {
    "blob": "bb3df6bb92a2045719d68973cd0e7dda81e5a15b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1141,
    "line": 1123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fd7166afab2cf442043f79e8eb12069271e59ed8580d65933c45f289a40f521",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c5d010b-8d21-26ed-2e51-fe93697cd628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1123–1141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BddAboveOnRect {g : ℂ → ℂ} {z w : ℂ} (holoOn : HolomorphicOn g (z.Rectangle w)) :
    BddAbove (norm ∘ g '' (z.Rectangle w)) := by
  have compact_rect : IsCompact (z.Rectangle w) := by
    apply IsCompact.reProdIm <;> apply isCompact_uIcc
  refine IsCompact.bddAbove_image compact_rect ?_
  apply holoOn.continuousOn.norm

@[blueprint
  (title := "SmoothedChebyshevPull1")
  (statement := /--
  We have that
  $$\psi_{\epsilon}(X) =
  \mathcal{M}(\widetilde{1_{\epsilon}})(1)
  X^{1} +
  I_1 - I_2 +I_{37} + I_8 + I_9
  .
  $$
  -/)
  (proof := /-- Pull rectangle contours and evaluate the pole at $s=1$. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean#L1123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3df6bb92a2045719d68973cd0e7dda81e5a15b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
