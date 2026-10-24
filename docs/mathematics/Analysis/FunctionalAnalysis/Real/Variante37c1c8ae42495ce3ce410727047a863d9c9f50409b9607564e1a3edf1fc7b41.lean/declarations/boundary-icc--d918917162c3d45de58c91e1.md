# boundary_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c93692ddc6070240ee0cc52338cc9110f980cb7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3d5d965-d2e7-571d-6268-3b6a61683fd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1acb6b31-debd-b6da-30ca-4355622e6b69",
  "kind": "lemma",
  "lexical_name": "boundary_Icc",
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
  "slug": "boundary-icc--d918917162c3d45de58c91e1",
  "source": {
    "blob": "c93692ddc6070240ee0cc52338cc9110f980cb7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 436,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d918917162c3d45de58c91e1fd9d56d6252aab9924b64e1ecb02fe70f5c883d2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1acb6b31-debd-b6da-30ca-4355622e6b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma boundary_Icc : (𝓡∂ 1).boundary (Icc x y) = {⊥, ⊤} := by
  ext p
  rcases Set.eq_endpoints_or_mem_Ioo_of_mem_Icc p.2 with (hp | hp | hp)
  · have : p = ⊥ := SetCoe.ext hp
    rw [this]
    apply iff_of_true Icc_isBoundaryPoint_bot (mem_insert ⊥ {⊤})
  · have : p = ⊤ := SetCoe.ext hp
    rw [this]
    apply iff_of_true Icc_isBoundaryPoint_top (mem_insert_of_mem ⊥ rfl)
  · apply iff_of_false
    · simpa [← mem_compl_iff, ModelWithCorners.compl_boundary] using
        Icc_isInteriorPoint_interior hp
    · rw [mem_insert_iff, mem_singleton_iff]
      push_neg
      constructor <;> by_contra h <;> rw [congrArg Subtype.val h] at hp
      exacts [left_mem_Ioo.mp hp, right_mem_Ioo.mp hp]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {H : Type*} [TopologicalSpace H] (I : ModelWithCorners ℝ E H)
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M]

/-- A product `M × [x,y]` for `M` boundaryless has boundary `M × {x, y}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93692ddc6070240ee0cc52338cc9110f980cb7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
