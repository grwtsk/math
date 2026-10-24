# literal_golden_quadratic_integer_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db32161c-2934-2e4d-3297-7afc84c64891",
  "kind": "theorem",
  "lexical_name": "literal_golden_quadratic_integer_ne_zero",
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
  "slug": "literal-golden-quadratic-integer-ne-zero--725dd8fa6750f3972a88f03c",
  "source": {
    "blob": "f4a29a0e3df68ae8fb0b7db5b0a4265c778f9ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:725dd8fa6750f3972a88f03cfc8621cbbf42658970eac657a856da7f7ae804b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db32161c-2934-2e4d-3297-7afc84c64891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_golden_quadratic_integer_ne_zero (m : ℕ) (hm : 1 ≤ m) (n : ℤ) :
    n^2-n*(m : ℤ)-(m : ℤ)^2 ≠ 0 := by
  have hmR : (0 : ℝ) < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hscaled : ((n : ℝ)/(m : ℝ)-goldenFrequency)*
      ((n : ℝ)/(m : ℝ)-conjugateFrequency) =
        ((n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2)/(m : ℝ)^2 := by
    rw [literal_golden_quadratic_factor]
    field_simp [hmR.ne']
  intro he
  have heR : (n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2 = 0 := by exact_mod_cast he
  rw [heR,zero_div] at hscaled
  rcases mul_eq_zero.mp hscaled with hgold | hconj
  · apply literal_golden_frequency_irrational.ne_rat ((n : ℚ)/(m : ℚ))
    push_cast
    linarith
  · apply literal_conjugate_frequency_irrational.ne_rat ((n : ℚ)/(m : ℚ))
    push_cast
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a29a0e3df68ae8fb0b7db5b0a4265c778f9ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
