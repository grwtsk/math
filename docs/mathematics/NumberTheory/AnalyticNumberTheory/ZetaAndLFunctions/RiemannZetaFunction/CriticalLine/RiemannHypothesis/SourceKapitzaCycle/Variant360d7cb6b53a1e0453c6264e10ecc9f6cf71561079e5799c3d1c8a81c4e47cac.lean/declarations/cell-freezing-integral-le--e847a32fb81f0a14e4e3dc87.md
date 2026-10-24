# cell_freezing_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67e32d7d-fa73-24f8-9e4e-42262d093150",
  "kind": "theorem",
  "lexical_name": "cell_freezing_integral_le",
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
  "slug": "cell-freezing-integral-le--e847a32fb81f0a14e4e3dc87",
  "source": {
    "blob": "16d255119cf0c7b004abb519c52d48d69c0a29f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant360d7cb6b53a1e0453c6264e10ecc9f6cf71561079e5799c3d1c8a81c4e47cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e847a32fb81f0a14e4e3dc8734632f2fc144a6d9f67a2eb4767ad8d906d027dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant360d7cb6b53a1e0453c6264e10ecc9f6cf71561079e5799c3d1c8a81c4e47cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67e32d7d-fa73-24f8-9e4e-42262d093150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cell_freezing_integral_le (q ell b D M : ℝ) (K : ℝ → ℝ)
    (hq : 0 ≤ q) (hD : 0 ≤ D) (hM : 0 ≤ M)
    (hK : ∀ t ∈ Set.Icc (0 : ℝ) D, |K t| ≤ M)
    (hi : IntervalIntegrable (fun t => K t *
      ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))) volume 0 D) :
    |∫ t in 0..D, K t *
      ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))| ≤
      M * (q + |b|) * D ^ 2 / 2 := by
  have hpoly : IntervalIntegrable (fun t : ℝ => M * (q + |b|) * t) volume 0 D :=
    (continuous_const.mul continuous_id).intervalIntegrable _ _
  have hpoint (t : ℝ) (ht : t ∈ Set.Icc (0 : ℝ) D) :
      |K t * ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))| ≤
        M * (q + |b|) * t := by
    rw [abs_mul]
    have hd := frozen_prefix_deviation_le q ell b t hq ht.1
    calc
      _ ≤ M * ((q + |b|) * t) :=
        mul_le_mul (hK t ht) hd (abs_nonneg _) hM
      _ = _ := by ring
  calc
    _ ≤ ∫ t in 0..D,
        |K t * ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))| :=
      intervalIntegral.abs_integral_le_integral_abs hD
    _ ≤ ∫ t in 0..D, M * (q + |b|) * t :=
      intervalIntegral.integral_mono_on hD hi.abs hpoly hpoint
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

/-- A generic hyperbolic matrix, used before binding the cosh/sinh parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant360d7cb6b53a1e0453c6264e10ecc9f6cf71561079e5799c3d1c8a81c4e47cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Variant360d7cb6b53a1e0453c6264e10ecc9f6cf71561079e5799c3d1c8a81c4e47cac.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16d255119cf0c7b004abb519c52d48d69c0a29f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
