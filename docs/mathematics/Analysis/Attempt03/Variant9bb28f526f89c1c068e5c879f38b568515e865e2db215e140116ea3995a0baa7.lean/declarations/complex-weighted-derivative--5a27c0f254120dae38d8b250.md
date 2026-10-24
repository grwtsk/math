# complex_weighted_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdbda098-62e2-2fb2-74af-bda444eefe01",
  "kind": "theorem",
  "lexical_name": "complex_weighted_derivative",
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
  "slug": "complex-weighted-derivative--5a27c0f254120dae38d8b250",
  "source": {
    "blob": "807e6f33dae5a7b5fa5b90e15d7556e1f86a1903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 44,
    "path": "GRWTSK/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a27c0f254120dae38d8b250fd6837fdab1f3e82f7a116a74975174d37706267",
  "verification": {
    "reference": "docs/verification/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdbda098-62e2-2fb2-74af-bda444eefe01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_weighted_derivative (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (z : ℂ) :
    compactLaplace (deriv f) z = -z * compactLaplace f z := by
  have he : Continuous (fun x : ℝ => Complex.exp (z*(x : ℂ))) := by fun_prop
  have hv : Continuous (fun x : ℝ => (f x : ℂ)) := by fun_prop
  have hvd : Continuous (fun x : ℝ => ((deriv f x : ℝ) : ℂ)) := by fun_prop
  have hi0 := compactLaplace_integrable f hf.continuous hs z
  have hi1 := compactLaplace_integrable (deriv f) hf.continuous_deriv_one hs.deriv z
  have hi0' : Integrable (fun x : ℝ => Complex.exp (z*(x : ℂ))*(f x : ℂ)) :=
    hi0.congr (Eventually.of_forall (fun x => mul_comm _ _))
  have hi1' : Integrable (fun x : ℝ => Complex.exp (z*(x : ℂ))*((deriv f x : ℝ) : ℂ)) :=
    hi1.congr (Eventually.of_forall (fun x => mul_comm _ _))
  have him : Integrable (fun x : ℝ => z*Complex.exp (z*(x : ℂ))*(f x : ℂ)) := by
    simpa only [mul_assoc] using hi0'.const_mul z
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => Complex.exp (z*(x : ℂ)))
    (u' := fun x => z*Complex.exp (z*(x : ℂ)))
    (v := fun x : ℝ => (f x : ℂ)) (v' := fun x => ((deriv f x : ℝ) : ℂ))
    (fun x _ => by
      have hh := (((hasDerivAt_id (x : ℂ)).const_mul z).comp_ofReal).cexp
      simpa only [id_eq,mul_one,mul_comm] using hh)
    (fun x _ => (hf.differentiable (by norm_num) x).hasDerivAt.ofReal_comp)
    hi1' him hi0'
  simp only [mul_assoc] at h
  rw [integral_const_mul] at h
  unfold compactLaplace
  simp_rw [mul_comm (Complex.exp _) (_ : ℂ)] at h
  simpa only [neg_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807e6f33dae5a7b5fa5b90e15d7556e1f86a1903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
