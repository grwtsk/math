# _root_.Matrix.separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b90c06cd39f14a71893be45074492f8f9967e604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 680,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:913a60d5-20b0-86b0-a4e3-604a3208d93d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4ee7c74-4a94-4f86-e167-8a945cf7552f",
  "kind": "theorem",
  "lexical_name": "_root_.Matrix.separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂",
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
  "slug": "root-matrix-separatingleft-tolinearmap-iff-separatingleft-tolinearmap--55e775a0b8a2d949d8c0c6c1",
  "source": {
    "blob": "b90c06cd39f14a71893be45074492f8f9967e604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 680,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55e775a0b8a2d949d8c0c6c15bc8a1b8c543a7f9bbe9312c1d50c67f987be599",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4ee7c74-4a94-4f86-e167-8a945cf7552f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Matrix.separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂
    {M : Matrix ι ι R₁} (b : Basis ι R₁ M₁) :
    M.toLinearMap₂'.SeparatingLeft ↔ (Matrix.toLinearMap₂ b b M).SeparatingLeft :=
  (separatingLeft_congr_iff b.equivFun.symm b.equivFun.symm).symm
#align matrix.separating_left_to_linear_map₂'_iff_separating_left_to_linear_map₂ Matrix.separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂

variable (B : M₁ →ₗ[R₁] M₁ →ₗ[R₁] R₁)

-- Lemmas transferring nondegeneracy between a matrix and its associated bilinear form
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90c06cd39f14a71893be45074492f8f9967e604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
