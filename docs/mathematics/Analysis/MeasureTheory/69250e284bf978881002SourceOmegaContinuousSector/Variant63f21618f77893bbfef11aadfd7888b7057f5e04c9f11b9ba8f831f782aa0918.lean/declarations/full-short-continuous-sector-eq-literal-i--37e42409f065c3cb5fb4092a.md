# full_short_continuous_sector_eq_literal_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1252709d-94a0-5ea7-20a2-99116bbd923d",
  "kind": "theorem",
  "lexical_name": "full_short_continuous_sector_eq_literal_I",
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
  "slug": "full-short-continuous-sector-eq-literal-i--37e42409f065c3cb5fb4092a",
  "source": {
    "blob": "92e6e08a80abd9bd954ff7b836119fe574e43fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37e42409f065c3cb5fb4092ab2105ff9840d1fb95dc78c27715a83f9416a90d2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1252709d-94a0-5ea7-20a2-99116bbd923d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_short_continuous_sector_eq_literal_I (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      upperContinuousDivisorIntegral A (d : ℝ)) = literalOmegaIntegralSector A := by
  unfold literalOmegaIntegralSector
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  have hdN : d ≤ sourceKernelCutoff A :=
    (Finset.mem_Icc.mp hd).2.trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hdX : (d : ℝ) ≤ Real.exp (2 * A) := by
    have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
      Nat.floor_le (Real.exp_pos (2 * A)).le
    exact (by exact_mod_cast hdN : (d : ℝ) ≤ sourceKernelCutoff A).trans hf
  rw [upperContinuousDivisorIntegral_eq_literal_row hA hd0 hdX]
  ring

end FormalResearch.RiemannHypothesis.SourceOmegaContinuousSector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e6e08a80abd9bd954ff7b836119fe574e43fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
