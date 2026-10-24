# ordinary_heat_left_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:104eab1f-e225-f111-5381-6f89deca3e35",
  "kind": "theorem",
  "lexical_name": "ordinary_heat_left_inverse",
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
  "slug": "ordinary-heat-left-inverse--5caabdb91b435400beace0d0",
  "source": {
    "blob": "cdef392d3f7f978c7c0641d8d55cfe5f4d8a6ac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 75,
    "path": "GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5caabdb91b435400beace0d0ae1f607e41cb045d72a66d2d59b416ddb93d86a2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:104eab1f-e225-f111-5381-6f89deca3e35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinary_heat_left_inverse
    {α : Type _}
    {H : α → α}
    (I : HasTwoSidedInverse α H)
    (x : α) :
    I.inv (H x) = x :=
  I.left_inv x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdef392d3f7f978c7c0641d8d55cfe5f4d8a6ac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
