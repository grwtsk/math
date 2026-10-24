# realConj_weilOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b12b0b7f-7985-5283-7caf-3c2cb8944459",
  "kind": "theorem",
  "lexical_name": "realConj_weilOperator",
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
  "slug": "realconj-weiloperator--ecec38c1cde7ba01b071871d",
  "source": {
    "blob": "320dc84dd983c31aa3d51c85160e7bea2605d4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 200,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecec38c1cde7ba01b071871d92f41ec688ac061f7ab79ccedfa6478304bc5bfa",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b12b0b7f-7985-5283-7caf-3c2cb8944459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realConj_weilOperator (z : G → ℂ) :
    realConj C (weilOperator v z) =
      weilOperator v (realConj C z) := by
  funext g
  rcases v.isSign g with hg | hg
  · have hc : v.value (C.conj g) = -1 := by
      rw [v.odd, hg]
      norm_num
    simp [realConj, weilOperator, hg, hc, map_mul]
  · have hc : v.value (C.conj g) = 1 := by
      rw [v.odd, hg]
      norm_num
    simp [realConj, weilOperator, hg, hc, map_mul]

/-- Compact source-level certificate for the coordinate weight-one Hodge
profile. This packages only the finite semantic structure proved above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320dc84dd983c31aa3d51c85160e7bea2605d4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
