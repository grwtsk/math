# isClosed_image_coe_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecd0cd3e74a7869d8a5171d89f7cc81a4fcce7a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1833bf3e-eed0-7846-987d-e0a365008862",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17cf09e7-de9e-07e8-6984-de478dd70bee",
  "kind": "theorem",
  "lexical_name": "isClosed_image_coe_closedBall",
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
  "slug": "isclosed-image-coe-closedball--3ec81e638700186d2afbea79",
  "source": {
    "blob": "ecd0cd3e74a7869d8a5171d89f7cc81a4fcce7a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec81e638700186d2afbea79899610244d4798ddbf4f83d6ab4d3a88b0772066",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17cf09e7-de9e-07e8-6984-de478dd70bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_image_coe_closedBall (f₀ : E →SL[σ₁₂] F) (r : ℝ) :
    IsClosed (((↑) : (E →SL[σ₁₂] F) → E → F) '' closedBall f₀ r) :=
  isClosed_image_coe_of_bounded_of_weak_closed isBounded_closedBall (is_weak_closed_closedBall f₀ r)

/-- **Banach-Alaoglu** theorem. The set of functions `f : E → F` that represent continuous linear
maps `f : E →SL[σ₁₂] F` at distance `≤ r` from `f₀ : E →SL[σ₁₂] F` is compact in the topology of
pointwise convergence. Other versions of this theorem can be found in
`Analysis.Normed.Module.WeakDual`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd0cd3e74a7869d8a5171d89f7cc81a4fcce7a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
