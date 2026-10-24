# Sum.dist_eq_glueDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdd1497f199806dccef8b9d3c17022aa1b1a9d72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3df0650f-62dc-3fb2-65ec-bdea0e82561f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b05f9352-a266-a74e-684c-b5c6c9c20d58",
  "kind": "theorem",
  "lexical_name": "Sum.dist_eq_glueDist",
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
  "slug": "sum-dist-eq-gluedist--0341bcf4732115b9688ed343",
  "source": {
    "blob": "cdd1497f199806dccef8b9d3c17022aa1b1a9d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 226,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0341bcf4732115b9688ed34333ce9889272caa59ce00ce238f2fa71c801f84cb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b05f9352-a266-a74e-684c-b5c6c9c20d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sum.dist_eq_glueDist {p q : X ⊕ Y} (x : X) (y : Y) :
    Sum.dist p q =
      glueDist (fun _ : Unit => Nonempty.some ⟨x⟩) (fun _ : Unit => Nonempty.some ⟨y⟩) 1 p q := by
  cases p <;> cases q <;> first |rfl|simp [Sum.dist, glueDist, dist_comm, add_comm,
    add_left_comm, add_assoc]
#align metric.sum.dist_eq_glue_dist Metric.Sum.dist_eq_glueDist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdd1497f199806dccef8b9d3c17022aa1b1a9d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
