# inner_pos_of_dist_lt_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "554f03b1db2739bec6345283c07b3c24759a12fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75951106-1ef2-97ec-941c-a93ab02c80c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66499971-f2bf-c311-e331-d7969dae080e",
  "kind": "theorem",
  "lexical_name": "inner_pos_of_dist_lt_radius",
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
  "slug": "inner-pos-of-dist-lt-radius--a766e094e6876d2de1901c2a",
  "source": {
    "blob": "554f03b1db2739bec6345283c07b3c24759a12fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 448,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a766e094e6876d2de1901c2a9cfb0c63395b8c2adf7ecdc070f47a12b372c267",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66499971-f2bf-c311-e331-d7969dae080e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_pos_of_dist_lt_radius {s : Sphere P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s)
    (hp₂ : dist p₂ s.center < s.radius) : 0 < ⟪p₁ -ᵥ p₂, p₁ -ᵥ s.center⟫ := by
  by_cases h : p₁ = p₂
  · rw [h, mem_sphere] at hp₁
    exact False.elim (hp₂.ne hp₁)
  exact (inner_pos_or_eq_of_dist_le_radius hp₁ hp₂.le).resolve_right h

/-- Given three collinear points, two on a sphere and one not outside it, the one not outside it
is weakly between the other two points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554f03b1db2739bec6345283c07b3c24759a12fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
