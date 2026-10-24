# prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab324e1b-4880-d876-71a1-8ca933ed7583",
  "kind": "theorem",
  "lexical_name": "prodMap",
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
  "slug": "prodmap--128e075b3a4d3529cc7fddfb",
  "source": {
    "blob": "c47831d19f76a5642954c01f3596e876d8bd0a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:128e075b3a4d3529cc7fddfb09591c1a36af917fe830a487cb36c63f3296d9ce",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab324e1b-4880-d876-71a1-8ca933ed7583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodMap {δ} [PseudoEMetricSpace δ] {f : α → β} {g : γ → δ} (hf : Isometry f)
    (hg : Isometry g) : Isometry (Prod.map f g) := fun x y => by
  simp only [Prod.edist_eq, Prod.map_fst, hf.edist_eq, Prod.map_snd, hg.edist_eq]

@[deprecated (since := "2025-04-18")]
alias prod_map := prodMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c47831d19f76a5642954c01f3596e876d8bd0a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
