# exactAt_X₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83271b3b9013e6c56d5580a865be8c601c0e7c56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1e8f4bf-827d-e8a2-a732-ceadd4a2f37a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b0ead07-be5f-0d4b-302e-07050a177ade",
  "kind": "lemma",
  "lexical_name": "exactAt_X₁",
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
  "slug": "exactat-x--f81aa09b681dcea2b9dd183f",
  "source": {
    "blob": "83271b3b9013e6c56d5580a865be8c601c0e7c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81aa09b681dcea2b9dd183fac2b208aa9365e432880dd3693c520697d070804",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0ead07-be5f-0d4b-302e-07050a177ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exactAt_X₁ (hS : S.ShortExact) (j : ι)
    (h₁ : Mono (HomologicalComplex.homologyMap S.g j) := by infer_instance)
    (h₂ : ∀ (i : ι), c.Rel i j → Epi (HomologicalComplex.homologyMap S.g i) := by infer_instance) :
    S.X₁.ExactAt j := by
  rw [exactAt_iff_isZero_homology]
  by_cases! hj : ∃ i, c.Rel i j
  · obtain ⟨i, hij⟩ := hj
    have := h₂ i hij
    apply (hS.homology_exact₁ i j hij).isZero_X₂
    · simp [← cancel_epi (HomologicalComplex.homologyMap S.g i)]
    · simp [← cancel_mono (HomologicalComplex.homologyMap S.g j),
        ← HomologicalComplex.homologyMap_comp]
  · have := hS.mono_f
    have := HomologicalComplex.mono_homologyMap_of_mono_of_not_rel S.f j hj
    rw [IsZero.iff_id_eq_zero,
      ← cancel_mono (HomologicalComplex.homologyMap S.f j),
      ← cancel_mono (HomologicalComplex.homologyMap S.g j)]
    simp [← HomologicalComplex.homologyMap_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variante9b97eb9e2f5fa772b9eb9abce67eb0c886f6ba730ca7bfb7c05b885845fbf26.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83271b3b9013e6c56d5580a865be8c601c0e7c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
