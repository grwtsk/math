# ae_eq_zero_of_forall_setIntegral_isCompact_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0735ce-14d5-6fbc-2b49-8bb49cd8ef18",
  "kind": "lemma",
  "lexical_name": "ae_eq_zero_of_forall_setIntegral_isCompact_eq_zero",
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
  "slug": "ae-eq-zero-of-forall-setintegral-iscompact-eq-zero--8444876a305589c2ec422092",
  "source": {
    "blob": "352a809775bab07bec7285bf6aa5d2ba94917432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 408,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8444876a305589c2ec422092d8ed00997f6bad714288733110f909cb9731cb7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0735ce-14d5-6fbc-2b49-8bb49cd8ef18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_eq_zero_of_forall_setIntegral_isCompact_eq_zero
    [SigmaCompactSpace β] [R1Space β] {μ : Measure β} {f : β → E} (hf : Integrable f μ)
    (h'f : ∀ (s : Set β), IsCompact s → ∫ x in s, f x ∂μ = 0) :
    f =ᵐ[μ] 0 := by
  apply ae_eq_zero_of_forall_setIntegral_isClosed_eq_zero hf (fun s hs ↦ ?_)
  let t : ℕ → Set β := fun n ↦ closure (compactCovering β n) ∩ s
  suffices H : Tendsto (fun n ↦ ∫ x in t n, f x ∂μ) atTop (𝓝 (∫ x in s, f x ∂μ)) by
    have A : ∀ n, ∫ x in t n, f x ∂μ = 0 :=
      fun n ↦ h'f _ ((isCompact_compactCovering β n).closure.inter_right hs)
    simp_rw [A, tendsto_const_nhds_iff] at H
    exact H.symm
  have B : s = ⋃ n, t n := by
    rw [← Set.iUnion_inter, iUnion_closure_compactCovering, Set.univ_inter]
  rw [B]
  apply tendsto_setIntegral_of_monotone
  · intros n
    exact (isClosed_closure.inter hs).measurableSet
  · intros m n hmn
    simp only [t, Set.le_iff_subset]
    gcongr
  · exact hf.integrableOn

/-- If a locally integrable function has zero integral on all compact sets in a sigma-compact space,
then it is zero almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `352a809775bab07bec7285bf6aa5d2ba94917432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
