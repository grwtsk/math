# boundary_third_eq_reflected_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2de4d63-e3d7-a93b-4e26-586d6eb26116",
  "kind": "theorem",
  "lexical_name": "boundary_third_eq_reflected_deriv",
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
  "slug": "boundary-third-eq-reflected-deriv--8f99f38da7036656eb3b6b7b",
  "source": {
    "blob": "141631003c5688a21295507812f316a3329c5ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant6d9e14c35bdc235a957718675028e7f9a43ebaccd79f8123a8975f096fc1b8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f99f38da7036656eb3b6b7bb440d663df86a22d802b2beb3fabfbfd8a381d01",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant6d9e14c35bdc235a957718675028e7f9a43ebaccd79f8123a8975f096fc1b8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2de4d63-e3d7-a93b-4e26-586d6eb26116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem boundary_third_eq_reflected_deriv {A : ℝ}
    (hA : 0 < A) (y : ℝ) :
    deriv (deriv (deriv (boundaryPeano A))) y =
      -peanoScale A * deriv (criticalPrimeTest A) (2 * A - y) := by
  have he : deriv (deriv (boundaryPeano A)) =
      fun z => peanoScale A * criticalPrimeTest A (2 * A - z) :=
    funext (boundary_second_eq_reflected_test hA)
  have hg := ((criticalPrimeTest_contDiff A hA).differentiable
    (by norm_num) (2 * A - y)).hasDerivAt
  have hc : HasDerivAt (fun z : ℝ => 2 * A - z) (-1) y := by
    simpa only [id_eq] using (hasDerivAt_id y).const_sub (2 * A)
  have hd := (hg.comp y hc).const_mul (peanoScale A)
  rw [he]
  exact (hd.congr_deriv (by ring)).deriv

/-- Exact reflection of the actual finite Abel window retains its endpoint centering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant6d9e14c35bdc235a957718675028e7f9a43ebaccd79f8123a8975f096fc1b8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant6d9e14c35bdc235a957718675028e7f9a43ebaccd79f8123a8975f096fc1b8b7.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141631003c5688a21295507812f316a3329c5ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
