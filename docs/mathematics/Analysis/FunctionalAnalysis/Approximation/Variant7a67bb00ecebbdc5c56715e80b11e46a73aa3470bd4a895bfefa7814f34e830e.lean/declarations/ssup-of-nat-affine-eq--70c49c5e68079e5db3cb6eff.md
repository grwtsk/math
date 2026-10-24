# sSup_of_nat_affine_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b1d2675-a220-ecff-13a9-5d85dedd5a8f",
  "kind": "theorem",
  "lexical_name": "sSup_of_nat_affine_eq",
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
  "slug": "ssup-of-nat-affine-eq--70c49c5e68079e5db3cb6eff",
  "source": {
    "blob": "5414e3f1a4c9f4e34cc582880456806a910a2c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 158,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c49c5e68079e5db3cb6efff1f2e6c38abb8f93c395b4d95f4346435ffb1409",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b1d2675-a220-ecff-13a9-5d85dedd5a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_of_nat_affine_eq [HereditarilyLindelofSpace E] (hsc : IsClosed s)
    (hφc : LowerSemicontinuousOn φ s) (hφcv : ConvexOn ℝ s φ) :
    ∃ (l : ℕ → E →L[𝕜] 𝕜) (c : ℕ → ℝ),
      (∀ i, s.domRestrict (re ∘ (l i)) + const s (c i) ≤ s.domRestrict φ) ∧
      ⨆ i, s.domRestrict (re ∘ (l i)) + const s (c i) = s.domRestrict φ := by
  obtain ⟨𝓕', h𝓕'⟩ := hφcv.sSup_of_countable_affine_eq (𝕜 := 𝕜) hsc hφc
  by_cases! he : 𝓕'.Nonempty
  · obtain ⟨f, hf⟩ := h𝓕'.1.exists_eq_range he
    have (i : ℕ) : ∃ (l : E →L[𝕜] 𝕜) (c : ℝ),
        f i = s.domRestrict (re ∘ l) + const s c := by simp_all
    choose l c hlc using this
    refine ⟨l, c, fun i => (hlc i) ▸ (h𝓕'.2.2 (f i) (hf ▸ mem_range_self i)).1, ?_⟩
    calc
    _ = ⨆ i, f i := by congr with i x; exact congrFun (hlc i).symm x
    _ = _ := by rw [← sSup_range, ← hf, h𝓕'.2.1]
  · by_cases! hsφ : s.domRestrict φ = 0
    · have := congrFun hsφ
      refine ⟨fun _ => 0, fun _ => 0, ?_, ?_⟩
      · simp_all [domRestrict_def]
      · ext; simp_all
    · obtain ⟨x, hx⟩ := Function.ne_iff.1 hsφ
      have : s = ∅ := by have := congrFun h𝓕'.2.1 x; simp_all
      grind

/-- A function `φ : E → ℝ` that is convex and lower-semicontinuous is the supremum of a family of
of continuous affine linear functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5414e3f1a4c9f4e34cc582880456806a910a2c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
