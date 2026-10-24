# spectrum_energy_angular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06438faa-0c92-180e-88b4-fa00254d40ee",
  "kind": "theorem",
  "lexical_name": "spectrum_energy_angular",
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
  "slug": "spectrum-energy-angular--59796764b33e35766fcf8fdf",
  "source": {
    "blob": "f708a4ae9f2239d1adf8b2812a35acbcf9f1f4be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59796764b33e35766fcf8fdf506277f57565659bc969f783fd8fca32595ca8f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06438faa-0c92-180e-88b4-fa00254d40ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem spectrum_energy_angular (A T : ℝ) :
    (1 / (2 * Real.pi)) * (∫ t in -T..T,
      ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2) =
      ∫ ξ in -T / (2 * Real.pi)..T / (2 * Real.pi),
        ‖actualTiltStandardSpectrum A ξ‖ ^ 2 := by
  have he (t : ℝ) : -t / (2 * Real.pi) = t / (-2 * Real.pi) := by ring
  simp_rw [he]
  rw [intervalIntegral.integral_comp_div (fun ξ : ℝ => ‖actualTiltStandardSpectrum A ξ‖ ^ 2)
    (a := -T) (b := T) (c := -2 * Real.pi) (by positivity : (-2 * Real.pi : ℝ) ≠ 0)]
  simp only [smul_eq_mul]
  rw [intervalIntegral.integral_symm]
  field_simp

/-- The actual signed central mass is paid by the true projected norm at its own height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f708a4ae9f2239d1adf8b2812a35acbcf9f1f4be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
