# homogeneous_operator_pairing_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20e46dbe-33e2-8423-66dc-d374afac133d",
  "kind": "theorem",
  "lexical_name": "homogeneous_operator_pairing_zero",
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
  "slug": "homogeneous-operator-pairing-zero--9c2554983d2a7c9d4cf6824b",
  "source": {
    "blob": "bd7633315a1a8419c1700f24edb1011b30b80e2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c2554983d2a7c9d4cf6824b408d09f48a13ecdf65cda9dd00e6a1b56d5b16e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20e46dbe-33e2-8423-66dc-d374afac133d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneous_operator_pairing_zero (g f : ℝ → ℝ)
    (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f)
    (hzero : ∀ t, poleSquaredDifferentialOperator g t = 0) :
    (∫ t, g t * poleSquaredDifferentialOperator f t) = 0 := by
  obtain ⟨B, hB, hbound⟩ := hcf.isCompact.isBounded.exists_pos_norm_lt
  have hz (k : ℕ) (t : ℝ) (ht : B ≤ |t|) : iteratedDeriv k f t = 0 := by
    apply iterated_deriv_eq_zero_of_not_mem_tsupport
    intro hm
    have hb := hbound t hm
    rw [Real.norm_eq_abs] at hb
    linarith
  have hleft : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f (-B) = 0 := by
    intro k _
    apply hz k (-B)
    rw [abs_neg, abs_of_pos hB]
  have hright : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f B = 0 := by
    intro k _
    apply hz k B
    rw [abs_of_pos hB]
  have hsupport (t : ℝ) (ht : t ∉ Icc (-B) B) :
      g t * poleSquaredDifferentialOperator f t = 0 := by
    have ha : B ≤ |t| := by
      by_contra h
      exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
    have hn : t ∉ tsupport f := by
      intro hm
      have hb := hbound t hm
      rw [Real.norm_eq_abs] at hb
      linarith
    rw [pole_squared_operator_eq_zero_of_not_mem_tsupport f t hn, mul_zero]
  calc
    _ = ∫ t, (Icc (-B) B).indicator
        (fun t ↦ g t * poleSquaredDifferentialOperator f t) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      by_cases ht : t ∈ Icc (-B) B
      · rw [indicator_of_mem ht]
      · rw [indicator_of_notMem ht, hsupport t ht]
    _ = ∫ t in -B..B, g t * poleSquaredDifferentialOperator f t :=
      zeroExtension_integral _ (-B) B (by linarith)
    _ = 0 := by
      rw [homogeneous_branch_green_identity g f hg hf hzero,
        boundary_flux_eq_zero_of_jets g f B hright,
        boundary_flux_eq_zero_of_jets g f (-B) hleft, sub_self]

/-- Adding any C⁴ homogeneous solution to the actual inverse preserves its weak arithmetic value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd7633315a1a8419c1700f24edb1011b30b80e2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
