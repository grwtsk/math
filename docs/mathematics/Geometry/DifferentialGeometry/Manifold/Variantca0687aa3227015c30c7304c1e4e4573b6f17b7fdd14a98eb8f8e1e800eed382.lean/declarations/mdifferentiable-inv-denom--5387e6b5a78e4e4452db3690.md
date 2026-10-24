# mdifferentiable_inv_denom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:889e7b4c-c2ec-de32-d277-194191d84b63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff8a2e98-8af2-3f7c-2cfb-6d2471a86c15",
  "kind": "lemma",
  "lexical_name": "mdifferentiable_inv_denom",
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
  "slug": "mdifferentiable-inv-denom--5387e6b5a78e4e4452db3690",
  "source": {
    "blob": "f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 118,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5387e6b5a78e4e4452db3690b9e1bf1185956ce6071db83f8bfbcf96699a9c01",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff8a2e98-8af2-3f7c-2cfb-6d2471a86c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mdifferentiable_inv_denom (g : GL (Fin 2) ℝ) :
    MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (fun τ : ℍ ↦ (denom g τ)⁻¹) :=
  (contMDiff_inv_denom g).mdifferentiable le_top

/-- Each element of `GL(2, ℝ)⁺` defines a complex-differentiable map `ℍ → ℍ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
