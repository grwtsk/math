# denselyOrdered_units_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1662abefae9ae2f71c08820aa9bbfa621a9151b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4329e60-3d9a-cc9d-2f9b-4d986fd8473b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73609d67-fb73-f702-9fe6-085735325812",
  "kind": "lemma",
  "lexical_name": "denselyOrdered_units_iff",
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
  "slug": "denselyordered-units-iff--f120daceb6c7a0630ad7dc70",
  "source": {
    "blob": "1662abefae9ae2f71c08820aa9bbfa621a9151b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 255,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f120daceb6c7a0630ad7dc70ac6cf032fb0383812b3e3fa4e7a517d3dfac33b4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73609d67-fb73-f702-9fe6-085735325812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma denselyOrdered_units_iff {G₀ : Type*} [LinearOrderedCommGroupWithZero G₀] [Nontrivial G₀ˣ] :
    DenselyOrdered G₀ˣ ↔ DenselyOrdered G₀ := by
  constructor
  · intro H
    refine ⟨fun x y h ↦ ?_⟩
    rcases (zero_le' (a := x)).eq_or_lt with rfl|hx
    · lift y to G₀ˣ using h.ne'.isUnit
      obtain ⟨z, hz⟩ := exists_ne (1 : G₀ˣ)
      refine ⟨(y * |z|ₘ⁻¹ : G₀ˣ), ?_, ?_⟩
      · simp [zero_lt_iff]
      · rw [Units.val_lt_val]
        simp [hz]
    · obtain ⟨z, hz, hz'⟩ := H.dense (Units.mk0 x hx.ne') (Units.mk0 y (hx.trans h).ne')
        (by simp [← Units.val_lt_val, h])
      refine ⟨z, ?_, ?_⟩ <;>
      simpa [← Units.val_lt_val]
  · intro H
    refine ⟨fun x y h ↦ ?_⟩
    obtain ⟨z, hz⟩ := exists_between (Units.val_lt_val.mpr h)
    rcases (zero_le' (a := z)).eq_or_lt with rfl|hz'
    · simp at hz
    refine ⟨Units.mk0 z hz'.ne', ?_⟩
    simp [← Units.val_lt_val, hz]

/-- Any nontrivial (has other than 0 and 1) linearly ordered mul-archimedean group with zero is
either isomorphic (and order-isomorphic) to `ℤₘ₀`, or is densely ordered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1662abefae9ae2f71c08820aa9bbfa621a9151b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
