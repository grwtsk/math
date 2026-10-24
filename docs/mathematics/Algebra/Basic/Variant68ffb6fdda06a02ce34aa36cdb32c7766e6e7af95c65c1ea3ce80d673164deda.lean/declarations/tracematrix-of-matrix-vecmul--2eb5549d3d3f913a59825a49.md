# traceMatrix_of_matrix_vecMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20176e2845712dce4896a19f08927dda14b9b47f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d49b029c-c2f8-d552-1a0d-c6ba6df268f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e289753c-c9e6-b4ac-9f94-56338bf6bae6",
  "kind": "theorem",
  "lexical_name": "traceMatrix_of_matrix_vecMul",
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
  "slug": "tracematrix-of-matrix-vecmul--2eb5549d3d3f913a59825a49",
  "source": {
    "blob": "20176e2845712dce4896a19f08927dda14b9b47f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 301,
    "path": "GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb5549d3d3f913a59825a494a88b8d0ed68cc3fa06187952cb9894d9faee370",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e289753c-c9e6-b4ac-9f94-56338bf6bae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traceMatrix_of_matrix_vecMul [Fintype κ] (b : κ → B) (P : Matrix κ κ A) :
    traceMatrix A (b ᵥ* P.map (algebraMap A B)) = Pᵀ * traceMatrix A b * P := by
  ext (α β)
  rw [traceMatrix_apply, vecMul, dotProduct, vecMul, dotProduct, Matrix.mul_apply,
    BilinForm.sum_left,
    Fintype.sum_congr _ _ fun i : κ =>
      BilinForm.sum_right _ _ (b i * P.map (algebraMap A B) i α) fun y : κ =>
        b y * P.map (algebraMap A B) y β,
    sum_comm]
  congr; ext x
  rw [Matrix.mul_apply, sum_mul]
  congr; ext y
  rw [map_apply, traceForm_apply, mul_comm (b y), ← smul_def]
  simp only [id.smul_eq_mul, RingHom.id_apply, map_apply, transpose_apply, LinearMap.map_smulₛₗ,
    traceForm_apply, Algebra.smul_mul_assoc]
  rw [mul_comm (b x), ← smul_def]
  ring_nf
  rw [mul_assoc]
  simp [mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20176e2845712dce4896a19f08927dda14b9b47f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
