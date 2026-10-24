# Submodule.exists_add_mem_mem_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f238cdc4e181872e282540e2a1fb89ed3e553da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 813,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff07a3e5-e91e-793d-4f70-4b14cf8658cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa110c96-34cd-d834-f532-64663d917f10",
  "kind": "theorem",
  "lexical_name": "Submodule.exists_add_mem_mem_orthogonal",
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
  "slug": "submodule-exists-add-mem-mem-orthogonal--687a034c174ae4acb57e3327",
  "source": {
    "blob": "4f238cdc4e181872e282540e2a1fb89ed3e553da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 813,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:687a034c174ae4acb57e3327f32c1dc55a7e6ebbe2f3c6efed787b0b098caa9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa110c96-34cd-d834-f532-64663d917f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.exists_add_mem_mem_orthogonal [HasOrthogonalProjection K] (v : E) :
    ∃ y ∈ K, ∃ z ∈ Kᗮ, v = y + z :=
  ⟨orthogonalProjection K v, Subtype.coe_prop _, v - orthogonalProjection K v,
    sub_orthogonalProjection_mem_orthogonal _, by simp⟩
#align submodule.exists_sum_mem_mem_orthogonal Submodule.exists_add_mem_mem_orthogonal

/-- If `K` admits an orthogonal projection, then the orthogonal complement of its orthogonal
complement is itself. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f238cdc4e181872e282540e2a1fb89ed3e553da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
