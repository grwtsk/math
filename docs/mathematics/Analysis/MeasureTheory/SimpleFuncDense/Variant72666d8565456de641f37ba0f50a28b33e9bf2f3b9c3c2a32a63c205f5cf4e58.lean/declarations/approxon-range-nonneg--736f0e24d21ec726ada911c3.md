# approxOn_range_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a74cae0b-68c5-e57e-3dd5-f280b7d558cb",
  "kind": "lemma",
  "lexical_name": "approxOn_range_nonneg",
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
  "slug": "approxon-range-nonneg--736f0e24d21ec726ada911c3",
  "source": {
    "blob": "e823c1faf09ab6d45d89ca24eb191729c0604f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:736f0e24d21ec726ada911c3bae9c2f9b68ce3a867dcbdd229ba72a4406ba780",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a74cae0b-68c5-e57e-3dd5-f280b7d558cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma approxOn_range_nonneg [Zero α] [Preorder α] {f : β → α}
    (hf : 0 ≤ f) {hfm : Measurable f} [SeparableSpace (range f ∪ {0} : Set α)] (n : ℕ) :
    0 ≤ approxOn f hfm (range f ∪ {0}) 0 (by simp) n := by
  have : range f ∪ {0} ⊆ Set.Ici 0 := by
    simp only [Set.union_singleton, Set.insert_subset_iff, Set.mem_Ici, le_refl, true_and]
    rintro - ⟨x, rfl⟩
    exact hf x
  exact fun _ ↦ this <| approxOn_mem ..

@[simp, nolint simpNF] -- Porting note: LHS doesn't simplify.
-- It seems the side conditions `hf` and `hg` are not applied by `simpNF`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e823c1faf09ab6d45d89ca24eb191729c0604f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
