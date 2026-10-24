# nhdsWithin_range_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac4b85cf-41b5-73eb-aecb-c219d87a45db",
  "kind": "theorem",
  "lexical_name": "nhdsWithin_range_basis",
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
  "slug": "nhdswithin-range-basis--781d5bf1d2a26780a20fac28",
  "source": {
    "blob": "efb4fa00c1ccb73d022c3420b6b1ca5b18765820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:781d5bf1d2a26780a20fac280583b4a5243d0a78887d84ae05a6608e68f23b7c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac4b85cf-41b5-73eb-aecb-c219d87a45db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsWithin_range_basis :
    (𝓝[range I] extChartAt I c c).HasBasis (fun _ : SmoothBumpFunction I c => True) fun f =>
      closedBall (extChartAt I c c) f.rOut ∩ range I := by
  refine ((nhdsWithin_hasBasis nhds_basis_closedBall _).restrict_subset
    (extChartAt_target_mem_nhdsWithin _)).to_hasBasis' ?_ ?_
  · rintro R ⟨hR0, hsub⟩
    exact ⟨⟨⟨R / 2, R, half_pos hR0, half_lt_self hR0⟩, hsub⟩, trivial, Subset.rfl⟩
  · exact fun f _ => inter_mem (mem_nhdsWithin_of_mem_nhds <| closedBall_mem_nhds _ f.rOut_pos)
      self_mem_nhdsWithin

variable [FiniteDimensional ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efb4fa00c1ccb73d022c3420b6b1ca5b18765820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
