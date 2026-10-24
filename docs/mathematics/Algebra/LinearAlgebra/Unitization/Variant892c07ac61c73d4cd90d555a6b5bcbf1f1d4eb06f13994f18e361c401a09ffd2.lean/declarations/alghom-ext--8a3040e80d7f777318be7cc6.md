# algHom_ext''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e90b80b9e5653c4a47f6423fc8a2b325d68fb7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 717,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1aca7c56-a8dc-5ad2-5f15-da61b54ddb20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88f5eaa6-d83d-2723-8fcc-6e7ea45967fc",
  "kind": "lemma",
  "lexical_name": "algHom_ext''",
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
  "slug": "alghom-ext--8a3040e80d7f777318be7cc6",
  "source": {
    "blob": "8e90b80b9e5653c4a47f6423fc8a2b325d68fb7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 717,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a3040e80d7f777318be7cc629b7d209fae902eb51fc135c8652175b4e7f31a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88f5eaa6-d83d-2723-8fcc-6e7ea45967fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 717–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algHom_ext'' {F : Type*}
    [FunLike F (Unitization R A) C] [AlgHomClass F R (Unitization R A) C] {φ ψ : F}
    (h : ∀ a : A, φ a = ψ a) : φ = ψ :=
  algHom_ext h (fun r => by simp only [AlgHomClass.commutes])

/-- See note [partially-applied ext lemmas] -/
@[ext 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean#L717).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e90b80b9e5653c4a47f6423fc8a2b325d68fb7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
