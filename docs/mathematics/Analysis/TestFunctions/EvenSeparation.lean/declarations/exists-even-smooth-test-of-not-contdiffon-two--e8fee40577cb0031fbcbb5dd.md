# exists_even_smooth_test_of_not_contDiffOn_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5469686a-072b-f085-c017-d5231a1e7ff1",
  "kind": "theorem",
  "lexical_name": "exists_even_smooth_test_of_not_contDiffOn_two",
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
  "slug": "exists-even-smooth-test-of-not-contdiffon-two--e8fee40577cb0031fbcbb5dd",
  "source": {
    "blob": "53159b59a2f060d91e5c83a29746931dbceee1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Analysis/TestFunctions/EvenSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8fee40577cb0031fbcbb5dd15c9a0046ce479c034cf826559626ae962d7d862",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/EvenSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5469686a-072b-f085-c017-d5231a1e7ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_even_smooth_test_of_not_contDiffOn_two {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (heven : Function.Even f) (hs : IsOpen s)
    (hneg : ∀ t ∈ s, -t ∈ s) (h : ¬ ContDiffOn ℝ 2 f s) :
    ∃ g : ℝ → ℝ, Function.Even g ∧ HasCompactSupport g ∧ tsupport g ⊆ s ∧
      ContDiff ℝ ∞ g ∧ Integrable (fun t ↦ f t * g t) ∧ 0 < ∫ t, f t * g t := by
  obtain ⟨x, hx, hn⟩ := exists_nonzero_of_not_contDiffOn_two h
  exact exists_even_smooth_test_positive_pairing hf heven hs hneg hx hn

/-- Even smooth tests already determine an even continuous residual pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/EvenSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/EvenSeparation.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53159b59a2f060d91e5c83a29746931dbceee1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
