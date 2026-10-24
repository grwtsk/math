# measurable_liftCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b66e9602adfff1ac1f45d9adf1ce804335ebc8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98d22a81-c8d7-33c4-55ff-c86003bd9066",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7b3e661-9d3c-9b82-8fd9-16187644b392",
  "kind": "theorem",
  "lexical_name": "measurable_liftCover",
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
  "slug": "measurable-liftcover--ddfe92af4fb83169ffb01933",
  "source": {
    "blob": "b66e9602adfff1ac1f45d9adf1ce804335ebc8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 534,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddfe92af4fb83169ffb01933e2bf289fe1a022c351ad9a416f9eff31fda6ef47",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b3e661-9d3c-9b82-8fd9-16187644b392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_liftCover [Countable ι] (t : ι → Set α) (htm : ∀ i, MeasurableSet (t i))
    (f : ∀ i, t i → β) (hfm : ∀ i, Measurable (f i))
    (hf : ∀ (i j) (x : α) (hxi : x ∈ t i) (hxj : x ∈ t j), f i ⟨x, hxi⟩ = f j ⟨x, hxj⟩)
    (htU : ⋃ i, t i = univ) :
    Measurable (liftCover t f hf htU) := fun s hs => by
  rw [preimage_liftCover]
  exact .iUnion fun i => .subtype_image (htm i) <| hfm i hs

/-- Let `t i` be a nonempty countable family of measurable sets in `α`. Let `g i : α → β` be a
family of measurable functions such that `g i` agrees with `g j` on `t i ∩ t j`. Then there exists
a measurable function `f : α → β` that agrees with each `g i` on `t i`.

We only need the assumption `[Nonempty ι]` to prove `[Nonempty (α → β)]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b66e9602adfff1ac1f45d9adf1ce804335ebc8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
