# frequency_derivative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47e8b9ca-ce36-ad99-d6ff-20b98260a487",
  "kind": "theorem",
  "lexical_name": "frequency_derivative_bound",
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
  "slug": "frequency-derivative-bound--5cebcc53e25aa7dcea92c1a9",
  "source": {
    "blob": "ef3af0946dd6f2f704059027b4587ab1b961cb66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/Analysis/Fourier/IntegerSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cebcc53e25aa7dcea92c1a9ce06ee7f018fcc9f9504d478debe5a9f5f3922ff",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e8b9ca-ce36-ad99-d6ff-20b98260a487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequency_derivative_bound (s : ℕ → ℤ) (k : ℕ) :
    |frequencyAmplitude s k * (s k : ℝ)| ≤ (1 / 2 : ℝ) ^ (k + 1) := by
  have hp : 0 < 1 + |(s k : ℝ)| := by positivity
  rw [frequencyAmplitude, abs_mul, abs_div, abs_of_nonneg (by positivity), abs_of_pos hp]
  have hc : |(s k : ℝ)| / (1 + |(s k : ℝ)|) ≤ 1 := (div_le_one hp).mpr (by linarith)
  calc
    _ = (1 / 2 : ℝ) ^ (k + 1) * (|(s k : ℝ)| / (1 + |(s k : ℝ)|)) := by ring
    _ ≤ _ := by simpa using mul_le_mul_of_nonneg_left hc (by positivity : 0 ≤ (1/2:ℝ)^(k+1))


end GRWTSK.Analysis.Waveform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/IntegerSeries.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3af0946dd6f2f704059027b4587ab1b961cb66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
