# Basis.smul_repr_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2402c90b7efb9ebcbf607eba67187fc1ac039d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e71f3de-8c84-1e71-c616-a7fabaaa6b50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ee44afe-e8b6-cf12-bb66-6f5f27d2d28c",
  "kind": "theorem",
  "lexical_name": "Basis.smul_repr_mk",
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
  "slug": "basis-smul-repr-mk--effb3022e01abcd9c5919729",
  "source": {
    "blob": "e2402c90b7efb9ebcbf607eba67187fc1ac039d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:effb3022e01abcd9c5919729997a5dafa11595d7a0e108a4e007048d4242256b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ee44afe-e8b6-cf12-bb66-6f5f27d2d28c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Basis.smul_repr_mk {ι : Type v₁} {ι' : Type w₁} (b : Basis ι R S) (c : Basis ι' S A)
    (x i j) : (b.smul c).repr x (i, j) = b.repr (c.repr x j) i :=
  b.smul_repr c x (i, j)
#align basis.smul_repr_mk Basis.smul_repr_mk

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2402c90b7efb9ebcbf607eba67187fc1ac039d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
