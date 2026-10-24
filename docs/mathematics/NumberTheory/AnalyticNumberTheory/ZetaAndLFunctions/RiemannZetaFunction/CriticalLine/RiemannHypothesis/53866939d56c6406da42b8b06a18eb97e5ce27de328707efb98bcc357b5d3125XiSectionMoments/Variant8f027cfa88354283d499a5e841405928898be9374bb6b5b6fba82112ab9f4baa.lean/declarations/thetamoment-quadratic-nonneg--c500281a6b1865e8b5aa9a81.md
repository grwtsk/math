# thetaMoment_quadratic_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09838b5d-2688-e572-1289-76a30badb073",
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
  "slug": "thetamoment-quadratic-nonneg--c500281a6b1865e8b5aa9a81",
  "source": {
    "blob": "0752982356d57261b597f25eb74a9ea7173b8bce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c500281a6b1865e8b5aa9a814a2fde32e8ba836e1946fb17d46ff03b48a8272a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09838b5d-2688-e572-1289-76a30badb073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaMoment_quadratic_nonneg (n : ℕ) (x : ℝ) :
    0 ≤ thetaMoment n * (x * x) - 2 * thetaMoment (n + 1) * x + thetaMoment (n + 2) := by
  have hi : 0 ≤ ∫ t in Ioi (0 : ℝ),
      thetaPhi t * (2 * t) ^ (2 * n) * ((2 * t) ^ 2 - x) ^ 2 := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have ht0 : 0 ≤ t := ht.le
    exact mul_nonneg (mul_nonneg (thetaPhi_positive t ht0).le (pow_nonneg (by positivity : 0 ≤ 2 * t) _))
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0752982356d57261b597f25eb74a9ea7173b8bce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
