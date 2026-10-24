# bijective_of_isAlgClosed_of_isLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5471cbbc-5f0d-ce10-9fd5-d50bb96f63d7",
  "kind": "theorem",
  "lexical_name": "bijective_of_isAlgClosed_of_isLocalRing",
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
  "slug": "bijective-of-isalgclosed-of-islocalring--afc5fdbb5aaf8f33cac69427",
  "source": {
    "blob": "31ef4a50a74def4f464062a9072a2cabc5afefd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 67,
    "path": "GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afc5fdbb5aaf8f33cac69427f08da526cd83bf4c7d038407039fbffb111f376b",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5471cbbc-5f0d-ce10-9fd5-d50bb96f63d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_of_isAlgClosed_of_isLocalRing
    [IsAlgClosed K] [IsLocalRing A] :
    Function.Bijective (algebraMap K A) := by
  have := finite_of_free (R := K) (S := A)
  have : IsArtinianRing A := isArtinian_of_tower K inferInstance
  have hA : IsNilpotent (IsLocalRing.maximalIdeal A) := by
    rw [← IsLocalRing.jacobson_eq_maximalIdeal ⊥]
    · exact IsArtinianRing.isNilpotent_jacobson_bot
    · exact bot_ne_top
  let e : K ≃ₐ[K] A ⧸ IsLocalRing.maximalIdeal A := {
    __ := Algebra.ofId K (A ⧸ IsLocalRing.maximalIdeal A)
    __ := Equiv.ofBijective _ IsAlgClosed.algebraMap_bijective_of_isIntegral }
  let e' : A ⊗[K] (A ⧸ IsLocalRing.maximalIdeal A) ≃ₐ[A] A :=
    (Algebra.TensorProduct.congr AlgEquiv.refl e.symm).trans (Algebra.TensorProduct.rid K A A)
  let f : A ⧸ IsLocalRing.maximalIdeal A →ₗ[A] A := e'.toLinearMap.comp (sec K A _)
  have hf : (Algebra.ofId _ _).toLinearMap ∘ₗ f = LinearMap.id := by
    dsimp [f]
    rw [← LinearMap.comp_assoc, ← comp_sec K A]
    congr 1
    apply LinearMap.restrictScalars_injective K
    apply _root_.TensorProduct.ext'
    intros r s
    obtain ⟨s, rfl⟩ := e.surjective s
    suffices s • (Ideal.Quotient.mk (IsLocalRing.maximalIdeal A)) r = r • e s by
      simpa [ofId, e']
    simp [Algebra.smul_def, e, ofId, mul_comm]
  have hf₁ : f 1 • (1 : A ⧸ IsLocalRing.maximalIdeal A) = 1 := by
    rw [← algebraMap_eq_smul_one]
    exact LinearMap.congr_fun hf 1
  have hf₂ : 1 - f 1 ∈ IsLocalRing.maximalIdeal A := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_one, ← Ideal.Quotient.algebraMap_eq,
     algebraMap_eq_smul_one, hf₁, sub_self]
  have hf₃ : IsIdempotentElem (1 - f 1) := by
    apply IsIdempotentElem.one_sub
    rw [IsIdempotentElem, ← smul_eq_mul, ← map_smul, hf₁]
  have hf₄ : f 1 = 1 := by
    obtain ⟨n, hn⟩ := hA
    have : (1 - f 1) ^ n = 0 := by
      rw [← Ideal.mem_bot, ← Ideal.zero_eq_bot, ← hn]
      exact Ideal.pow_mem_pow hf₂ n
    rw [eq_comm, ← sub_eq_zero, ← hf₃.pow_succ_eq n, pow_succ, this, zero_mul]
  refine Equiv.bijective ⟨algebraMap K A, ⇑e.symm ∘ ⇑(algebraMap A _), fun x ↦ by simp, fun x ↦ ?_⟩
  have : ⇑(algebraMap K A) = ⇑f ∘ ⇑e := by
    ext k
    conv_rhs => rw [← mul_one k, ← smul_eq_mul, Function.comp_apply, map_smul,
      LinearMap.map_smul_of_tower, map_one, hf₄, ← algebraMap_eq_smul_one]
  rw [this]
  simp only [Function.comp_apply, AlgEquiv.apply_symm_apply, algebraMap_eq_smul_one,
    map_smul, hf₄, smul_eq_mul, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ef4a50a74def4f464062a9072a2cabc5afefd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
