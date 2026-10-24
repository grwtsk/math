# ringEquiv_mixedSpace_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14f0ecc0926209007030c132999ff102c660ede1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:657b987c-ed15-a19c-7f75-d3e5296807a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:348d7db6-8d17-7219-48f5-21642f659297",
  "kind": "theorem",
  "lexical_name": "ringEquiv_mixedSpace_apply",
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
  "slug": "ringequiv-mixedspace-apply--127e227cfb8fbff0d39c2c0a",
  "source": {
    "blob": "14f0ecc0926209007030c132999ff102c660ede1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:127e227cfb8fbff0d39c2c0a15fb2dd55faf23d5f9a9208c465798b718942717",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:348d7db6-8d17-7219-48f5-21642f659297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringEquiv_mixedSpace_apply (x : K∞) :
    ringEquiv_mixedSpace K x =
      (fun (v : {w : InfinitePlace K // IsReal w}) => extensionEmbeddingOfIsReal v.2 (x v),
       fun (v : {w : InfinitePlace K // IsComplex w}) => extensionEmbedding v.1 (x v)) := rfl

/-- Transfers the embedding of `x ↦ (x)ᵥ` of the number field `K` into its infinite adele
ring to the mixed embedding `x ↦ (φᵢ(x))ᵢ` of `K` into the space `ℝ ^ r₁ × ℂ ^ r₂`, where
`(r₁, r₂)` is the signature of `K` and `φᵢ` are the complex embeddings of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f0ecc0926209007030c132999ff102c660ede1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
