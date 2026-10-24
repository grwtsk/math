# finite_source_gram_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ad4633e-c688-ffd0-c351-0a3277e7e1a8",
  "kind": "theorem",
  "lexical_name": "finite_source_gram_positive",
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
  "slug": "finite-source-gram-positive--ef5d127d79259cb3300175cf",
  "source": {
    "blob": "dd196b2be4eac37f447b64e3189f94eefd7504d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef5d127d79259cb3300175cfefa11e8f2c7ce52119c6a1b416022a37838e029f",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ad4633e-c688-ffd0-c351-0a3277e7e1a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_source_gram_positive {ι : Type*} [DecidableEq ι]
    {A : ℝ} (hA : 0 < A) (s : Finset ι) (label : ι → ℕ)
    (positive : ∀ n ∈ s, 0 < label n) (distinct : Set.InjOn label (s : Set ι))
    (w : ι → ℝ) (nonzero : ∃ n ∈ s, w n ≠ 0) :
    0 < ∑ m ∈ s, ∑ n ∈ s, (w m * w n) * SourceGram.sourceGram A (label m) (label n) := by
  obtain ⟨x, atX⟩ := finite_source_combination_ne_zero hA s label positive distinct w nonzero
  have continuousSum : Continuous
      (fun y : ℝ ↦ ∑ n ∈ s, w n * SourceGram.sourceVector A (label n) y) := by
    apply continuous_finsetSum
    intro n _
    exact continuous_const.mul ((SourceNormalization.normalized_source_continuous A).comp
      (continuous_id.sub continuous_const))
  rw [← SourceGram.finite_source_energy_eq_gram hA s label w positive]
  exact integral_pos_of_integrable_nonneg_nonzero (x := x)
    (continuousSum.pow 2) (SourceGram.finite_weighted_source_square_integrable hA s label w)
    (fun _ ↦ sq_nonneg _) (pow_ne_zero 2 atX)

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedFintypeInType false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd196b2be4eac37f447b64e3189f94eefd7504d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
