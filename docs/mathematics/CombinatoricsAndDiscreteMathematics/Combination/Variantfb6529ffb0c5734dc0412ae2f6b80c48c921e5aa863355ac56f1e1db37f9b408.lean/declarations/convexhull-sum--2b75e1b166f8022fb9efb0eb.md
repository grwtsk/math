# convexHull_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7508e810a77e8f5b56199340f2f5fe86c4695ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dd19774-c55b-c53b-669e-6d8330510eaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a5e721f-67b3-9b25-7cb7-f7a1aac3e485",
  "kind": "theorem",
  "lexical_name": "convexHull_sum",
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
  "slug": "convexhull-sum--2b75e1b166f8022fb9efb0eb",
  "source": {
    "blob": "a7508e810a77e8f5b56199340f2f5fe86c4695ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 497,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b75e1b166f8022fb9efb0eb455785e0bb45272485b2beaa825bbb06b6d39db3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a5e721f-67b3-9b25-7cb7-f7a1aac3e485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_sum {ι} (s : Finset ι) (t : ι → Set E) :
    convexHull R (∑ i ∈ s, t i) = ∑ i ∈ s, convexHull R (t i) :=
  map_sum (convexHullAddMonoidHom R E) _ _

/-- The convex hull of an affine basis is the intersection of the half-spaces defined by the
corresponding barycentric coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7508e810a77e8f5b56199340f2f5fe86c4695ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
