# isMIntegralCurveAt_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fa8c6ea-0f9b-a605-4eb7-0c0898faf02f",
  "kind": "lemma",
  "lexical_name": "isMIntegralCurveAt_iff'",
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
  "slug": "ismintegralcurveat-iff--bb0542ca891e8375ccd0df0c",
  "source": {
    "blob": "850387ad019a58be0c1ef0e2b974b4007bccf65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb0542ca891e8375ccd0df0c502ee60006319a55c2b25ccb6df849e835e1a69d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa8c6ea-0f9b-a605-4eb7-0c0898faf02f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMIntegralCurveAt_iff' :
    IsMIntegralCurveAt γ v t₀ ↔ ∃ ε > 0, IsMIntegralCurveOn γ v (Metric.ball t₀ ε) := by
  rw [isMIntegralCurveAt_iff]
  constructor
  · intro ⟨s, hs, h⟩
    rw [Metric.mem_nhds_iff] at hs
    obtain ⟨ε, hε, hε'⟩ := hs
    refine ⟨ε, hε, fun t ht ↦ (h t (hε' ht)).mono hε'⟩
  · intro ⟨ε, hε, h⟩
    exact ⟨Metric.ball t₀ ε, Metric.ball_mem_nhds _ hε, h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850387ad019a58be0c1ef0e2b974b4007bccf65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
