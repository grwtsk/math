# thetaMoment_quadratic_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14cf1d29-c0bd-a2a4-8977-a095f8c6dc86",
  "kind": "theorem",
  "lexical_name": "thetaMoment_quadratic_nonneg",
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
  "slug": "thetamoment-quadratic-nonneg--7a20271c6634745ecdb2bf34",
  "source": {
    "blob": "fde7d2d557e699b2217bebe895aa8a507401ad67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a20271c6634745ecdb2bf342adc111275bcc64544c0bd4e081a20dcfbc7eedc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14cf1d29-c0bd-a2a4-8977-a095f8c6dc86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaMoment_quadratic_nonneg (n : ℕ) (x : ℝ) :
    0 ≤ thetaMoment n * (x * x) - 2 * thetaMoment (n + 1) * x + thetaMoment (n + 2) := by
  have hi : 0 ≤ ∫ t in Ioi (0 : ℝ),
      thetaPhi t * (2 * t) ^ (2 * n) * ((2 * t) ^ 2 - x) ^ 2 := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have ht0 : 0 ≤ t := ht.le
    exact mul_nonneg (mul_nonneg (thetaPhi_positive t ht0).le
      (pow_nonneg (by positivity : 0 ≤ 2 * t) _))
      (sq_nonneg _)
  have hf : (fun t : ℝ => thetaPhi t * (2 * t) ^ (2 * n) * ((2 * t) ^ 2 - x) ^ 2) =
      fun t => (x * x) * (thetaPhi t * (2 * t) ^ (2 * n)) -
        (2 * x) * (thetaPhi t * (2 * t) ^ (2 * (n + 1))) +
        thetaPhi t * (2 * t) ^ (2 * (n + 2)) := by
    funext t
    simp only [Nat.mul_add, pow_add]
    ring
  have hsub : IntegrableOn (fun t : ℝ =>
      (x * x) * (thetaPhi t * (2 * t) ^ (2 * n)) -
        (2 * x) * (thetaPhi t * (2 * t) ^ (2 * (n + 1)))) (Ioi 0) :=
    ((thetaMoment_integrable n).const_mul (x * x)).sub
      ((thetaMoment_integrable (n + 1)).const_mul (2 * x))
  rw [hf, integral_add hsub (thetaMoment_integrable (n + 2)),
    integral_sub ((thetaMoment_integrable n).const_mul (x * x))
      ((thetaMoment_integrable (n + 1)).const_mul (2 * x)), integral_const_mul,
    integral_const_mul] at hi
  simpa only [thetaMoment, mul_assoc, mul_comm, mul_left_comm] using hi

/-- Log-convexity of the literal moments follows from the quadratic discriminant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde7d2d557e699b2217bebe895aa8a507401ad67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
