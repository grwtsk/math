# signedHeatRemainder_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8903f78-b864-1b44-7e07-614f7b1a5b2f",
  "kind": "theorem",
  "lexical_name": "signedHeatRemainder_abs_le",
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
  "slug": "signedheatremainder-abs-le--4d63b537c558e510d401e1a1",
  "source": {
    "blob": "713359410b20ea65daf40908ff260b90aac19816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d63b537c558e510d401e1a17bdfc1f9f3e0f743e663549e9a7fe7b056cecbe4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8903f78-b864-1b44-7e07-614f7b1a5b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedHeatRemainder_abs_le (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (hτ : 0 ≤ τ) :
    |signedHeatRemainder μ k τ| ≤ M := by
  rw [signedHeatRemainder_eq_filtered_integral hk hM hb hτ]
  have h := norm_integral_le_of_norm_le_const (μ := μ) (C := M)
    (f := fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) (ae_of_all _ (fun x => by
    have he : Real.exp (-τ * k x ^ 2) ≤ 1 := Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hτ) (sq_nonneg _))
    have hz : 0 ≤ 1 - Real.exp (-τ * k x ^ 2) := by linarith
    have ho : 1 - Real.exp (-τ * k x ^ 2) ≤ 1 := by linarith [Real.exp_pos (-τ * k x ^ 2)]
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hz]
    exact (mul_le_mul_of_nonneg_left ho (abs_nonneg (k x))).trans (by simpa using hb x)))
  simpa only [Real.norm_eq_abs, probReal_univ, mul_one] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713359410b20ea65daf40908ff260b90aac19816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
