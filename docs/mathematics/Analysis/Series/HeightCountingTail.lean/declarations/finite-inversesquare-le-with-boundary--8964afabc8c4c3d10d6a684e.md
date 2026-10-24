# finite_inverseSquare_le_with_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f983286-f87a-4029-ea7c-9749f9eca002",
  "kind": "theorem",
  "lexical_name": "finite_inverseSquare_le_with_boundary",
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
  "slug": "finite-inversesquare-le-with-boundary--8964afabc8c4c3d10d6a684e",
  "source": {
    "blob": "1b467d7c96dca5e8412e6e823f898f3734c5d710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 204,
    "path": "GRWTSK/Analysis/Series/HeightCountingTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8964afabc8c4c3d10d6a684ef4cbe6c1367bd7b23242ff4a66168bd3dc790db1",
  "verification": {
    "reference": "docs/verification/Analysis/Series/HeightCountingTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f983286-f87a-4029-ea7c-9749f9eca002`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_inverseSquare_le_with_boundary (S : Finset ι)
    (height weight : ι → ℝ) (T R : ℝ) (hT : 1 ≤ T) (hTR : T ≤ R)
    (hlower : ∀ i ∈ S, T < height i) (hupper : ∀ i ∈ S, height i ≤ R)
    (hcount : ∀ t ∈ Icc T R, finiteCountingMass S height weight t ≤ t * Real.log t) :
    (∑ i ∈ S, weight i / height i ^ 2) ≤
      inverseSquareBudget T - (Real.log R + 2) / R := by
  have hT0 : 0 < T := lt_of_lt_of_le zero_lt_one hT
  have hR0 : 0 < R := hT0.trans_le hTR
  have hcR := hcount R ⟨hTR, le_rfl⟩
  rw [finiteCountingMass_eq_total S height weight R hupper] at hcR
  have hi := intervalIntegral.integral_mono_on hTR
    (countingDensity_intervalIntegrable S height weight hT0 hTR)
    (ContinuousOn.intervalIntegrable_of_Icc (μ := volume) hTR (logDensity_continuousOn hT0))
    (fun t ht => by
      have ht0 : 0 < t := hT0.trans_le ht.1
      calc
        2 * finiteCountingMass S height weight t / t ^ 3 ≤
            2 * (t * Real.log t) / t ^ 3 :=
          div_le_div_of_nonneg_right
            (mul_le_mul_of_nonneg_left (hcount t ht) (by norm_num)) (pow_nonneg ht0.le 3)
        _ = 2 * Real.log t / t ^ 2 := by field_simp [ne_of_gt ht0])
  rw [integral_logDensity hT0 hTR] at hi
  rw [finite_inverseSquare_identity S height weight T R hT0 hTR hlower hupper]
  calc
    _ ≤ (R * Real.log R) / R ^ 2 +
        (inverseSquareBudget T - inverseSquareBudget R) :=
      add_le_add (div_le_div_of_nonneg_right hcR (sq_nonneg R)) hi
    _ = _ := by unfold inverseSquareBudget; field_simp [ne_of_gt hT0, ne_of_gt hR0]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/HeightCountingTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/HeightCountingTail.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b467d7c96dca5e8412e6e823f898f3734c5d710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
