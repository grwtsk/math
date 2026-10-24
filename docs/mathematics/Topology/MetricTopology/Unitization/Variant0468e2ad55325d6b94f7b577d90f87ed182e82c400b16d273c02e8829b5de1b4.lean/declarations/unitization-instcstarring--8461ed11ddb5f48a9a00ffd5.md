# Unitization.instCStarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa2a6d332b2d6285d51f2254c19b851b7220fe3ba2b3b303bda51cd864396c4c",
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
  "slug": "unitization-instcstarring--8461ed11ddb5f48a9a00ffd5",
  "source": {
    "blob": "aefc931e2660a095464339597f13791c31bf2009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 135,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8461ed11ddb5f48a9a00ffd54895d579985bed8f8d86b020bd62bfdbee0b2d37",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa2a6d332b2d6285d51f2254c19b851b7220fe3ba2b3b303bda51cd864396c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Unitization.instCStarRing : CStarRing (Unitization 𝕜 E) where
  norm_mul_self_le x := by
    -- rewrite both sides as a `⊔`
    simp only [Unitization.norm_def, Prod.norm_def]
    -- Show that `(Unitization.splitMul 𝕜 E x).snd` satisfies the C⋆-property, in two stages:
    have h₁ : ∀ x : Unitization 𝕜 E,
        ‖(Unitization.splitMul 𝕜 E x).snd‖ ≤ ‖(Unitization.splitMul 𝕜 E (star x)).snd‖ := by
      simp only [add_zero, Unitization.splitMul_apply, Unitization.snd_star, Unitization.fst_star]
      intro x
      /- split based on whether the term inside the norm is zero or not. If so, it's trivial.
      If not, then apply `norm_splitMul_snd_sq` and cancel one copy of the norm -/
      by_cases h : algebraMap 𝕜 (E →L[𝕜] E) x.fst + mul 𝕜 E x.snd = 0
      · simp only [h, norm_zero, norm_le_zero_iff]
        exact norm_nonneg _
      · have : ‖(Unitization.splitMul 𝕜 E x).snd‖ ^ 2 ≤
          ‖(Unitization.splitMul 𝕜 E (star x)).snd‖ * ‖(Unitization.splitMul 𝕜 E x).snd‖ :=
          (norm_splitMul_snd_sq 𝕜 x).trans <| by
            rw [map_mul, Prod.snd_mul]
            exact norm_mul_le _ _
        rw [sq] at this
        rw [← Ne, ← norm_pos_iff] at h
        simp only [add_zero, Unitization.splitMul_apply, Unitization.snd_star,
          Unitization.fst_star, star_star] at this
        exact (mul_le_mul_right h).mp this
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
      simp only [Unitization.splitMul_apply, Unitization.fst_mul, Unitization.fst_star, add_zero,
        norm_mul, norm_star, sq]
    rw [h₂, h₃]
    /- use the definition of the norm, and split into cases based on whether the norm in the first
    coordinate is bigger or smaller than the norm in the second coordinate. -/
    by_cases h : ‖(Unitization.splitMul 𝕜 E x).fst‖ ≤ ‖(Unitization.splitMul 𝕜 E x).snd‖
    · rw [sq, sq, sup_eq_right.mpr h, sup_eq_right.mpr (mul_self_le_mul_self (norm_nonneg _) h)]
    · replace h := (not_le.mp h).le
      rw [sq, sq, sup_eq_left.mpr h, sup_eq_left.mpr (mul_self_le_mul_self (norm_nonneg _) h)]

/-- The minimal unitization (over `ℂ`) of a C⋆-algebra, equipped with the C⋆-norm. When `A` is
unital, `A⁺¹ ≃⋆ₐ[ℂ] (ℂ × A)`. -/
scoped[CStarAlgebra] postfix:max "⁺¹" => Unitization ℂ

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variant0468e2ad55325d6b94f7b577d90f87ed182e82c400b16d273c02e8829b5de1b4.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aefc931e2660a095464339597f13791c31bf2009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
