# exists_forall_abs_repr_le_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:449f5506-5638-7dac-abba-abb48b99bf3c",
  "kind": "lemma",
  "lexical_name": "exists_forall_abs_repr_le_norm",
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
  "slug": "exists-forall-abs-repr-le-norm--4491ea55ed5ed4da69282d7c",
  "source": {
    "blob": "0668c5ce150f470137eccc6cd78653afa800e290",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4491ea55ed5ed4da69282d7cca423f17476fa7e8502175e16d794a54d90b44a2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:449f5506-5638-7dac-abba-abb48b99bf3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_forall_abs_repr_le_norm :
    ∃ (ε : ℝ), 0 < ε ∧ ∀ (x : L), ∀ i, ε * |b.repr x i| ≤ ‖x‖ := by
  wlog H : IsZLattice ℝ L
  · let E' := Submodule.span ℝ (L : Set E)
    let L' : Submodule ℤ E' := ZLattice.comap ℝ L E'.subtype
    have inst : DiscreteTopology L' :=
      comap_discreteTopology _ _ (by fun_prop) Subtype.val_injective
    let e : L' ≃ₗ[ℤ] L := Submodule.comapSubtypeEquivOfLe (p := L) (q := E'.restrictScalars ℤ)
      Submodule.subset_span
    have inst : IsZLattice ℝ L' :=
      ⟨Submodule.map_injective_of_injective E'.subtype_injective (by simp [E', L'])⟩
    obtain ⟨ε, hε, H⟩ := this (b.map e.symm) inst
    exact ⟨ε, hε, fun x i ↦ by simpa using! H ⟨⟨x.1, Submodule.subset_span x.2⟩, x.2⟩ i⟩
  have : Finite ι := Module.Finite.finite_basis b
  let b' : Basis ι ℝ E := Basis.ofZLatticeBasis ℝ L b
  let e := ((b'.repr ≪≫ₗ Finsupp.linearEquivFunOnFinite _ _ _).toContinuousLinearEquiv (𝕜 := ℝ))
  have := e.continuous.1 (Set.univ.pi fun _ ↦ Set.Ioo (-1) 1)
    (isOpen_set_pi Set.finite_univ fun _ _ ↦ isOpen_Ioo)
  obtain ⟨ε, hε, hε'⟩ := Metric.isOpen_iff.mp this 0 (by simp)
  refine ⟨ε / 2, by positivity, fun x i ↦ ?_⟩
  by_cases hx : x = 0
  · simp [hx]
  have hx : ‖x.1‖ ≠ 0 := by simpa
  have : |ε / 2 * (‖↑x‖⁻¹ * (b.repr x) i)| < 1 := by
    simpa [e, b', ← abs_lt] using! @hε' ((ε / 2) • ‖x‖⁻¹ • x)
      (by simpa [norm_smul, inv_mul_cancel₀ hx, abs_eq_self.mpr hε.le]) i trivial
  rw [abs_mul, abs_mul, abs_inv, mul_left_comm, abs_norm, inv_mul_lt_iff₀ (by positivity),
    mul_one, abs_eq_self.mpr (by positivity), ← Int.cast_abs] at this
  exact this.le

/--
Given a basis of a (possibly not full rank) `ℤ`-lattice, there exists a `ε > 0` such that
`|b.repr x i| < n` for all `‖x‖ < n * ε` (i.e. `b.repr x i = O(x)` depending only on `b`).
This is an arbitrary choice of such an `ε`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0668c5ce150f470137eccc6cd78653afa800e290` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
