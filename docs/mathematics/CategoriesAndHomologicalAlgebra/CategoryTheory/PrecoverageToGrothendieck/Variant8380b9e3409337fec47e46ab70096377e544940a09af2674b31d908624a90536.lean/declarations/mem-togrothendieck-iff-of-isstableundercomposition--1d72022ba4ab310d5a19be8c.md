# mem_toGrothendieck_iff_of_isStableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "801321f4438ed7a239b08c9286537093c33a35fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82840ccf-0b49-da9c-840f-994f4cc02750",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a16c4d9-abe0-5be1-d13f-78c0aebab013",
  "kind": "lemma",
  "lexical_name": "mem_toGrothendieck_iff_of_isStableUnderComposition",
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
  "slug": "mem-togrothendieck-iff-of-isstableundercomposition--1d72022ba4ab310d5a19be8c",
  "source": {
    "blob": "801321f4438ed7a239b08c9286537093c33a35fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d72022ba4ab310d5a19be8c6bd5e7956ce0896754724d233683ce19513b5bea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a16c4d9-abe0-5be1-d13f-78c0aebab013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_toGrothendieck_iff_of_isStableUnderComposition [IsStableUnderComposition J]
    [IsStableUnderBaseChange J] [J.HasPullbacks] [HasIsos J] {X : C} {S : Sieve X} :
    S ∈ J.toGrothendieck X ↔ ∃ R ∈ J X, R ≤ S := by
  refine ⟨fun hS ↦ ?_, fun ⟨R, hR, hle⟩ ↦ ?_⟩
  · induction hS with
    | of X R hR =>
      use R, hR
      exact Sieve.le_generate R
    | top X =>
      exact ⟨Presieve.singleton (𝟙 X), mem_coverings_of_isIso (𝟙 X), by simp⟩
    | pullback X S hS Y f h =>
      obtain ⟨R, hR, hle⟩ := h
      have : R.HasPullbacks f := J.hasPullbacks_of_mem f hR
      refine ⟨R.pullbackArrows f, pullbackArrows_mem f hR, ?_⟩
      rw [← Sieve.generate_le_iff, Sieve.pullbackArrows_comm]
      apply Sieve.pullback_monotone
      rwa [Sieve.generate_le_iff]
    | transitive X S T hS hT hleS hleT =>
      obtain ⟨R, hR, hle⟩ := hleS
      rw [mem_iff_exists_zeroHypercover] at hR
      obtain ⟨E, rfl⟩ := hR
      replace hleT (i : E.I₀) : ∃ (F : J.ZeroHypercover (E.X i)),
          F.presieve₀ ≤ (Sieve.pullback (E.f i) T).arrows := by
        obtain ⟨R', hR', hle'⟩ := hleT (hle _ _ ⟨i⟩)
        rw [mem_iff_exists_zeroHypercover] at hR'
        obtain ⟨F, rfl⟩ := hR'
        use F
      choose F hle' using hleT
      refine ⟨(E.bind F).presieve₀, (E.bind F).mem₀, ?_⟩
      rw [Presieve.ofArrows_le_iff]
      intro i
      exact hle' _ _ _ ⟨i.snd⟩
  · rw [← Sieve.generate_le_iff] at hle
    apply GrothendieckTopology.superset_covering _ hle
    exact generate_mem_toGrothendieck hR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801321f4438ed7a239b08c9286537093c33a35fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
