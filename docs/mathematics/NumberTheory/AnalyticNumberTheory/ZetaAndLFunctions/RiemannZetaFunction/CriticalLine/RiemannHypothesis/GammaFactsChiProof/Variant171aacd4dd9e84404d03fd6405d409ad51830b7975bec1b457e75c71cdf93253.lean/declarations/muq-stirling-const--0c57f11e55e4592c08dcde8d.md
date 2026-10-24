# muq_stirling_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eb814a2-24a1-5d25-4b87-ff9b057f19a2",
  "kind": "theorem",
  "lexical_name": "muq_stirling_const",
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
  "slug": "muq-stirling-const--0c57f11e55e4592c08dcde8d",
  "source": {
    "blob": "cf1486081a4e59a90670d111b5eeb029cba4094f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c57f11e55e4592c08dcde8de9745e3ccc4b1317b2385788c625892b1016c517",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb814a2-24a1-5d25-4b87-ff9b057f19a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem muq_stirling_const (hκ : κ ≤ 1) (hq : 1 ≤ q) (τ : ℝ) (hτ : 1 ≤ |τ|) :
    |muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))|
      ≤ (20 / (2 * Real.pi)) / τ ^ 2 := by
  have hπ := Real.pi_pos
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (lt_of_lt_of_le zero_lt_one hq)
  have ht : 1 / 2 ≤ |τ / 2| := by rw [abs_div, abs_two]; linarith
  have ha1 : absc κ ≤ 1 := (absc_lt_one hκ).le
  have h := Zeta23.StirlingVert.re_digamma_stirling' (a := absc κ) (absc_pos κ) ha1 ht
  have hτ0 : 0 < |τ| := by linarith
  set D : ℝ := (Complex.digamma (((absc κ : ℝ) : ℂ) + Complex.I * ((τ / 2 : ℝ) : ℂ))).re
    - Real.log |τ / 2| with hD
  have hD5 : |D| ≤ 5 / (τ / 2) ^ 2 := h
  have hlogs : Real.log (q * |τ| / (2 * Real.pi))
      = Real.log |τ / 2| + Real.log (q / Real.pi) := by
    rw [abs_div, abs_two, show (q : ℝ) * |τ| / (2 * Real.pi) = (|τ| / 2) * (q / Real.pi) by field_simp,
      Real.log_mul (by positivity) (by positivity)]
  have key : muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))
      = (1 / (2 * Real.pi)) * D := by
    rw [muq_eq, hlogs, hD]; ring
  rw [key, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1 / (2 * Real.pi))]
  calc 1 / (2 * Real.pi) * |D| ≤ 1 / (2 * Real.pi) * (5 / (τ / 2) ^ 2) := by gcongr
    _ = 20 / (2 * Real.pi) / τ ^ 2 := by field_simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1486081a4e59a90670d111b5eeb029cba4094f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
