# finite_translate_combination_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60a33d6c-9196-fe36-62a1-9c638947bda3",
  "kind": "theorem",
  "lexical_name": "finite_translate_combination_eq_zero_iff",
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
  "slug": "finite-translate-combination-eq-zero-iff--2834e507824643ec2817fe1a",
  "source": {
    "blob": "128afcfc7125f3aff8951de1be140c29840663bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 100,
    "path": "GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2834e507824643ec2817fe1a5ea3b873883738ebd18c6086506f7f1dcbd34d6d",
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

Occurrence: `result:60a33d6c-9196-fe36-62a1-9c638947bda3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_translate_combination_eq_zero_iff {ι : Type*} [DecidableEq ι]
    {f : ℝ → ℝ} (bounded : BddAbove (support f)) (nonempty : (support f).Nonempty)
    (s : Finset ι) (shift : ι → ℝ) (distinct : Set.InjOn shift (s : Set ι))
    (w : ι → ℝ) :
    (∀ x : ℝ, (∑ n ∈ s, w n * f (x - shift n)) = 0) ↔ ∀ n ∈ s, w n = 0 := by
  constructor
  · intro zeroSum n hn
    by_contra nonzero
    obtain ⟨x, hx⟩ := finite_translate_combination_ne_zero bounded nonempty s shift distinct
      w ⟨n, hn, nonzero⟩
    exact hx (zeroSum x)
  · intro zeroWeights x
    apply Finset.sum_eq_zero
    intro n hn
    rw [zeroWeights n hn, zero_mul]

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedFintypeInType false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/FiniteTranslateIndependence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128afcfc7125f3aff8951de1be140c29840663bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
