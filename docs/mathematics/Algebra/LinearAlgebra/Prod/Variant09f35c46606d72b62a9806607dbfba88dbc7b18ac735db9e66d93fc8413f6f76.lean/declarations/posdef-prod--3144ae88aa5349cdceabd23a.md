# PosDef.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad1367a755eb1b0ff9309a7a521f5d3ebc204d8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68e5a20f-30e9-f367-faa6-2c8ffaa3b09d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b417bd7-02d3-70f7-8a8f-38e52b44679b",
  "kind": "theorem",
  "lexical_name": "PosDef.prod",
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
  "slug": "posdef-prod--3144ae88aa5349cdceabd23a",
  "source": {
    "blob": "ad1367a755eb1b0ff9309a7a521f5d3ebc204d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3144ae88aa5349cdceabd23a04b17d9af60e9af82bdcf034a2f2efa927ca6919",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b417bd7-02d3-70f7-8a8f-38e52b44679b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PosDef.prod {R} [OrderedRing R] [Module R M₁] [Module R M₂] {Q₁ : QuadraticForm R M₁}
    {Q₂ : QuadraticForm R M₂} (h₁ : Q₁.PosDef) (h₂ : Q₂.PosDef) : (Q₁.prod Q₂).PosDef :=
  posDef_prod_iff.mpr ⟨h₁, h₂⟩
#align quadratic_form.pos_def.prod QuadraticForm.PosDef.prod

open scoped BigOperators

/-- Construct a quadratic form on a family of modules from the quadratic form on each module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant09f35c46606d72b62a9806607dbfba88dbc7b18ac735db9e66d93fc8413f6f76.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1367a755eb1b0ff9309a7a521f5d3ebc204d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
