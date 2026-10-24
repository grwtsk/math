# induction_on_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7685f54d839131e4181dd47acfc3d924f57818fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 713,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3009f63-dbd4-0af7-943a-b5b8d2d3d3b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73bcc5d7-1631-0d60-a368-0b80f55d8998",
  "kind": "theorem",
  "lexical_name": "induction_on_inter",
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
  "slug": "induction-on-inter--3872b7f3ccf9d50b41579b19",
  "source": {
    "blob": "7685f54d839131e4181dd47acfc3d924f57818fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 713,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3872b7f3ccf9d50b41579b19c1e68356d9661ed70f1b292cb9e7a99c26ee6c7a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73bcc5d7-1631-0d60-a368-0b80f55d8998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_inter {m : MeasurableSpace α} {C : ∀ s : Set α, MeasurableSet s → Prop}
    {s : Set (Set α)} (h_eq : m = generateFrom s) (h_inter : IsPiSystem s)
    (empty : C ∅ .empty) (basic : ∀ t (ht : t ∈ s), C t <| h_eq ▸ .basic t ht)
    (compl : ∀ t (htm : MeasurableSet t), C t htm → C tᶜ htm.compl)
    (iUnion : ∀ (f : ℕ → Set α), Pairwise (Disjoint on f) → ∀ (hfm : ∀ i, MeasurableSet (f i)),
      (∀ i, C (f i) (hfm i)) → C (⋃ i, f i) (.iUnion hfm)) :
    ∀ t (ht : MeasurableSet t), C t ht := by
  have eq : MeasurableSet = DynkinSystem.GenerateHas s := by
    rw [h_eq, DynkinSystem.generateFrom_eq h_inter]
    rfl
  suffices ∀ t (ht : DynkinSystem.GenerateHas s t), C t (eq ▸ ht) from
    fun t ht ↦ this t (eq ▸ ht)
  intro t ht
  induction ht with
  | basic u hu => exact basic u hu
  | empty => exact empty
  | @compl u hu ihu => exact compl _ (eq ▸ hu) ihu
  | @iUnion f hfd hf ihf => exact iUnion f hfd (eq ▸ hf) ihf

end MeasurableSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7685f54d839131e4181dd47acfc3d924f57818fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
