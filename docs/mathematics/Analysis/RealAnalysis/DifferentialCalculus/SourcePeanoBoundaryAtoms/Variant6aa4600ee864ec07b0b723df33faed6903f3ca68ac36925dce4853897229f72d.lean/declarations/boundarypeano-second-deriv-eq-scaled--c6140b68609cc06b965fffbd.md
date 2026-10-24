# boundaryPeano_second_deriv_eq_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a977ec2-4e4f-a0ea-9132-881aa22a215c",
  "kind": "theorem",
  "lexical_name": "boundaryPeano_second_deriv_eq_scaled",
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
  "slug": "boundarypeano-second-deriv-eq-scaled--c6140b68609cc06b965fffbd",
  "source": {
    "blob": "9c6d7b97c9303c71fa0f47b54961cbae4e4f1548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6140b68609cc06b965fffbd2e6528f5189d39b6c05795a93ab910dbb878914f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a977ec2-4e4f-a0ea-9132-881aa22a215c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem boundaryPeano_second_deriv_eq_scaled {A : ℝ}
    (hA : 0 < A) (y : ℝ) :
    deriv (deriv (boundaryPeano A)) y =
      peanoScale A * deriv (deriv (sourcePeanoPrimitive A)) (2 * A - y) := by
  have hp := sourcePeanoPrimitive_contDiff_two hA
  have hp1 : ContDiff ℝ 1 (deriv (sourcePeanoPrimitive A)) := hp.deriv'
  have hc (s : ℝ) : HasDerivAt (fun z => (2 : ℝ) * A - z) (-1) s := by
    simpa only [id_eq] using (hasDerivAt_id s).const_sub ((2 : ℝ) * A)
  have hd : deriv (boundaryPeano A) =
      fun s => -peanoScale A * deriv (sourcePeanoPrimitive A) (2 * A - s) := by
    funext s
    have h := ((hp.differentiable (by norm_num) (2 * A - s)).hasDerivAt.comp s
      (hc s)).const_mul (peanoScale A)
    exact (h.congr_deriv (by ring)).deriv
  have h := ((hp1.differentiable (by norm_num) (2 * A - y)).hasDerivAt.comp y
    (hc y)).const_mul (-peanoScale A)
  rw [hd]
  exact (h.congr_deriv (by ring)).deriv

/-- Two reflection derivatives give a plus sign and the exact boundary exponential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c6d7b97c9303c71fa0f47b54961cbae4e4f1548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
