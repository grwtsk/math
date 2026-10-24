# coe_trans_to_affineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df531eb2965699b7d305a51f1b41fe271e9690c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e07c5e5921a6893fee7f29048e1ab9f31da59c2e28acafa1ab299e4249c66f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a517f5a0-a022-6740-98b0-0d8d5218048f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8bd4973-4a9a-dd5e-23a7-71557ec7db80",
  "kind": "theorem",
  "lexical_name": "coe_trans_to_affineMap",
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
  "slug": "coe-trans-to-affinemap--cc8a6cb3cdeda92e7a722287",
  "source": {
    "blob": "df531eb2965699b7d305a51f1b41fe271e9690c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 341,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant7e07c5e5921a6893fee7f29048e1ab9f31da59c2e28acafa1ab299e4249c66f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc8a6cb3cdeda92e7a722287476d63365dcb1c7cc32a48ad60bb3786de470c85",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineEquiv/Variant7e07c5e5921a6893fee7f29048e1ab9f31da59c2e28acafa1ab299e4249c66f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bd4973-4a9a-dd5e-23a7-71557ec7db80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_trans_to_affineMap (e : P₁ ≃ᵃ[k] P₂) (e' : P₂ ≃ᵃ[k] P₃) :
    (e.trans e' : P₁ →ᵃ[k] P₃) = (e' : P₂ →ᵃ[k] P₃).comp e :=
  rfl
#align affine_equiv.coe_trans_to_affine_map AffineEquiv.coe_trans_to_affineMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineEquiv/Variant7e07c5e5921a6893fee7f29048e1ab9f31da59c2e28acafa1ab299e4249c66f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant7e07c5e5921a6893fee7f29048e1ab9f31da59c2e28acafa1ab299e4249c66f9.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df531eb2965699b7d305a51f1b41fe271e9690c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
