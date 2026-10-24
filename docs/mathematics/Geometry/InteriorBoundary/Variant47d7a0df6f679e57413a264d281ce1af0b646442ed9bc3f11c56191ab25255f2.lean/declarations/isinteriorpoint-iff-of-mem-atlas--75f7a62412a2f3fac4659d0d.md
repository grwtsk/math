# isInteriorPoint_iff_of_mem_atlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a07857-5cd3-0e01-7322-7ab79a01467b",
  "kind": "lemma",
  "lexical_name": "isInteriorPoint_iff_of_mem_atlas",
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
  "slug": "isinteriorpoint-iff-of-mem-atlas--75f7a62412a2f3fac4659d0d",
  "source": {
    "blob": "e1f61359042c76f263993d92092e202eafef5e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 310,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f7a62412a2f3fac4659d0dcc35330ed7809ab5db660b14c1a10e1329300ab8",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a07857-5cd3-0e01-7322-7ab79a01467b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isInteriorPoint_iff_of_mem_atlas (hn : n ≠ 0) (he : e ∈ atlas H M) (hx : x ∈ e.source) :
    I.IsInteriorPoint x ↔ e.extend I x ∈ interior (e.extend I).target := by
  rw [isInteriorPoint_iff]
  exact mem_interior_range_iff_of_mem_atlas hn (chart_mem_atlas H x) he (mem_chart_source H x) hx

/-- A point `x` in a C¹ manifold is a boundary point if and only if it gets mapped to the boundary
of the model space by any given chart - in other words, the notion of boundary points does not
depend on any choice of charts.

Also see `ModelWithCorners.isInteriorPoint_iff_of_mem_atlas`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f61359042c76f263993d92092e202eafef5e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
