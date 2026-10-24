# contMDiff_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb6a5835-724c-526d-6db9-8d2be7b815bb",
  "kind": "theorem",
  "lexical_name": "contMDiff_coe",
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
  "slug": "contmdiff-coe--9bfeb46b2f17d702ff1e4285",
  "source": {
    "blob": "5ece48e7c611b8db7639c0bfc7ad52f46ed44670",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bfeb46b2f17d702ff1e4285f98d4667ee94f42a9666381ee5ffdeb85839ca01",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6a5835-724c-526d-6db9-8d2be7b815bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_coe : ContMDiff 𝓘(ℂ) 𝓘(ℂ) n ((↑) : ℍ → ℂ) :=
  fun _ => contMDiffAt_extChartAt

@[deprecated (since := "2024-11-20")] alias smooth_coe := contMDiff_coe

/-- The inclusion map `ℍ → ℂ` is a differentiable map of manifolds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ece48e7c611b8db7639c0bfc7ad52f46ed44670` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
