# of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "984d576665a5a281ef0cd1e61755a2adc0891932",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d2a1ae4-4c25-6fc0-4955-540cba27972d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df563482-dfa7-765f-9342-c9f0386bf4f0",
  "kind": "lemma",
  "lexical_name": "of_isLocalizedModule",
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
  "slug": "of-islocalizedmodule--3c31058f4dc4d8e7e3af2201",
  "source": {
    "blob": "984d576665a5a281ef0cd1e61755a2adc0891932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c31058f4dc4d8e7e3af22014e8ef7e03d34882f6a0450e26c9b1de9700bb8ca",
  "verification": {
    "reference": "docs/verification/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df563482-dfa7-765f-9342-c9f0386bf4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_isLocalizedModule [Module.Finite R M] : Module.Finite Rₚ Mₚ := by
  classical
  obtain ⟨T, hT⟩ := ‹Module.Finite R M›
  use T.image f
  rw [eq_top_iff]
  rintro x -
  obtain ⟨⟨y, m⟩, (hyx : IsLocalizedModule.mk' f y m = x)⟩ :=
    IsLocalizedModule.mk'_surjective S f x
  have hy : y ∈ Submodule.span R T := by rw [hT]; trivial
  have : f y ∈ Submodule.map f (Submodule.span R T) := Submodule.mem_map_of_mem hy
  rw [Submodule.map_span] at this
  have H : Submodule.span R (f '' T) ≤
      (Submodule.span Rₚ (f '' T)).restrictScalars R := by
    rw [Submodule.span_le]; exact Submodule.subset_span
  convert (Submodule.span Rₚ (f '' T)).smul_mem
    (IsLocalization.mk' Rₚ (1 : R) m) (H this) using 0
  · rw [← hyx, ← IsLocalizedModule.mk'_one S, IsLocalizedModule.mk'_smul_mk']
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984d576665a5a281ef0cd1e61755a2adc0891932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
