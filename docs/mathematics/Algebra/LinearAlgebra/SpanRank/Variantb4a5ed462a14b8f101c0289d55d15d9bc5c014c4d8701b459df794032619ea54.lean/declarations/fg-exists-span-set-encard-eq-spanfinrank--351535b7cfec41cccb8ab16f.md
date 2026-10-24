# FG.exists_span_set_encard_eq_spanFinrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb07ac4fb66ffb8bfacde11cbb084377f79d9d26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4a5ed462a14b8f101c0289d55d15d9bc5c014c4d8701b459df794032619ea54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a73368e-b10a-00d6-1c0f-ad267b63c0c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a91769e7-1c93-489c-5f90-1e1ab33addd5",
  "kind": "theorem",
  "lexical_name": "FG.exists_span_set_encard_eq_spanFinrank",
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
  "slug": "fg-exists-span-set-encard-eq-spanfinrank--351535b7cfec41cccb8ab16f",
  "source": {
    "blob": "fb07ac4fb66ffb8bfacde11cbb084377f79d9d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 183,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantb4a5ed462a14b8f101c0289d55d15d9bc5c014c4d8701b459df794032619ea54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:351535b7cfec41cccb8ab16fadca2b736067297c2d552206eb571654d5332ace",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpanRank/Variantb4a5ed462a14b8f101c0289d55d15d9bc5c014c4d8701b459df794032619ea54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a91769e7-1c93-489c-5f90-1e1ab33addd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FG.exists_span_set_encard_eq_spanFinrank {p : Submodule R M} (h : p.FG) :
    ∃ s : Set M, s.encard = p.spanFinrank ∧ span R s = p := by
  obtain ⟨s, ⟨hs₁, hs₂⟩⟩ := exists_span_set_card_eq_spanRank p
  refine ⟨s, ⟨?_, hs₂⟩⟩
  have := fg_iff_spanRank_eq_spanFinrank.mpr h
  rw [Set.encard, ENat.card, spanFinrank, hs₁, this]
  simp

/-- Constructs a generating finset with cardinality equal to the `spanFinrank` of the submodule
  when the submodule is finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpanRank/Variantb4a5ed462a14b8f101c0289d55d15d9bc5c014c4d8701b459df794032619ea54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantb4a5ed462a14b8f101c0289d55d15d9bc5c014c4d8701b459df794032619ea54.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb07ac4fb66ffb8bfacde11cbb084377f79d9d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
