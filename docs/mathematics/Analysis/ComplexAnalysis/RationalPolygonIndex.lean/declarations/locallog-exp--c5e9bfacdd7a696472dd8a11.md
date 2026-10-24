# localLog_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00322bd7-522c-f62c-986d-2972202364cc",
  "kind": "theorem",
  "lexical_name": "localLog_exp",
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
  "slug": "locallog-exp--c5e9bfacdd7a696472dd8a11",
  "source": {
    "blob": "24758d17af4e5bf83b68bd983ddc16f11a27fa9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/Analysis/Complex/RationalPolygonIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5e9bfacdd7a696472dd8a11939db26cd4a86f7d9655effc0bfc85988123d690",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00322bd7-522c-f62c-986d-2972202364cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localLog_exp {a b : Coordinates} (h : EdgeValid a b) (t : I) :
    Complex.exp (localLog a b (blend (t : ℝ) (toComplex a) (toComplex b))) =
      blend (t : ℝ) (toComplex a) (toComplex b) := by
  by_cases hl : leftChart a b = true
  · rw [localLog, if_pos hl]
    apply PolygonLogCharts.exp_negativeLog
    have hr := PolygonLogCharts.negative_edge_re
      ((leftChart_real _ _).mp hl).1 ((leftChart_real _ _).mp hl).2 t
    intro hz
    simpa [hz] using hr
  · rw [localLog, if_neg hl]
    exact Complex.exp_log (Complex.slitPlane_ne_zero
      (PolygonLogCharts.principal_edge_mem (principal_of_not_left h hl) t))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalPolygonIndex.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24758d17af4e5bf83b68bd983ddc16f11a27fa9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
