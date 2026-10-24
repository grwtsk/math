# span_range_inclusionSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35189106b641ace4ccf0894c8d714e0be8c0fc1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63b36707-7370-e314-b5ae-b4740c21bef3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:714d7a23-f901-290c-5c0f-1ecb51af74d9",
  "kind": "lemma",
  "lexical_name": "span_range_inclusionSpan",
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
  "slug": "span-range-inclusionspan--8bebbdd17a2251b109479e89",
  "source": {
    "blob": "35189106b641ace4ccf0894c8d714e0be8c0fc1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 174,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bebbdd17a2251b109479e89a2f20ad2113b041f73b9a5c836f7455774d07e39",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:714d7a23-f901-290c-5c0f-1ecb51af74d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_range_inclusionSpan :
    span S (range <| p.inclusionSpan S) = ⊤ := by
  have : (span S (p : Set M)).subtype '' range (inclusionSpan S p) = p := by
    ext; simpa [Subtype.ext_iff] using fun h ↦ subset_span h
  apply map_injective_of_injective (span S (p : Set M)).injective_subtype
  rw [map_subtype_top, map_span, this]

variable (R s)

/-- If `R` is "smaller" ring than `S` then the span by `R` is smaller than the span by `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35189106b641ace4ccf0894c8d714e0be8c0fc1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
