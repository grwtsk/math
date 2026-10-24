# cospherical_pair

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
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ae7dc1d-ca3b-25cc-4bbd-f78b2505c68d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f877f70c-32aa-1901-0cd6-f8290040c4e5",
  "kind": "theorem",
  "lexical_name": "cospherical_pair",
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
  "slug": "cospherical-pair--982922a8905ffd9bd1b37dc5",
  "source": {
    "blob": "554f03b1db2739bec6345283c07b3c24759a12fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 194,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:982922a8905ffd9bd1b37dc5e35f61179b3fac1624d1b36bad369b2eae3d18b5",
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

Occurrence: `result:f877f70c-32aa-1901-0cd6-f8290040c4e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cospherical_pair (p₁ p₂ : P) : Cospherical ({p₁, p₂} : Set P) :=
  ⟨midpoint ℝ p₁ p₂, ‖(2 : ℝ)‖⁻¹ * dist p₁ p₂, by
    rintro p (rfl | rfl | _)
    · rw [dist_comm, dist_midpoint_left (𝕜 := ℝ)]
    · rw [dist_comm, dist_midpoint_right (𝕜 := ℝ)]⟩

/-- A set of points is concyclic if it is cospherical and coplanar. (Most results are stated
directly in terms of `Cospherical` instead of using `Concyclic`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554f03b1db2739bec6345283c07b3c24759a12fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
