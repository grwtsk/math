# suffix_iff_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12143e27334cd4a830fa22f4e8cabba5276fcec2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59565bc9-1f23-3dc9-c0cf-8d71bd95234d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:251b4816-48ce-e8b2-f17c-12dab4ee1e12",
  "kind": "theorem",
  "lexical_name": "suffix_iff_getElem",
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
  "slug": "suffix-iff-getelem--e9505f351bf52a93cff20254",
  "source": {
    "blob": "12143e27334cd4a830fa22f4e8cabba5276fcec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9505f351bf52a93cff202549294ad6d77d6f36b1eac8e91796a8359d79f7df6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:251b4816-48ce-e8b2-f17c-12dab4ee1e12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem suffix_iff_getElem {l₁ l₂ : List α} :
    l₁ <:+ l₂ ↔ ∃ (_ : l₁.length ≤ l₂.length), ∀ i (_ : i < l₁.length), l₂[i + l₂.length - l₁.length] = l₁[i] := by
  rw [suffix_iff_getElem?]
  constructor
  · rintro ⟨h, w⟩
    refine ⟨h, fun i h => ?_⟩
    specialize w i h
    rw [getElem?_eq_getElem] at w
    simpa using w
  · rintro ⟨h, w⟩
    refine ⟨h, fun i h => ?_⟩
    specialize w i h
    rw [getElem?_eq_getElem]
    simpa using w

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12143e27334cd4a830fa22f4e8cabba5276fcec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
