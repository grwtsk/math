# tendsto_density_atTop_ae_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dded1aa-7094-7e02-1024-4c9c8a6e312c",
  "kind": "lemma",
  "lexical_name": "tendsto_density_atTop_ae_of_antitone",
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
  "slug": "tendsto-density-attop-ae-of-antitone--b107abd8703a70f6e409a816",
  "source": {
    "blob": "2a49ff4eda35f74082be3ce99933db8f3ab08f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 629,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b107abd8703a70f6e409a816dace7950d7a5c99676cb325b1015fe18d07749ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dded1aa-7094-7e02-1024-4c9c8a6e312c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_density_atTop_ae_of_antitone (hκν : fst κ ≤ ν) [IsFiniteKernel ν] (a : α)
    (seq : ℕ → Set β) (hseq : Antitone seq) (hseq_iInter : ⋂ i, seq i = ∅)
    (hseq_meas : ∀ m, MeasurableSet (seq m)) :
    ∀ᵐ x ∂(ν a), Tendsto (fun m ↦ density κ ν a x (seq m)) atTop (𝓝 0) := by
  refine tendsto_of_integral_tendsto_of_antitone ?_ (integrable_const _) ?_ ?_ ?_
  · exact fun m ↦ integrable_density hκν _ (hseq_meas m)
  · rw [integral_zero]
    exact tendsto_integral_density_of_antitone hκν a seq hseq hseq_iInter hseq_meas
  · exact ae_of_all _ (fun c n m hnm ↦ density_mono_set hκν a c (hseq hnm))
  · exact ae_of_all _ (fun x m ↦ density_nonneg hκν a x (seq m))

section UnivFst

/-! We specialize to `ν = fst κ`, for which `density κ (fst κ) a t univ = 1` almost everywhere. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a49ff4eda35f74082be3ce99933db8f3ab08f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
