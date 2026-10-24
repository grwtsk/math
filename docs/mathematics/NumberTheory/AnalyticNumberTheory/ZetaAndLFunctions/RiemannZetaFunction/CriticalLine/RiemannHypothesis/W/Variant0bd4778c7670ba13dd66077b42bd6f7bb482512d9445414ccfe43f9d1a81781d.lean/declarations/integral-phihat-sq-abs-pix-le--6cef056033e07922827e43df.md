# integral_phiHat_sq_abs_PiX_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcc21f65-15f1-11af-1a03-39762448d12a",
  "kind": "lemma",
  "lexical_name": "integral_phiHat_sq_abs_PiX_le",
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
  "slug": "integral-phihat-sq-abs-pix-le--6cef056033e07922827e43df",
  "source": {
    "blob": "66a3151faad91392cf595133a0dffa7df549aa1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cef056033e07922827e43df95548d0b0494e79950605aed8b669134c0cdff2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcc21f65-15f1-11af-1a03-39762448d12a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_phiHat_sq_abs_PiX_le (hF : LocalHypsCore cϱ p Fn) {t : ℝ} (ht : 2 ≤ t) :
    ∫ τ, Fn.phiHat (τ - t) ^ 2 * |Zeta23.PiX p.X τ|
      ≤ 6 * Real.sqrt p.X / t * (2 * π * Fn.a * p.L)
        + 12 * Real.sqrt p.X / t ^ 2 * (8 + 2 * (cϱ / p.w) ^ 2) := by
  have htr : (∫ τ, Fn.phiHat (τ - t) ^ 2 * |Zeta23.PiX p.X τ|)
      = ∫ r, Fn.phiHat r ^ 2 * |Zeta23.PiX p.X (t + r)| := by
    rw [← integral_add_right_eq_self (fun τ => Fn.phiHat (τ - t) ^ 2 * |Zeta23.PiX p.X τ|) t]
    congr 1; funext r
    rw [show r + t - t = r by ring, add_comm r t]
  rw [htr]
  have hgi : Integrable (fun r => (6 * Real.sqrt p.X / t) * Fn.phiHat r ^ 2
      + (12 * Real.sqrt p.X / t ^ 2) * (Fn.phiHat r ^ 2 * r ^ 2)) :=
    (hF.phiHat_sq_integrable.const_mul _).add (hF.phiHat_sq_mul_sq_integrable.const_mul _)
  calc ∫ r, Fn.phiHat r ^ 2 * |Zeta23.PiX p.X (t + r)|
      ≤ ∫ r, (6 * Real.sqrt p.X / t) * Fn.phiHat r ^ 2
          + (12 * Real.sqrt p.X / t ^ 2) * (Fn.phiHat r ^ 2 * r ^ 2) := by
        refine integral_mono_of_nonneg (Eventually.of_forall fun r => by positivity) hgi
          (Eventually.of_forall fun r => ?_)
        calc Fn.phiHat r ^ 2 * |Zeta23.PiX p.X (t + r)|
            ≤ Fn.phiHat r ^ 2 * (6 * Real.sqrt p.X / t + 12 * Real.sqrt p.X * r ^ 2 / t ^ 2) := by
              gcongr; exact PiX_shift_bound hF ht r
          _ = _ := by ring
    _ = (6 * Real.sqrt p.X / t) * (2 * π * Fn.a * p.L)
          + (12 * Real.sqrt p.X / t ^ 2) * ∫ r, Fn.phiHat r ^ 2 * r ^ 2 := by
        rw [integral_add (hF.phiHat_sq_integrable.const_mul _)
          (hF.phiHat_sq_mul_sq_integrable.const_mul _), integral_const_mul, integral_const_mul,
          hF.phiHat_sq_integral]
    _ ≤ _ := by
        have ht0 : 0 < t := by linarith
        gcongr
        exact hF.integral_phiHat_sq_mul_sq_le

/-- the Π-part Gram entry is bounded by the same quantity, for τ_k, τ_l ≥ t ≥ 2 (2|ab| ≤ a² + b²). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a3151faad91392cf595133a0dffa7df549aa1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
