# finite_actual_head_exp_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcf57e88-a3c3-3b9c-41db-01e706b5f07a",
  "kind": "theorem",
  "lexical_name": "finite_actual_head_exp_bound",
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
  "slug": "finite-actual-head-exp-bound--793976c7349d7f66c4b2b2d7",
  "source": {
    "blob": "e091fc9e14c785e722a64e568fbcbb9e8bba9653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative04/Variant83f685e4959c9c2d972100fb7697d4befd5490e40f4ee890f0858fa14a00fdaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:793976c7349d7f66c4b2b2d7a60c9fb8011f1d290c92d30bc0aea8639661f6fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative04/Variant83f685e4959c9c2d972100fb7697d4befd5490e40f4ee890f0858fa14a00fdaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf57e88-a3c3-3b9c-41db-01e706b5f07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_actual_head_exp_bound
    (s : Finset (zetaZeros zetaSeam).carrier) :
    ∃ K d R : ℝ, 0 ≤ K ∧ 0 < d ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
        ∑ rho ∈ s, ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho‖ ≤
        K * Real.exp (-d * A) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    refine ⟨0,1,1,by norm_num,by norm_num,le_rfl,?_⟩
    intro A _hA
    simp only [Finset.sum_empty, mul_zero, norm_zero, zero_mul, le_refl]
  | @insert rho s hnot ih =>
    obtain ⟨K,d,R,hK,hd,hR,hbound⟩ := ih
    have hn : (rho : ℂ) ≠ 1 / 2 := by
      intro h
      exact actual_zeta_half_ne_zero (h ▸ rho.2.1)
    obtain ⟨Kr,Rr,hKr,hRr,hbr⟩ := actualInitialPrimeMellin_scaled_norm_bound rho hn
    let dr : ℝ := 1 - 2 * |(rho : ℂ).re - 1 / 2|
    have hdr : 0 < dr := by
      have hh : |(rho : ℂ).re - 1 / 2| < 1 / 2 :=
        abs_lt.mpr ⟨by linarith [rho.2.2.1],by linarith [rho.2.2.2]⟩
      dsimp [dr]
      linarith
    let mr : ℝ := ((zetaZeros zetaSeam).mult rho : ℝ)
    refine ⟨mr * Kr + K,min dr d,max Rr R,by dsimp [mr]; positivity,
      lt_min hdr hd,hRr.trans (le_max_left _ _),?_⟩
    intro A hA
    have hA1 : 1 ≤ A := hR.trans ((le_max_right _ _).trans hA)
    have he1 : Real.exp (-dr * A) ≤ Real.exp (-(min dr d) * A) := by
      apply Real.exp_le_exp.mpr
      nlinarith [min_le_left dr d]
    have he2 : Real.exp (-d * A) ≤ Real.exp (-(min dr d) * A) := by
      apply Real.exp_le_exp.mpr
      nlinarith [min_le_right dr d]
    rw [sum_insert hnot, mul_add]
    calc
      _ ≤ ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
          (((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)‖ +
          ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
            ∑ r ∈ s, ((zetaZeros zetaSeam).mult r : ℂ) * actualInitialPrimeMellin A r‖ :=
        norm_add_le _ _
      _ ≤ mr * (Kr * Real.exp (-dr * A)) + K * Real.exp (-d * A) := by
        gcongr
        · rw [mul_left_comm, norm_mul, Complex.norm_natCast]
          exact mul_le_mul_of_nonneg_left (hbr A ((le_max_left _ _).trans hA))
            (by positivity)
        · exact hbound A ((le_max_right _ _).trans hA)
      _ ≤ mr * (Kr * Real.exp (-(min dr d) * A)) +
          K * Real.exp (-(min dr d) * A) := by gcongr
      _ = _ := by ring

/-- The entire low actual-zero prefix, including possible zero ordinates,
has a genuine finite common exponential rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative04/Variant83f685e4959c9c2d972100fb7697d4befd5490e40f4ee890f0858fa14a00fdaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative04/Variant83f685e4959c9c2d972100fb7697d4befd5490e40f4ee890f0858fa14a00fdaa.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e091fc9e14c785e722a64e568fbcbb9e8bba9653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
