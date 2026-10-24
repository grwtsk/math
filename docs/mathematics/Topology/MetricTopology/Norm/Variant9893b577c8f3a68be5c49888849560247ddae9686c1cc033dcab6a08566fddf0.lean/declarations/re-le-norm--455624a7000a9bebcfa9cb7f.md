# re_le_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae7a1578-c8c4-4c3f-f888-8dd6c851168c",
  "kind": "theorem",
  "lexical_name": "re_le_norm",
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
  "slug": "re-le-norm--455624a7000a9bebcfa9cb7f",
  "source": {
    "blob": "de1b5bacb28d32fa8232a593e4b206f97ff07dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:455624a7000a9bebcfa9cb7f97b314021ea2d6e70dd0633c3bc3155860d8aa61",
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

Occurrence: `result:ae7a1578-c8c4-4c3f-f888-8dd6c851168c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_le_norm (z : ℂ) : z.re ≤ ‖z‖ :=
  (abs_le.1 (abs_re_le_norm _)).2

@[deprecated (since := "2025-02-16")] alias abs_re_le_abs := abs_re_le_norm
@[deprecated (since := "2025-02-16")] alias re_le_abs := re_le_norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1b5bacb28d32fa8232a593e4b206f97ff07dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
