# literal_golden_quadratic_integer_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db47632f-2046-623f-6e91-e52a25202735",
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
  "slug": "literal-golden-quadratic-integer-ne-zero--a60282fe12f36a7395bcd25d",
  "source": {
    "blob": "88e09b0f558d761d6117d45b8a641484029ec8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant4494db84165c355cf7baffee4a2d31a0734ae427e58290ebf7efbbd1aadc7111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60282fe12f36a7395bcd25d19981ac38a573aac4fceea5163c374d2e3f20a0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant4494db84165c355cf7baffee4a2d31a0734ae427e58290ebf7efbbd1aadc7111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db47632f-2046-623f-6e91-e52a25202735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant4494db84165c355cf7baffee4a2d31a0734ae427e58290ebf7efbbd1aadc7111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant4494db84165c355cf7baffee4a2d31a0734ae427e58290ebf7efbbd1aadc7111.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e09b0f558d761d6117d45b8a641484029ec8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
