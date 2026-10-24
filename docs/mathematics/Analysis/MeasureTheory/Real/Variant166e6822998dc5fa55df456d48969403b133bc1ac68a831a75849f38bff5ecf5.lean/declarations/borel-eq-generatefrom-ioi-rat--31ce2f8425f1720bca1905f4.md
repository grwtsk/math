# borel_eq_generateFrom_Ioi_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90ba282077f845be50f10e9ed8a57bc301985361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e7196b3-0de8-6889-31f7-c8d2fc6822e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0096026c-34a8-96bd-ee6a-826c0ff2f35a",
  "kind": "theorem",
  "lexical_name": "borel_eq_generateFrom_Ioi_rat",
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
  "slug": "borel-eq-generatefrom-ioi-rat--31ce2f8425f1720bca1905f4",
  "source": {
    "blob": "90ba282077f845be50f10e9ed8a57bc301985361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31ce2f8425f1720bca1905f489a43c36aec7cbbc263177a975a1e9b05810ac42",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0096026c-34a8-96bd-ee6a-826c0ff2f35a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_eq_generateFrom_Ioi_rat : borel ℝ = .generateFrom (⋃ a : ℚ, {Ioi (a : ℝ)}) := by
  rw [borel_eq_generateFrom_Ioi]
  refine le_antisymm
    (generateFrom_le ?_)
    (generateFrom_mono <| iUnion_subset fun q ↦ singleton_subset_iff.mpr <| mem_range_self _)
  rintro _ ⟨a, rfl⟩
  have : IsGLB (range ((↑) : ℚ → ℝ) ∩ Ioi a) a := by
    simp [isGLB_iff_le_iff, mem_lowerBounds, ← le_iff_forall_lt_rat_imp_le]
  rw [← this.biUnion_Ioi_eq, ← image_univ, ← image_inter_preimage, univ_inter, biUnion_image]
  exact MeasurableSet.biUnion (to_countable _)
    fun b _ => GenerateMeasurable.basic (Ioi (b : ℝ)) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90ba282077f845be50f10e9ed8a57bc301985361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
