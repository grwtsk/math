# card_le_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0197b2b7a73a995f3134089ad2ba90019101e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba066562-803d-bb54-ee7a-4a242fd586e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd015432-fd37-6aeb-c348-06c7fcab67fd",
  "kind": "theorem",
  "lexical_name": "card_le_multiplicity",
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
  "slug": "card-le-multiplicity--b194e28b567bb3139e8fd233",
  "source": {
    "blob": "e0197b2b7a73a995f3134089ad2ba90019101e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 157,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b194e28b567bb3139e8fd2339e694698afc2c7fa41f62f956f2afa52a2ae925d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd015432-fd37-6aeb-c348-06c7fcab67fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_multiplicity {s : Finset E} (hs : ∀ c ∈ s, ‖c‖ ≤ 2)
    (h's : ∀ c ∈ s, ∀ d ∈ s, c ≠ d → 1 ≤ ‖c - d‖) : s.card ≤ multiplicity E := by
  apply le_csSup
  · refine ⟨5 ^ finrank ℝ E, ?_⟩
    rintro _ ⟨s, ⟨rfl, h⟩⟩
    exact Besicovitch.card_le_of_separated s h.1 h.2
  · simp only [mem_ofPred_eq, Ne]
    exact ⟨s, rfl, hs, h's⟩

variable (E)

/-- If `δ` is small enough, a `(1-δ)`-separated set in the ball of radius `2` also has cardinality
at most `multiplicity E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0197b2b7a73a995f3134089ad2ba90019101e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
