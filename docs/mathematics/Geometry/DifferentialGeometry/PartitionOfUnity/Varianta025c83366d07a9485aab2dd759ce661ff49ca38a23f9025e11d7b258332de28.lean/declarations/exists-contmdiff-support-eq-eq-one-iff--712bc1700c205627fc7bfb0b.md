# exists_contMDiff_support_eq_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4568886-cc93-c5a1-9466-497a39469af2",
  "kind": "theorem",
  "lexical_name": "exists_contMDiff_support_eq_eq_one_iff",
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
  "slug": "exists-contmdiff-support-eq-eq-one-iff--712bc1700c205627fc7bfb0b",
  "source": {
    "blob": "8ad678ee53933a200bc5596ae5ba6c8963edf22d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 763,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:712bc1700c205627fc7bfb0bce6581658c076e92e98f0cd567f7f0af67a0f37b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4568886-cc93-c5a1-9466-497a39469af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 763–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_contMDiff_support_eq_eq_one_iff
    {s t : Set M} (hs : IsOpen s) (ht : IsClosed t) (h : t ⊆ s) :
    ∃ f : M → ℝ, CMDiff n f ∧ range f ⊆ Icc 0 1 ∧ support f = s ∧ (∀ x, x ∈ t ↔ f x = 1) := by
  /- Take `f` with support equal to `s`, and `g` with support equal to `tᶜ`. Then `f / (f + g)`
  satisfies the conclusion of the theorem. -/
  rcases hs.exists_contMDiff_support_eq I with ⟨f, f_supp, f_diff, f_pos⟩
  rcases ht.isOpen_compl.exists_contMDiff_support_eq I with ⟨g, g_supp, g_diff, g_pos⟩
  have A : ∀ x, 0 < f x + g x := by
    intro x
    by_cases xs : x ∈ support f
    · have : 0 < f x := lt_of_le_of_ne (f_pos x) (Ne.symm xs)
      linarith [g_pos x]
    · have : 0 < g x := by
        apply lt_of_le_of_ne (g_pos x) (Ne.symm ?_)
        rw [← mem_support, g_supp]
        contrapose xs
        exact h.trans f_supp.symm.subset (by simpa using xs)
      linarith [f_pos x]
  refine ⟨fun x ↦ f x / (f x + g x), ?_, ?_, ?_, ?_⟩
  -- show that `f / (f + g)` is smooth
  · exact f_diff.div₀ (f_diff.add g_diff) (fun x ↦ ne_of_gt (A x))
  -- show that the range is included in `[0, 1]`
  · refine range_subset_iff.2 (fun x ↦ ⟨div_nonneg (f_pos x) (A x).le, ?_⟩)
    apply div_le_one_of_le₀ _ (A x).le
    simpa only [le_add_iff_nonneg_right] using g_pos x
  -- show that the support is `s`
  · have B : support (fun x ↦ f x + g x) = univ := eq_univ_of_forall (fun x ↦ (A x).ne')
    simp only [support_div, f_supp, B, inter_univ]
  -- show that the function equals one exactly on `t`
  · intro x
    simp [div_eq_one_iff_eq (A x).ne', left_eq_add, ← notMem_support, g_supp]

/-- The `ContDiff` counterpart of `exists_contMDiff_support_eq_eq_one_iff` for a
finite-dimensional real normed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean#L763).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ad678ee53933a200bc5596ae5ba6c8963edf22d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
