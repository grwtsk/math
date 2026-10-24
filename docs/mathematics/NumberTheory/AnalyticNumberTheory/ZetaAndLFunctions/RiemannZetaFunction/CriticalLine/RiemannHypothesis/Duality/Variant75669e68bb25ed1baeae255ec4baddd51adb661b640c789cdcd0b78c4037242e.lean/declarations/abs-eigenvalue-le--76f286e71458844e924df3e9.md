# abs_eigenvalue_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26217c69-88ef-f5a9-7cba-28fedc5c6602",
  "kind": "lemma",
  "lexical_name": "abs_eigenvalue_le",
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
  "slug": "abs-eigenvalue-le--76f286e71458844e924df3e9",
  "source": {
    "blob": "b1244b0db1cf17d49da91d3dc86f5cdd529104db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f286e71458844e924df3e9201648a8ee88e14160ed9e442a99ea56593cf5b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26217c69-88ef-f5a9-7cba-28fedc5c6602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_eigenvalue_le {C : ℝ} (hb : EigenBound C) {freq δ : ι → ℝ} (h : Adm freq δ) (j : ι) :
    |(Mmat_isHermitian freq δ).eigenvalues j| ≤ C := by
  set hM := Mmat_isHermitian freq δ
  set ν : ℝ := hM.eigenvalues j
  set v : ι → ℂ := ⇑(hM.eigenvectorBasis j) with hvdef
  have hv : Mmat freq δ *ᵥ v = ν • v := hM.mulVec_eigenvectorBasis j
  have hunit : ∑ n, ‖v n‖ ^ 2 = 1 := by
    have h1 : ‖hM.eigenvectorBasis j‖ = 1 := hM.eigenvectorBasis.orthonormal.1 j
    rw [← EuclideanSpace.norm_sq_eq, h1, one_pow]
  -- the eigen-relation in `eigen_bound`'s shape, with μ := −ν
  have heig : ∀ m, ∑ n ∈ Finset.univ.erase m,
      ((Real.sqrt (δ m) * Real.sqrt (δ n) / (freq m - freq n) : ℝ) : ℂ) * v n
        = ((-ν : ℝ) : ℂ) * Complex.I * v m := by
    intro m
    have hm := congrFun hv m
    simp only [Matrix.mulVec, dotProduct, Pi.smul_apply, Complex.real_smul] at hm
    -- Σ_s (k m s) I v s = ν v m ; drop the diagonal term (k m m = 0)
    have hsplit : ∑ s, Mmat freq δ m s * v s
        = ∑ s ∈ Finset.univ.erase m, (kfun freq δ m s : ℂ) * Complex.I * v s := by
      rw [← Finset.add_sum_erase _ _ (Finset.mem_univ m)]
      simp [Mmat, kfun]
    rw [hsplit] at hm
    have hk : ∀ s ∈ Finset.univ.erase m, (kfun freq δ m s : ℂ) * Complex.I * v s
        = Complex.I * (((Real.sqrt (δ m) * Real.sqrt (δ s) / (freq m - freq s) : ℝ) : ℂ) * v s) := by
      intro s hs
      have hsm : m ≠ s := fun e => (Finset.mem_erase.mp hs).1 e.symm
      simp only [kfun, if_neg hsm]; ring
    rw [Finset.sum_congr rfl hk, ← Finset.mul_sum] at hm
    -- I * X = ν v_m  ⇒  X = (−ν) I v_m
    have hI : Complex.I ≠ 0 := Complex.I_ne_zero
    calc ∑ n ∈ Finset.univ.erase m,
          ((Real.sqrt (δ m) * Real.sqrt (δ n) / (freq m - freq n) : ℝ) : ℂ) * v n
        = -Complex.I * (Complex.I * ∑ n ∈ Finset.univ.erase m,
            ((Real.sqrt (δ m) * Real.sqrt (δ n) / (freq m - freq n) : ℝ) : ℂ) * v n) := by
          rw [← mul_assoc, neg_mul, Complex.I_mul_I, neg_neg, one_mul]
      _ = -Complex.I * ((ν : ℂ) * v m) := by rw [hm]
      _ = ((-ν : ℝ) : ℂ) * Complex.I * v m := by push_cast; ring
  have := hb ι freq δ h v hunit (-ν) heig
  simpa using this

/-- The Hermitian form of `M` is bounded by `C ‖y‖²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1244b0db1cf17d49da91d3dc86f5cdd529104db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
