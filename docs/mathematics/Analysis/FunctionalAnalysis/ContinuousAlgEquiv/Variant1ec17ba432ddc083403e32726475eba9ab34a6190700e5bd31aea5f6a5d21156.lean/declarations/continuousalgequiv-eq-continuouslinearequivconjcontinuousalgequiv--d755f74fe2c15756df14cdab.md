# ContinuousAlgEquiv.eq_continuousLinearEquivConjContinuousAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cd99263-05e4-55cc-d17e-d6c21502e1bc",
  "kind": "theorem",
  "lexical_name": "ContinuousAlgEquiv.eq_continuousLinearEquivConjContinuousAlgEquiv",
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
  "slug": "continuousalgequiv-eq-continuouslinearequivconjcontinuousalgequiv--d755f74fe2c15756df14cdab",
  "source": {
    "blob": "9260b859824c0b6c039ba02c62833f0749769222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 47,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d755f74fe2c15756df14cdaba708f7938f6b9239f9aafe8de4d1e2b4024e411c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cd99263-05e4-55cc-d17e-d6c21502e1bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem ContinuousAlgEquiv.eq_continuousLinearEquivConjContinuousAlgEquiv
    (f : (V →L[𝕜] V) ≃A[𝕜] (W →L[𝕜] W)) :
    ∃ U : V ≃L[𝕜] W, f = U.conjContinuousAlgEquiv := by
  /- The proof goes as follows:
    We want to show the existence of a continuous linear equivalence `U : V ≃L[𝕜] W` such that
    `f A (U x) = U (A x)` for all `A : V →L[𝕜] V` and `x : V`.
    Assume nontriviality of `V`, and let `(u : V) ≠ 0`. Let `v` be a strong dual on `V` such that
    `v u ≠ 0` (exists since it has a separating dual).
    Let `z : W` such that `f (smulRight v u) z ≠ 0`.
    Then we construct a bijective continuous linear map `T : V →L[𝕜] W`
    given by `x ↦ f (smulRight v x) z` and so satisfies `T (A x) = f A (T x)` for all
    `A : V →L[𝕜] V` and `x : V`. So it remains to show that this map has a continuous inverse.
    Let `d` be a strong dual on `W` such that `d ((f (smulRight v u)) z) = 1` (exists since it has
    a separating dual).
    We then construct a right-inverse continuous linear map `T' : W →L[𝕜] V` given by
    `x ↦ f.symm (smulRight d x) u`.
    And so it follows that `T` is also a continuous linear equivalence. -/
  by_cases! hV : Subsingleton V
  · by_cases! hV : Subsingleton W
    · exact ⟨{ toLinearEquiv := 0 }, ext <| Subsingleton.allEq _ _⟩
    simpa using congr(f $(Subsingleton.allEq 0 1))
  simp_rw [ContinuousAlgEquiv.ext_iff, funext_iff, conjContinuousAlgEquiv_apply, ← comp_assoc,
    eq_comp_toContinuousLinearMap_symm]
  obtain ⟨u, hu⟩ := exists_ne (0 : V)
  obtain ⟨v, huv⟩ := SeparatingDual.exists_ne_zero (R := 𝕜) hu
  obtain ⟨z, hz⟩ : ∃ z : W, ¬ f (smulRight v u) z = (0 : W →L[𝕜] W) z := by
    simp_rw [← not_forall, ← ContinuousLinearMap.ext_iff, map_eq_zero_iff,
      ContinuousLinearMap.ext_iff, not_forall, smulRight_apply, zero_apply,
      smul_eq_zero_iff_left hu]
    exact ⟨u, huv⟩
  set T := apply' _ (.id 𝕜) z ∘L f.toContinuousAlgHom.toContinuousLinearMap ∘L smulRightL 𝕜 _ _ v
  have hT x : T x = f (smulRight v x) z := rfl
  have this A x : T (A x) = f A (T x) := by
    simp only [hT, ← mul_apply_eq_comp, ← map_mul]
    congr; ext; simp
  have ⟨d, hd⟩ := SeparatingDual.exists_eq_one (R := 𝕜) hz
  have surj : Function.Surjective T := fun w ↦ ⟨f.symm (smulRight d w) u, by simp [T, this, hd]⟩
  have inj : Function.Injective T := fun x y hxy ↦ by
    have h_smul : smulRight v x = smulRight v y := by
      apply f.injective <| ContinuousLinearMap.ext fun z ↦ ?_
      obtain ⟨w, rfl⟩ := surj z
      simp [← this, hxy]
    simpa [huv.isUnit.smul_left_cancel] using congr((fun f ↦ f u) $h_smul)
  set Tₗ : V ≃ₗ[𝕜] W := .ofBijective T.toLinearMap ⟨inj, surj⟩
  set T' := apply' _ (.id 𝕜) u ∘L f.symm.toContinuousAlgHom.toContinuousLinearMap ∘L
    smulRightL 𝕜 _ _ d
  set TL : V ≃L[𝕜] W := { Tₗ with
    continuous_toFun := T.continuous
    continuous_invFun := by
      change Continuous Tₗ.symm.toLinearMap
      suffices T'.toLinearMap = Tₗ.symm from this ▸ T'.continuous
      simp [LinearMap.ext_iff, ← Tₗ.injective.eq_iff, T', this, hT, hd, Tₗ] }
  exact ⟨TL, fun A ↦ (ContinuousLinearMap.ext <| this A).symm⟩

variable (𝕜 V W) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9260b859824c0b6c039ba02c62833f0749769222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
