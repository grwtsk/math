# octahedralChartCoverageProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b7c276d-0681-823a-ddbd-4957b11f4770",
  "kind": "theorem",
  "lexical_name": "octahedralChartCoverageProof",
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
  "slug": "octahedralchartcoverageproof--e74d8ddcbfcd4d6be3d9494a",
  "source": {
    "blob": "cf4d27ae7f7604be11609cccc3f273795b3e15bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralRatioCharts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e74d8ddcbfcd4d6be3d9494aff03c5ad5a299e1a5e15d9a259a870979abf315f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralRatioCharts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b7c276d-0681-823a-ddbd-4957b11f4770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octahedralChartCoverageProof : OctahedralChartCoverage := by
  intro direction
  cases direction with
  | x sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _, List.Mem.head _⟩
      | negative =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _ (List.Mem.head _)⟩
  | y sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _ (List.Mem.head _))⟩
      | negative =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _ (List.Mem.head _)))⟩
  | z sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _
                  (List.Mem.tail _ (List.Mem.head _))))⟩
      | negative =>
          exact ⟨octahedralSouthChart,
            List.Mem.tail _ (List.Mem.head _),
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _
                  (List.Mem.tail _ (List.Mem.head _))))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralRatioCharts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralRatioCharts.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf4d27ae7f7604be11609cccc3f273795b3e15bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
