# instStarOrderedRingRCLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03308822e7821207ae362720dc3fd1b7f654a227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d439900-7ca4-de64-67d9-06b20f5e6e8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:769280f4-42da-4694-0ac8-a1378779bf4f",
  "kind": "lemma",
  "lexical_name": "instStarOrderedRingRCLike",
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
  "slug": "inststarorderedringrclike--37ee8074036996f6b37e03d2",
  "source": {
    "blob": "03308822e7821207ae362720dc3fd1b7f654a227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ee8074036996f6b37e03d2fb77398057175497b6c75b24c79053637d783969",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769280f4-42da-4694-0ac8-a1378779bf4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma instStarOrderedRingRCLike
    [ContinuousFunctionalCalculus ℝ (H →L[𝕜] H) IsSelfAdjoint] :
    StarOrderedRing (H →L[𝕜] H) where
  le_iff f g := by
    constructor
    · intro h
      rw [le_def] at h
      obtain ⟨p, hp₁, -, hp₃⟩ :=
        CFC.exists_sqrt_of_isSelfAdjoint_of_spectrumRestricts h.1 h.spectrumRestricts
      refine ⟨p ^ 2, ?_, by symm; rwa [add_comm, ← eq_sub_iff_add_eq]⟩
      exact AddSubmonoid.subset_closure ⟨p, by simp only [hp₁.star_eq, sq]⟩
    · rintro ⟨p, hp, rfl⟩
      rw [le_def, add_sub_cancel_left]
      induction hp using AddSubmonoid.closure_induction with
      | mem _ hf =>
        obtain ⟨f, rfl⟩ := hf
        simpa using ContinuousLinearMap.IsPositive.adjoint_conj isPositive_one f
      | one => exact isPositive_zero
      | mul f g _ _ hf hg => exact hf.add hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03308822e7821207ae362720dc3fd1b7f654a227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
