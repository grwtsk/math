# Mform_u_Pc_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de32d651-2fdb-41c2-3cb7-486b19261017",
  "kind": "lemma",
  "lexical_name": "Mform_u_Pc_eq",
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
  "slug": "mform-u-pc-eq--27fe83aea6dff01e2d02ddba",
  "source": {
    "blob": "6b5388b5eadf6e24d4f6b40887feb115f7feb0f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cross/Variant914f02aad8b7a95365b6e12c2a4189d6ad9c42b3cb69486a3889e640d67b33fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27fe83aea6dff01e2d02ddbae5b6cb02ca8c14bb869d0c0e14b8d3809205883b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cross/Variant914f02aad8b7a95365b6e12c2a4189d6ad9c42b3cb69486a3889e640d67b33fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de32d651-2fdb-41c2-3cb7-486b19261017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_u_Pc_eq {Φ : ℝ → ℝ} (hΦ : Continuous Φ) {u : ℝ → ℝ} (hu : Continuous u)
    (c : ℕ → ℂ) (X T : ℝ) :
    Mform Φ T u (Pc X c)
      = ∑ n ∈ Finset.Ioc 0 ⌊X⌋₊, ((1 / Real.pi) * (Real.sqrt n)⁻¹)
          * ((c n).re * Mform Φ T u (fun t => Real.cos (t * Real.log n))
             + (c n).im * Mform Φ T u (fun t => Real.sin (t * Real.log n))) := by
  unfold Mform
  have h1 : (fun q : ℝ × ℝ => Φ (q.1 - q.2) ^ 2 * u q.1 * Pc X c q.2)
      = fun q => ∑ n ∈ Finset.Ioc 0 ⌊X⌋₊, ((1 / Real.pi) * (Real.sqrt n)⁻¹)
          * ((c n).re * (Φ (q.1 - q.2) ^ 2 * u q.1 * Real.cos (q.2 * Real.log n))
             + (c n).im * (Φ (q.1 - q.2) ^ 2 * u q.1 * Real.sin (q.2 * Real.log n))) := by
    funext q
    unfold Pc
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [div_eq_mul_inv]
    ring
  rw [h1, integral_finset_sum]
  · refine Finset.sum_congr rfl fun n _ => ?_
    rw [integral_const_mul]
    congr 1
    have i1 := (Mform_integrableOn' (T := T) hΦ hu
      (show Continuous fun t : ℝ => Real.cos (t * Real.log n) by fun_prop)).const_mul ((c n).re)
    have i2 := (Mform_integrableOn' (T := T) hΦ hu
      (show Continuous fun t : ℝ => Real.sin (t * Real.log n) by fun_prop)).const_mul ((c n).im)
    beta_reduce at i1 i2
    rw [integral_add i1 i2, integral_const_mul, integral_const_mul]
  · intro n _
    have i1 := (Mform_integrableOn' (T := T) hΦ hu
      (show Continuous fun t : ℝ => Real.cos (t * Real.log n) by fun_prop)).const_mul ((c n).re)
    have i2 := (Mform_integrableOn' (T := T) hΦ hu
      (show Continuous fun t : ℝ => Real.sin (t * Real.log n) by fun_prop)).const_mul ((c n).im)
    beta_reduce at i1 i2
    exact (i1.add i2).const_mul _

/-- **[prop:cross](i) for P_c** with arbitrary complex coefficients (`c 1 = 0`):
`|𝓜[μ, P_c]| ≤ C · l · L · S₁(c; X)` for `T ≥ T₀`, constants depending on H-Γ only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cross/Variant914f02aad8b7a95365b6e12c2a4189d6ad9c42b3cb69486a3889e640d67b33fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cross/Variant914f02aad8b7a95365b6e12c2a4189d6ad9c42b3cb69486a3889e640d67b33fa.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b5388b5eadf6e24d4f6b40887feb115f7feb0f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
