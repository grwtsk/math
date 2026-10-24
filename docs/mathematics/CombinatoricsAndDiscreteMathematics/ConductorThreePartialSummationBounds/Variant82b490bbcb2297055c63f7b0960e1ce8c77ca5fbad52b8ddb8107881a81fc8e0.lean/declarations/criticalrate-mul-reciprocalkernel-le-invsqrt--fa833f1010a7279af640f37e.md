# criticalRate_mul_reciprocalKernel_le_invSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:629ad0c5-497f-d1f1-0665-5b4e202ead86",
  "kind": "lemma",
  "lexical_name": "criticalRate_mul_reciprocalKernel_le_invSqrt",
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
  "slug": "criticalrate-mul-reciprocalkernel-le-invsqrt--fa833f1010a7279af640f37e",
  "source": {
    "blob": "e44b70837b1679df88b17ad33bcaf52a574b2b81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa833f1010a7279af640f37e7f3a5add5fc3e03894bc31fea7ce43cc9d6d17a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:629ad0c5-497f-d1f1-0665-5b4e202ead86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma criticalRate_mul_reciprocalKernel_le_invSqrt
    {n : ℕ} (hn : 2 ≤ n) :
    twistedPsiCriticalRate n *
        (reciprocalLog n - reciprocalLog (n + 1)) ≤
      (Real.sqrt (n : ℝ))⁻¹ := by
  let a : ℝ := Real.log (n : ℝ)
  let b : ℝ := Real.log ((n + 1 : ℕ) : ℝ)
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have ha : 0 < a := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hb : 0 < b := Real.log_pos (by exact_mod_cast (show 1 < n + 1 by omega))
  have hab : a ≤ b := by
    apply Real.log_le_log
    · positivity
    · exact_mod_cast (Nat.le_succ n)
  have hdelta0 : 0 ≤ b - a := sub_nonneg.2 hab
  have hdelta : b - a ≤ (n : ℝ)⁻¹ := by
    simpa only [a, b] using log_increment_le_inv_nat (show 1 ≤ n by omega)
  have hden : a ^ 2 ≤ a * b := by
    nlinarith
  have hkernel : a⁻¹ - b⁻¹ ≤ (n : ℝ)⁻¹ / (a ^ 2) := by
    rw [inv_sub_inv ha.ne' hb.ne']
    exact div_le_div₀ (inv_nonneg.2 hnpos.le) hdelta
      (sq_pos_of_pos ha) hden
  have hrate0 : 0 ≤ twistedPsiCriticalRate n :=
    twistedPsiCriticalRate_nonneg (show 1 ≤ n by omega)
  calc
    twistedPsiCriticalRate n *
        (reciprocalLog n - reciprocalLog (n + 1)) =
        twistedPsiCriticalRate n * (a⁻¹ - b⁻¹) := by
      rfl
    _ ≤ twistedPsiCriticalRate n * ((n : ℝ)⁻¹ / (a ^ 2)) :=
      mul_le_mul_of_nonneg_left hkernel hrate0
    _ = (Real.sqrt (n : ℝ))⁻¹ := by
      have hsqrtpos : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnpos
      unfold twistedPsiCriticalRate a
      calc
        Real.sqrt (n : ℝ) * Real.log (n : ℝ) ^ 2 *
            ((n : ℝ)⁻¹ / Real.log (n : ℝ) ^ 2) =
            Real.sqrt (n : ℝ) * (n : ℝ)⁻¹ := by
          have hlogne : Real.log (n : ℝ) ≠ 0 := by
            simpa only [a] using ha.ne'
          field_simp [hlogne]
        _ = (Real.sqrt (n : ℝ))⁻¹ := by
          let r : ℝ := Real.sqrt (n : ℝ)
          have hr : 0 < r := by exact hsqrtpos
          have hr2 : r * r = (n : ℝ) := by
            exact Real.mul_self_sqrt hnpos.le
          change r * (n : ℝ)⁻¹ = r⁻¹
          rw [← hr2]
          field_simp [hr.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e44b70837b1679df88b17ad33bcaf52a574b2b81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
