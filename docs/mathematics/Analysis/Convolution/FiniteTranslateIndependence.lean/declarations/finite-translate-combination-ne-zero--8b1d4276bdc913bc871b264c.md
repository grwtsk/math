# finite_translate_combination_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:901ba6eb-6941-db75-4ced-25499bec4b5d",
  "kind": "theorem",
  "lexical_name": "finite_translate_combination_ne_zero",
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
  "slug": "finite-translate-combination-ne-zero--8b1d4276bdc913bc871b264c",
  "source": {
    "blob": "128afcfc7125f3aff8951de1be140c29840663bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 67,
    "path": "GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b1d4276bdc913bc871b264cc8d2d2f82157bdb7eaa0fe34f22dc36429f2d815",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/FiniteTranslateIndependence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:901ba6eb-6941-db75-4ced-25499bec4b5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_translate_combination_ne_zero {ι : Type*} [DecidableEq ι]
    {f : ℝ → ℝ} (bounded : BddAbove (support f)) (nonempty : (support f).Nonempty)
    (s : Finset ι) (shift : ι → ℝ) (distinct : Set.InjOn shift (s : Set ι))
    (w : ι → ℝ) (nonzero : ∃ n ∈ s, w n ≠ 0) :
    ∃ x : ℝ, (∑ n ∈ s, w n * f (x - shift n)) ≠ 0 := by
  classical
  let active := s.filter (fun n ↦ w n ≠ 0)
  have activeNonempty : active.Nonempty := by
    obtain ⟨n, hn, hw⟩ := nonzero
    exact ⟨n, Finset.mem_filter.mpr ⟨hn, hw⟩⟩
  obtain ⟨n, hn, maximal⟩ := active.exists_max_image shift activeNonempty
  have hnSource : n ∈ s := (Finset.mem_filter.mp hn).1
  have hnWeight : w n ≠ 0 := (Finset.mem_filter.mp hn).2
  have largest : ∀ j ∈ active, j ≠ n → shift j < shift n := by
    intro j hj hjn
    apply lt_of_le_of_ne (maximal j hj)
    intro equal
    exact hjn (distinct (Finset.mem_filter.mp hj).1 hnSource equal)
  obtain ⟨x, atN, atOthers⟩ := isolate_rightmost_translate bounded nonempty active shift largest
  refine ⟨x, ?_⟩
  have evaluation : (∑ j ∈ s, w j * f (x - shift j)) = w n * f (x - shift n) := by
    apply Finset.sum_eq_single n
    · intro j hj hjn
      by_cases weightZero : w j = 0
      · rw [weightZero, zero_mul]
      · rw [atOthers j (Finset.mem_filter.mpr ⟨hj, weightZero⟩) hjn, mul_zero]
    · exact fun absent ↦ (absent hnSource).elim
  rw [evaluation]
  exact mul_ne_zero hnWeight atN

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/FiniteTranslateIndependence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128afcfc7125f3aff8951de1be140c29840663bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
