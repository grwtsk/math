# boundary_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deb682ae-a243-e4cd-aa0f-02a18ab3c97c",
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
  "slug": "boundary-icc--6389374e58cfd2bf5332b42d",
  "source": {
    "blob": "d1cbc4bdec1802b29569caadcc83ed5a12784391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 488,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6389374e58cfd2bf5332b42d1678dcb846fb4c88923fc20cae1948ef4c1fc01e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deb682ae-a243-e4cd-aa0f-02a18ab3c97c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–506.

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
    · simpa [← mem_compl_iff, ModelWithCorners.compl_boundary] using!
        Icc_isInteriorPoint_interior hp
    · rintro (rfl | rfl) <;> simp at hp

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {H : Type*} [TopologicalSpace H] (I : ModelWithCorners ℝ E H)
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M]

/-- A product `M × [x,y]` for `M` boundaryless has boundary `M × {x, y}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1cbc4bdec1802b29569caadcc83ed5a12784391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
