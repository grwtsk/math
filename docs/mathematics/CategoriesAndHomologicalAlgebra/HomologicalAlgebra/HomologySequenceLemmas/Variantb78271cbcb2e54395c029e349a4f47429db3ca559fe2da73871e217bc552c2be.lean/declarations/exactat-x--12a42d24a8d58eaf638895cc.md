# exactAt_X₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c315e7b9-19b0-0195-c8d6-cac87893498f",
  "kind": "lemma",
  "lexical_name": "exactAt_X₃",
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
  "slug": "exactat-x--12a42d24a8d58eaf638895cc",
  "source": {
    "blob": "f657f41a1344af3edfada6da46b92a671c5c1ff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a42d24a8d58eaf638895cc34bbb2588725d2763cf70c6a48c421bbf905890e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c315e7b9-19b0-0195-c8d6-cac87893498f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exactAt_X₃ (hS : S.ShortExact) (i : ι)
    (h₁ : Epi (HomologicalComplex.homologyMap S.f i) := by infer_instance)
    (h₂ : ∀ (j : ι), c.Rel i j → Mono (HomologicalComplex.homologyMap S.f j) := by infer_instance) :
    S.X₃.ExactAt i := by
  rw [exactAt_iff_isZero_homology]
  by_cases! hi : ∃ j, c.Rel i j
  · obtain ⟨j, hij⟩ := hi
    have := h₂ j hij
    apply (hS.homology_exact₃ i j hij).isZero_X₂
    · simp [← cancel_epi (HomologicalComplex.homologyMap S.f i),
        ← HomologicalComplex.homologyMap_comp]
    · simp [← cancel_mono (HomologicalComplex.homologyMap S.f j)]
  · have := hS.epi_g
    have := HomologicalComplex.epi_homologyMap_of_epi_of_not_rel S.g i hi
    rw [IsZero.iff_id_eq_zero,
      ← cancel_epi (HomologicalComplex.homologyMap S.g i),
      ← cancel_epi (HomologicalComplex.homologyMap S.f i)]
    simp [← HomologicalComplex.homologyMap_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variantb78271cbcb2e54395c029e349a4f47429db3ca559fe2da73871e217bc552c2be.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f657f41a1344af3edfada6da46b92a671c5c1ff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
