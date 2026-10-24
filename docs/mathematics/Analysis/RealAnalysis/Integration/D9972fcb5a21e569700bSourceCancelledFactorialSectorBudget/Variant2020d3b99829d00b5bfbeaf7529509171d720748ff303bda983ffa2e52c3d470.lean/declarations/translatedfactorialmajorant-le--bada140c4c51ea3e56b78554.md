# translatedFactorialMajorant_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e33f61bb-f69c-0652-c8f6-a13625659578",
  "kind": "theorem",
  "lexical_name": "translatedFactorialMajorant_le",
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
  "slug": "translatedfactorialmajorant-le--bada140c4c51ea3e56b78554",
  "source": {
    "blob": "133060430e17a8fb6afabb97e0bd14d82edc3161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bada140c4c51ea3e56b7855460cf1eac9342510d7d6f370f2b8c73501630e958",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e33f61bb-f69c-0652-c8f6-a13625659578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem translatedFactorialMajorant_le {d x : ℝ} (hd : 1 ≤ d) (hx : 0 < x) :
    factorialCancellationRowMajorant d x ≤ translatedFactorialMajorant d x := by
  have hdpos : 0 < d := by linarith
  let a := Real.log d
  let b := Real.log (x / d)
  have ha : 0 ≤ a := Real.log_nonneg hd
  have hlog : Real.log x = a + b := by
    dsimp [a, b]
    rw [Real.log_div hx.ne' hdpos.ne']
    ring
  have hb0 := abs_nonneg b
  have hb1 := le_abs_self b
  have habs : |Real.log x| ≤ a + |b| := by
    rw [hlog]
    simpa only [abs_of_nonneg ha] using abs_add_le a b
  have hs : (Real.log x) ^ 2 ≤ a ^ 2 + 2 * a * |b| + |b| ^ 2 := by
    rw [hlog]
    nlinarith [sq_abs b, mul_nonneg ha (sub_nonneg.mpr hb1)]
  have hpoly : 5 * (Real.log x) ^ 2 + 20 * |Real.log x| ≤
      (5 * a ^ 2 + 20 * a) + (10 * a + 20) * |b| + 5 * |b| ^ 2 := by
    nlinarith
  unfold factorialCancellationRowMajorant translatedFactorialMajorant
  rw [scaled_abs_factorial_density hdpos hx]
  calc
    _ ≤ (d ^ (-(3 : ℝ) / 2) * |factorialMellinWeight (x * d⁻¹)|) *
        ((5 * a ^ 2 + 20 * a) + (10 * a + 20) * |b| + 5 * |b| ^ 2) :=
      mul_le_mul_of_nonneg_left hpoly (by positivity)
    _ = _ := by
      unfold factorialAbsLogWeight a b
      simp only [pow_zero, pow_one, ← div_eq_mul_inv]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133060430e17a8fb6afabb97e0bd14d82edc3161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
