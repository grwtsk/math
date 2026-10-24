# logResidual_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e45e206d-8c54-60af-35f9-75953e98ff94",
  "kind": "theorem",
  "lexical_name": "logResidual_fourier",
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
  "slug": "logresidual-fourier--b101b6cb45d83105868f2544",
  "source": {
    "blob": "9a47ce0a082ea4002fff157caf3b040b10166e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 117,
    "path": "GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b101b6cb45d83105868f2544f87c6788c61d0080dd5dd6fc0ab92547f2596d20",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e45e206d-8c54-60af-35f9-75953e98ff94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_fourier (X : ℕ) (hX : 1 ≤ X) (ε ξ : ℝ) :
    𝓕 (logResidual X ε) ξ =
      (1 - riemannZeta (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)) /
          (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [← logResidual_angular_integral X hX ε (2 * Real.pi * ξ),
    Real.fourier_real_eq_integral_exp_smul]
  apply integral_congr_ae
  filter_upwards [] with u
  simp only [smul_eq_mul]
  congr 2
  push_cast
  ring

end
end LogarithmicResidualScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a47ce0a082ea4002fff157caf3b040b10166e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
