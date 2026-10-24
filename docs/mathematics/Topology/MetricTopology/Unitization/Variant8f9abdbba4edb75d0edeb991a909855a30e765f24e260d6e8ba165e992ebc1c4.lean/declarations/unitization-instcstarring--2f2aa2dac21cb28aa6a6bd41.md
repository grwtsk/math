# Unitization.instCStarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5f5ac9e8815e5bbdb87a382a394e7369c344f8dcac21f13beb7ea45d9c51876",
  "kind": "instance",
  "lexical_name": "Unitization.instCStarRing",
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
  "slug": "unitization-instcstarring--2f2aa2dac21cb28aa6a6bd41",
  "source": {
    "blob": "3e1ef0b0d4f8cab720253e7bb40439d2cc6d7663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 131,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f2aa2dac21cb28aa6a6bd41116fe64d8f6d9d40bb2a13bbed5bcbef63323f9b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5f5ac9e8815e5bbdb87a382a394e7369c344f8dcac21f13beb7ea45d9c51876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Unitization.instCStarRing : CStarRing (Unitization 𝕜 E) where
  norm_mul_self_le x := by
    -- rewrite both sides as a `⊔`
    simp only [Unitization.norm_def, Prod.norm_def]
    -- Show that `(Unitization.splitMul 𝕜 E x).snd` satisfies the C⋆-property, in two stages:
    have h₁ : ∀ x : Unitization 𝕜 E,
        ‖(Unitization.splitMul 𝕜 E x).snd‖ ≤ ‖(Unitization.splitMul 𝕜 E (star x)).snd‖ := by
      simp only [Unitization.splitMul_apply, Unitization.snd_star, Unitization.fst_star]
      intro x
      /- split based on whether the term inside the norm is zero or not. If so, it's trivial.
      If not, then apply `norm_splitMul_snd_sq` and cancel one copy of the norm -/
      by_cases h : algebraMap 𝕜 (E →L[𝕜] E) x.fst + mul 𝕜 E x.snd = 0
      · simp only [h, norm_zero]
        exact norm_nonneg _
      · have : ‖(Unitization.splitMul 𝕜 E x).snd‖ ^ 2 ≤
          ‖(Unitization.splitMul 𝕜 E (star x)).snd‖ * ‖(Unitization.splitMul 𝕜 E x).snd‖ :=
          (norm_splitMul_snd_sq 𝕜 x).trans <| by
            rw [map_mul, Prod.snd_mul]
            exact norm_mul_le _ _
        rw [sq] at this
        rw [← Ne, ← norm_pos_iff] at h
        simp only [Unitization.splitMul_apply, Unitization.snd_star,
          Unitization.fst_star] at this
        exact (mul_le_mul_iff_left₀ h).mp this
    -- in this step we make use of the key lemma `norm_splitMul_snd_sq`
    have h₂ : ‖(Unitization.splitMul 𝕜 E (star x * x)).snd‖
        = ‖(Unitization.splitMul 𝕜 E x).snd‖ ^ 2 := by
      refine le_antisymm ?_ (norm_splitMul_snd_sq 𝕜 x)
      rw [map_mul, Prod.snd_mul]
      exact (norm_mul_le _ _).trans <| by
        rw [sq]
        gcongr
        simpa only [star_star] using h₁ (star x)
    -- Show that `(Unitization.splitMul 𝕜 E x).fst` satisfies the C⋆-property
    have h₃ : ‖(Unitization.splitMul 𝕜 E (star x * x)).fst‖
        = ‖(Unitization.splitMul 𝕜 E x).fst‖ ^ 2 := by
      simp only [Unitization.splitMul_apply, Unitization.fst_mul, Unitization.fst_star,
        norm_mul, norm_star, sq]
    rw [h₂, h₃]
    /- use the definition of the norm, and split into cases based on whether the norm in the first
    coordinate is bigger or smaller than the norm in the second coordinate. -/
    by_cases! h : ‖(Unitization.splitMul 𝕜 E x).fst‖ ≤ ‖(Unitization.splitMul 𝕜 E x).snd‖
    · rw [sq, sq, sup_eq_right.mpr h, sup_eq_right.mpr (mul_self_le_mul_self (norm_nonneg _) h)]
    · replace h := h.le
      rw [sq, sq, sup_eq_left.mpr h, sup_eq_left.mpr (mul_self_le_mul_self (norm_nonneg _) h)]

/-- The minimal unitization (over `ℂ`) of a C⋆-algebra, equipped with the C⋆-norm. When `A` is
unital, `A⁺¹ ≃⋆ₐ[ℂ] (ℂ × A)`. -/
scoped[CStarAlgebra] postfix:max "⁺¹" => Unitization ℂ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e1ef0b0d4f8cab720253e7bb40439d2cc6d7663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
