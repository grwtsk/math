# coefficient_eq_thetaTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:047210e1-fb4a-5b3b-9d8c-3fb507924ceb",
  "kind": "theorem",
  "lexical_name": "coefficient_eq_thetaTail",
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
  "slug": "coefficient-eq-thetatail--58e4866aba9ce72e245b3d99",
  "source": {
    "blob": "68343cc85c34d1b1bfb03ba1377f8ba4ea913198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58e4866aba9ce72e245b3d99a9bc83ac21fa2b099e81e807022dd63ead868272",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:047210e1-fb4a-5b3b-9d8c-3fb507924ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_eq_thetaTail (n : ℕ) :
    coefficient n = 8 * (4 : ℝ) ^ n * thetaTail (2 * n + 1) 0 := by
  rw [thetaCoefficientFormula n]
  unfold thetaTail
  simp only [sub_zero, evenBasis, mul_pow, ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [show (4 : ℝ) ^ n = 2 ^ (2 * n) by rw [show (4 : ℝ) = 2^2 by norm_num, pow_mul]]
  ring

/-- An unconditional Turán inequality for all actual xi coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68343cc85c34d1b1bfb03ba1377f8ba4ea913198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
