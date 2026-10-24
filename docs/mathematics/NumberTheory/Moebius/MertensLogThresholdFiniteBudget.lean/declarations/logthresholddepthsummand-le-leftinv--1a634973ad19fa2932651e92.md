# logThresholdDepthSummand_le_leftInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a40890c9-3f81-5389-5f69-0c020dfddc18",
  "kind": "theorem",
  "lexical_name": "logThresholdDepthSummand_le_leftInv",
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
  "slug": "logthresholddepthsummand-le-leftinv--1a634973ad19fa2932651e92",
  "source": {
    "blob": "8dd49852446770e2731935079a54b83da61b1f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a634973ad19fa2932651e92d6ddd0ac92eb93d5d2623ee3789dc336cdbc4a91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a40890c9-3f81-5389-5f69-0c020dfddc18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logThresholdDepthSummand_le_leftInv
    (j t : ℕ) :
    (t + 1 : ℝ) *
      ((harmonicInitialDenominator j t : ℝ)⁻¹ -
        ((harmonicInitialDenominator j t + 1 : ℕ) : ℝ)⁻¹) ≤
      ((2 ^ j : ℕ) : ℝ)⁻¹ := by
  let X : ℕ := 2 ^ j
  let M : ℕ := harmonicInitialDenominator j t
  have hX : 1 ≤ X := by
    exact one_le_pow₀ (by norm_num : (1 : ℕ) ≤ 2)
  have hXM : X ≤ M := by
    dsimp [M, harmonicInitialDenominator, X]
    exact le_max_left _ _
  have htM : t + 1 ≤ M := by
    dsimp [M, harmonicInitialDenominator]
    have htm : t + 1 ≤ t + 2 := by omega
    exact le_trans htm (le_max_right _ _)
  have hXR : (0 : ℝ) < X := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hX)
  have hMR : (0 : ℝ) < M := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one (le_trans hX hXM))
  have hM1R : (0 : ℝ) < M + 1 := by positivity
  change (t + 1 : ℝ) *
      ((M : ℝ)⁻¹ - ((M + 1 : ℕ) : ℝ)⁻¹) ≤
    (X : ℝ)⁻¹
  have hdiff :
      (M : ℝ)⁻¹ - ((M + 1 : ℕ) : ℝ)⁻¹ =
        1 / ((M : ℝ) * (M + 1 : ℝ)) := by
    push_cast
    field_simp [ne_of_gt hMR, ne_of_gt hM1R]; ring
  rw [hdiff]
  have htMR : (t + 1 : ℝ) ≤ M := by exact_mod_cast htM
  have hXM_R : (X : ℝ) ≤ M := by exact_mod_cast hXM
  have hden :
      0 < (M : ℝ) * (M + 1 : ℝ) := mul_pos hMR hM1R
  have hstep :
      (t + 1 : ℝ) / ((M : ℝ) * (M + 1 : ℝ))
        ≤ 1 / (M : ℝ) := by
    apply (div_le_div_iff₀ hden hMR).mpr
    nlinarith
  have hinv : 1 / (M : ℝ) ≤ 1 / (X : ℝ) := by
    exact one_div_le_one_div_of_le hXR hXM_R
  simpa [div_eq_mul_inv] using le_trans hstep hinv

/-- The pure reciprocal-depth sum is at most two, strengthening the parent
budget constant three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd49852446770e2731935079a54b83da61b1f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
