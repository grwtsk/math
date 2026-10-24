# actualTiltBandState_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88bcd782-ba77-c540-c3bb-ff88b0f5cafc",
  "kind": "theorem",
  "lexical_name": "actualTiltBandState_norm_sq",
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
  "slug": "actualtiltbandstate-norm-sq--3a038e94c855d23d00e08ba1",
  "source": {
    "blob": "dbc3a8f6cbec9239dc5feb840f8273dac4ecb412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a038e94c855d23d00e08ba18633a22d6d792015ec8660e646dc29743c46a479",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88bcd782-ba77-c540-c3bb-ff88b0f5cafc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBandState_norm_sq {A : ℝ} (hA : 1 ≤ A) (T : ℝ) :
    ‖actualTiltBandState A T‖ ^ 2 =
      ∫ ξ in actualStandardBand T, ‖actualTiltStandardSpectrum A ξ‖ ^ 2 := by
  rw [← Lp.norm_fourier_eq (actualTiltBandState A T), actualTiltBandState_fourier_eq,
    state_norm_sq_integral,
    ← integral_indicator (show MeasurableSet (actualStandardBand T) from measurableSet_Icc)]
  apply integral_congr_ae
  filter_upwards [actualTiltBandSpectrum_coe_ae hA T] with ξ hξ
  rw [hξ]
  by_cases h : ξ ∈ actualStandardBand T <;> simp [h]

/-- Plancherel retains the entire actual tilted energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc3a8f6cbec9239dc5feb840f8273dac4ecb412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
