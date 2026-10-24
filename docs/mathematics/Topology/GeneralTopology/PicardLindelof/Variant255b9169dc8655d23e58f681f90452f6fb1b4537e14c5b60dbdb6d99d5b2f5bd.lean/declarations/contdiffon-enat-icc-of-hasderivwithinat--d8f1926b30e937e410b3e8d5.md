# contDiffOn_enat_Icc_of_hasDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d742b0f7-2d9b-79fc-4b42-c693329cc9c5",
  "kind": "theorem",
  "lexical_name": "contDiffOn_enat_Icc_of_hasDerivWithinAt",
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
  "slug": "contdiffon-enat-icc-of-hasderivwithinat--d8f1926b30e937e410b3e8d5",
  "source": {
    "blob": "914aafa576d0474f49ba074168c387ae6059e2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8f1926b30e937e410b3e8d51250871c36171eb9c0887ccbd19a12da74e51a80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d742b0f7-2d9b-79fc-4b42-c693329cc9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_enat_Icc_of_hasDerivWithinAt {n : ℕ∞}
    (hf : ContDiffOn ℝ n (uncurry f) ((Icc tmin tmax) ×ˢ u))
    (hα : ∀ t ∈ Icc tmin tmax, HasDerivWithinAt α (f t (α t)) (Icc tmin tmax) t)
    (hmem : MapsTo α (Icc tmin tmax) u) :
    ContDiffOn ℝ n α (Icc tmin tmax) := by
  by_cases hlt : tmin < tmax
  · set t₀ := (tmin + tmax) / 2 with h
    have ht₀ : t₀ ∈ Icc tmin tmax := ⟨by linarith, by linarith⟩
    have : ∀ t ∈ Icc tmin tmax, α t = picard f t₀ (α t₀) α t := by
      intro t ht
      have : uIcc t₀ t ⊆ Icc tmin tmax := uIcc_subset_Icc ht₀ ht
      rw [picard_eq_of_hasDerivAt (hf.continuousOn.mono (prod_subset_prod_left this))
        (fun t' ht' ↦ hα t' (this ht') |>.mono this) (hmem.mono_left this)]
    exact contDiffOn_enat_picard_Icc ht₀ hf (HasDerivWithinAt.continuousOn hα) hmem (α t₀) this
      |>.congr this
  · rw [not_lt, le_iff_lt_or_eq] at hlt
    cases hlt with
    | inl h =>
      intro _ ht
      rw [Icc_eq_empty (not_le.mpr h)] at ht
      exfalso
      exact notMem_empty _ ht
    | inr h =>
      rw [h, Icc_self]
      intro _ ht
      rw [eq_of_mem_singleton ht]
      exact contDiffWithinAt_singleton

end

end ODE

namespace IsPicardLindelof

/-! ## Properties of `IsPicardLindelof` -/

section

variable {E : Type*} [NormedAddCommGroup E]
  {f : ℝ → E → E} {tmin tmax : ℝ} {t₀ : Icc tmin tmax} {x₀ x : E} {a r L K : ℝ≥0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914aafa576d0474f49ba074168c387ae6059e2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
