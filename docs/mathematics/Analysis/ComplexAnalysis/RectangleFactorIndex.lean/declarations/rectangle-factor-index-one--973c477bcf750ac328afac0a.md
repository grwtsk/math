# Rectangle.factor_index_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58b90045-2f40-7ffd-84bf-9cd1d222a2ce",
  "kind": "theorem",
  "lexical_name": "Rectangle.factor_index_one",
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
  "slug": "rectangle-factor-index-one--973c477bcf750ac328afac0a",
  "source": {
    "blob": "7e5894bbbfa21368c3e02f99e0cde6bc6ff8b862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 187,
    "path": "GRWTSK/Analysis/Complex/RectangleFactorIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:973c477bcf750ac328afac0ac4e2902cebdb76d0e6ebd049b647e9b3b377e642",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58b90045-2f40-7ffd-84bf-9cd1d222a2ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rectangle.factor_index_one (D : Rectangle) {z : ℂ} (hz : z ∈ D.interior) :
    index (D.factor z) (D.factor_closed z) (D.factor_nonzero hz) = 1 := by
  let H := PolygonFreeHomotopy.freeHomotopy (fun w : ℂ => w-z) (by fun_prop)
    (by norm_num : 0 < (4 : ℕ)) D.corners (RationalPolygonIndex.points reference)
    rfl (by simp [RationalPolygonIndex.points, RationalPolygonIndex.vertex, reference])
    (D.factor_cells hz)
  exact (index_homotopy (D.factor_closed z) reference_closed
    (D.factor_nonzero hz) reference_nonzero H).trans reference_index

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangleFactorIndex.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e5894bbbfa21368c3e02f99e0cde6bc6ff8b862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
