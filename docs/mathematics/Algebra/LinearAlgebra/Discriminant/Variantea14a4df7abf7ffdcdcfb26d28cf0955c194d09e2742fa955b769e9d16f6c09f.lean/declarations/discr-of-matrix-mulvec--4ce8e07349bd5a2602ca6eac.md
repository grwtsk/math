# discr_of_matrix_mulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:163f2dd0-7f24-a8c7-4da5-d26b8a97835e",
  "kind": "theorem",
  "lexical_name": "discr_of_matrix_mulVec",
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
  "slug": "discr-of-matrix-mulvec--4ce8e07349bd5a2602ca6eac",
  "source": {
    "blob": "4de024c130ad4e2d05b480fe6523668cac6631af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ce8e07349bd5a2602ca6eacadf633218e7abb6df92cc5c5db4611b21ad642d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163f2dd0-7f24-a8c7-4da5-d26b8a97835e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_of_matrix_mulVec (b : ι → B) (P : Matrix ι ι A) :
    discr A (P.map (algebraMap A B) *ᵥ b) = P.det ^ 2 * discr A b := by
  rw [discr_def, traceMatrix_of_matrix_mulVec, det_mul, det_mul, det_transpose, mul_comm, ←
    mul_assoc, discr_def, pow_two]

end Basic

section Field

variable (K : Type u) {L : Type v} (E : Type z) [Field K] [Field L] [Field E]
variable [Algebra K L] [Algebra K E]
variable [Module.Finite K L] [IsAlgClosed E]

/-- If `b` is a basis of a finite separable field extension `L/K`, then `Algebra.discr K b ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4de024c130ad4e2d05b480fe6523668cac6631af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
