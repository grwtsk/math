# TailHyp.Ez_isHermitian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abf8bd8e-182d-ae52-ba55-401e5be8029b",
  "kind": "theorem",
  "lexical_name": "TailHyp.Ez_isHermitian",
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
  "slug": "tailhyp-ez-ishermitian--36d6a09cad9a900dd8b50a76",
  "source": {
    "blob": "aeeed052f300b43537382b09eeef04f0a8dcb49a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 518,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d6a09cad9a900dd8b50a76730818496aabdba658fc6442103a05a62f4d2416",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abf8bd8e-182d-ae52-ba55-401e5be8029b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TailHyp.Ez_isHermitian (H : TailHyp Z P T A₀ C₁)
    (hconj : ∀ z : ℂ, P.phiHat T ((starRingEnd ℂ) z) = (starRingEnd ℂ) (P.phiHat T z)) :
    (Z.Ez P T).IsHermitian := by
  classical
  -- the involution x ↦ 1 − x̄ on the tail subtype
  have hrefl : ∀ x : {ρ : Z.carrier // ρ ∉ H.sA},
      (⟨reflect ((x : Z.carrier) : ℂ), Z.reflect_mem _ (x : Z.carrier).2⟩ : Z.carrier) ∉ H.sA := by
    intro x
    rw [H.not_mem_sA_iff]
    simp only [reflect_im]
    exact (H.not_mem_sA_iff _).mp x.2
  set σ : {ρ : Z.carrier // ρ ∉ H.sA} → {ρ : Z.carrier // ρ ∉ H.sA} :=
    fun x => ⟨⟨reflect ((x : Z.carrier) : ℂ), Z.reflect_mem _ (x : Z.carrier).2⟩, hrefl x⟩ with hσdef
  have hσ : Function.Involutive σ := fun x => by
    apply Subtype.ext; apply Subtype.ext
    simp only [hσdef, reflect_reflect]
  set f : {ρ : Z.carrier // ρ ∉ H.sA} → Matrix (Fin (P.d T)) (Fin (P.d T)) ℂ :=
    fun x => ((Z.mult (x : Z.carrier) : ℝ) : ℂ) •
      vecMulVec (uvec P T (x : Z.carrier)) (uvec P T (x : Z.carrier)) with hfdef
  have hf : HasSum f (Z.Ez P T) := H.hasSum_Ez
  have hfH : HasSum (fun x => (f x)ᴴ) (Z.Ez P T)ᴴ := hf.matrix_conjTranspose
  have hfσ : ∀ x, (f x)ᴴ = f (σ x) := by
    intro x
    ext k l
    have hm : Z.mult (reflect ((x : Z.carrier) : ℂ)) = Z.mult ((x : Z.carrier) : ℂ) :=
      Z.mult_reflect _ (x : Z.carrier).2
    simp only [hfdef, hσdef, conjTranspose_apply, Matrix.smul_apply, vecMulVec_apply,
      smul_eq_mul, star_mul', Complex.star_def, Complex.conj_ofReal, uvec_reflect hconj, hm]
    ring
  have h2 : HasSum (f ∘ (hσ.toPerm σ)) (Z.Ez P T)ᴴ := by
    have : (f ∘ (hσ.toPerm σ)) = fun x => (f x)ᴴ := by
      funext x; simp [Function.comp, hfσ]
    rw [this]; exact hfH
  rw [Equiv.hasSum_iff] at h2
  exact h2.unique hf

/-- Real scalings of a Hermitian matrix are Hermitian (for Ẽ = E/L, Ê = E/(aL²)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeeed052f300b43537382b09eeef04f0a8dcb49a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
