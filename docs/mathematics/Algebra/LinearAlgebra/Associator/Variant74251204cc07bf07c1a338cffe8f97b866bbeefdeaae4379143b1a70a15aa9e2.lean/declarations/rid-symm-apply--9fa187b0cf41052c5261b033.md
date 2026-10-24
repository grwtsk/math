# rid_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0472c52193d147031935af563a46b44aea34824",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69c3c746-1cb5-bc84-61ba-60b5f77243e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9d74681-dd1d-214f-98fa-91cd82f2186f",
  "kind": "theorem",
  "lexical_name": "rid_symm_apply",
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
  "slug": "rid-symm-apply--9fa187b0cf41052c5261b033",
  "source": {
    "blob": "b0472c52193d147031935af563a46b44aea34824",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fa187b0cf41052c5261b033d1cb908faa2300db28c6d533eafc64237ea31fdf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9d74681-dd1d-214f-98fa-91cd82f2186f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rid_symm_apply (m : M) : (TensorProduct.rid R M).symm m = m ⊗ₜ 1 :=
  rfl

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0472c52193d147031935af563a46b44aea34824` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
