# quantitative_detector_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de4b132c-0e8a-1ea5-5126-d559781c1736",
  "kind": "theorem",
  "lexical_name": "quantitative_detector_margin",
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
  "slug": "quantitative-detector-margin--66a9e5b6a94b870688fe0f28",
  "source": {
    "blob": "8e3ae0dc3aba73e9435b9308b6935dd66aec87d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedFilterBudget/Varianta7414a4fe544f3afdedd3aedcaa20d715c4dc6cb8d3f632efa9f861606d0bc8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66a9e5b6a94b870688fe0f28d506f90e876c27e8efa04fcd5beb7c0d3de5791c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedFilterBudget/Varianta7414a4fe544f3afdedd3aedcaa20d715c4dc6cb8d3f632efa9f861606d0bc8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de4b132c-0e8a-1ea5-5126-d559781c1736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quantitative_detector_margin (k : ℕ) {h : ℝ} {s : ℂ}
    (hh : 0 < h) (hs : 0 < s.re) :
    (Real.exp (h * s.re) - 1) ^ k ≤ ‖multiplier k h s‖ := by
  have hn := norm_sub_norm_le (Complex.exp ((h : ℂ) * s)) (1 : ℂ)
  have hreal : ‖Complex.exp ((h : ℂ) * s)‖ = Real.exp (h * s.re) := by
    rw [Complex.norm_exp]; simp
  rw [hreal, norm_one] at hn
  have hpos : 0 ≤ Real.exp (h * s.re) - 1 := by
    have he := Real.one_lt_exp_iff.mpr (mul_pos hh hs)
    linarith
  rw [exact_binomial_multiplier, norm_pow]
  exact pow_le_pow_left₀ hpos hn k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedFilterBudget/Varianta7414a4fe544f3afdedd3aedcaa20d715c4dc6cb8d3f632efa9f861606d0bc8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedFilterBudget/Varianta7414a4fe544f3afdedd3aedcaa20d715c4dc6cb8d3f632efa9f861606d0bc8f.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e3ae0dc3aba73e9435b9308b6935dd66aec87d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
