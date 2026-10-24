# density_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a741de1-5634-cf30-91c0-e8b351a76763",
  "kind": "theorem",
  "lexical_name": "density_upper",
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
  "slug": "density-upper--fa014aa9f432cba2b4131b7d",
  "source": {
    "blob": "058ca796d79eb86ab5c3c9d5c23508230a1c2ff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantd8670098b9a0f4a885a31440df1952fc971d55854281dbc700a0088b9140b035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa014aa9f432cba2b4131b7d59ba582838f48d400a9b953b3e87c7fad88e8bbc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantd8670098b9a0f4a885a31440df1952fc971d55854281dbc700a0088b9140b035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a741de1-5634-cf30-91c0-e8b351a76763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem density_upper {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualClosedFrequencyDensity A t ≤ actualRightLineMass (3 / 2) *
      ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2 := by
  unfold actualClosedFrequencyDensity
  calc
    _ ≤ ‖actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
        actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ :=
      Complex.re_le_norm _
    _ = ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2 *
        ‖actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ := by
      rw [norm_mul, mellin_eq_spectrum_sq hA, norm_pow]
    _ ≤ _ := by
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left (polynomial_norm_le A t)
        (sq_nonneg ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantd8670098b9a0f4a885a31440df1952fc971d55854281dbc700a0088b9140b035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantd8670098b9a0f4a885a31440df1952fc971d55854281dbc700a0088b9140b035.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `058ca796d79eb86ab5c3c9d5c23508230a1c2ff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
