# IsIdempotentElem.isCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b2833f9f5a66cc8997e70174bbca0935269ce23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 653,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8df7f380-4c5e-042c-edb1-31c406409eb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f05c2bea-1fab-21cf-8765-abdd06d12efd",
  "kind": "lemma",
  "lexical_name": "IsIdempotentElem.isCompl",
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
  "slug": "isidempotentelem-iscompl--eb01f2fd8683127dbba7a04a",
  "source": {
    "blob": "7b2833f9f5a66cc8997e70174bbca0935269ce23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 653,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb01f2fd8683127dbba7a04a8d7840f141cf2922bcffcc47e63f42ab7da550ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f05c2bea-1fab-21cf-8765-abdd06d12efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsIdempotentElem.isCompl {f : E →ₗ[R] E} (hf : IsIdempotentElem f) :
    IsCompl (range f) (ker f) := hf.isProj_range.isCompl

open LinearMap in
/-- Given an idempotent linear operator `p`, we have
`x ∈ range p` if and only if `p(x) = x` for all `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b2833f9f5a66cc8997e70174bbca0935269ce23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
