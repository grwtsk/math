# norm_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec0ab775-c0a1-c6f5-2fb8-b709b2a35891",
  "kind": "theorem",
  "lexical_name": "norm_of_nonneg",
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
  "slug": "norm-of-nonneg--bc7f9a5c63ce63f356ca23b3",
  "source": {
    "blob": "de1b5bacb28d32fa8232a593e4b206f97ff07dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7f9a5c63ce63f356ca23b3cfb602fee6b62a234959bea5d64444834f189409",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0ab775-c0a1-c6f5-2fb8-b709b2a35891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem norm_of_nonneg {r : ℝ} (h : 0 ≤ r) : ‖(r : ℂ)‖ = r :=
  (norm_real _).trans (abs_of_nonneg h)

@[deprecated (since := "2025-02-16")] alias abs_ofReal := norm_real
@[deprecated (since := "2025-02-16")] protected alias abs_of_nonneg := Complex.norm_of_nonneg

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1b5bacb28d32fa8232a593e4b206f97ff07dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
