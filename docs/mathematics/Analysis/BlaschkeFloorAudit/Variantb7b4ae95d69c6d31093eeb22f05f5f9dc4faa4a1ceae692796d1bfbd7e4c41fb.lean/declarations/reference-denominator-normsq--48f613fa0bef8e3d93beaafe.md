# reference_denominator_normSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dde43ea112cb009333ff666b8b0b7095df81135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1d9c8e0-7b19-65d2-7c63-39b67df935a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:110ee5d1-ac5e-4914-d346-35d54ce60af8",
  "kind": "theorem",
  "lexical_name": "reference_denominator_normSq",
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
  "slug": "reference-denominator-normsq--48f613fa0bef8e3d93beaafe",
  "source": {
    "blob": "3dde43ea112cb009333ff666b8b0b7095df81135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48f613fa0bef8e3d93beaafe0f101acb6bcdc1fd70ae76758c8c12834abb0234",
  "verification": {
    "reference": "docs/verification/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:110ee5d1-ac5e-4914-d346-35d54ce60af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_denominator_normSq (z : ℂ) :
    Complex.normSq (1 + starRingEnd ℂ z) = Complex.normSq (1 + z) := by
  simp only [Complex.normSq_apply, Complex.add_re, Complex.one_re,
    Complex.conj_re, Complex.add_im, Complex.one_im, Complex.conj_im]
  ring

/-- The exact one-zero deficit, with the Hardy reference-vector factor one half retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dde43ea112cb009333ff666b8b0b7095df81135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
