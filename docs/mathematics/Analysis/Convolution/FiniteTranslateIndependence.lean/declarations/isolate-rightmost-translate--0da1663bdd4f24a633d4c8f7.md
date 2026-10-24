# isolate_rightmost_translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d28d6cf3-6945-5619-986f-35c0972291df",
  "kind": "theorem",
  "lexical_name": "isolate_rightmost_translate",
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
  "slug": "isolate-rightmost-translate--0da1663bdd4f24a633d4c8f7",
  "source": {
    "blob": "128afcfc7125f3aff8951de1be140c29840663bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 36,
    "path": "GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da1663bdd4f24a633d4c8f7c8ce4764cc729c1861e1562adf2aa3e6f0c89778",
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

Occurrence: `result:d28d6cf3-6945-5619-986f-35c0972291df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isolate_rightmost_translate {ι : Type*} [DecidableEq ι]
    {f : ℝ → ℝ} (bounded : BddAbove (support f)) (nonempty : (support f).Nonempty)
    (s : Finset ι) (shift : ι → ℝ) {n : ι}
    (largest : ∀ j ∈ s, j ≠ n → shift j < shift n) :
    ∃ x : ℝ, f (x - shift n) ≠ 0 ∧ ∀ j ∈ s, j ≠ n → f (x - shift j) = 0 := by
  rcases (s.erase n).eq_empty_or_nonempty with empty | others
  · obtain ⟨y, hy⟩ := nonempty
    refine ⟨y + shift n, ?_, ?_⟩
    · simpa only [add_sub_cancel_right] using (Function.mem_support.mp hy)
    · intro j hj hjn
      have member := Finset.mem_erase.mpr ⟨hjn, hj⟩
      rw [empty] at member
      exact (Finset.notMem_empty j member).elim
  · obtain ⟨m, hm, maximal⟩ := (s.erase n).exists_max_image shift others
    have gap : 0 < shift n - shift m :=
      sub_pos.mpr (largest m (Finset.mem_erase.mp hm).2 (Finset.mem_erase.mp hm).1)
    obtain ⟨y, hy, near⟩ := exists_lt_of_lt_csSup nonempty
      (sub_lt_self (sSup (support f)) gap)
    refine ⟨y + shift n, ?_, ?_⟩
    · simpa only [add_sub_cancel_right] using (Function.mem_support.mp hy)
    · intro j hj hjn
      by_contra nonzero
      have upper := le_csSup bounded
        (show y + shift n - shift j ∈ support f from nonzero)
      have below := maximal j (Finset.mem_erase.mpr ⟨hjn, hj⟩)
      linarith

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
/-- The complete finite sum is nonzero at some point if a coefficient is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/FiniteTranslateIndependence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128afcfc7125f3aff8951de1be140c29840663bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
