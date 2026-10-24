# mulCoalgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74b573e54fdfae9c05f707998e17f4b75eb2cddbf3f21b9449813e46e09c99df",
  "kind": "def",
  "lexical_name": "mulCoalgHom",
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
  "slug": "mulcoalghom--8efe5f6dddc0b0679f7358a4",
  "source": {
    "blob": "6235a87c6cf105324a932facaec8092ec3950480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 215,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8efe5f6dddc0b0679f7358a465c0e76f605ab33ee71c28fb5cb9cc39fc6f7928",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74b573e54fdfae9c05f707998e17f4b75eb2cddbf3f21b9449813e46e09c99df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulCoalgHom : A ⊗[R] A →ₗc[R] A where
  toLinearMap := .mul' R A
  counit_comp := by ext; simp [mul_comm]
  map_comp_comul := by
    ext a b
    simp [← (ℛ R a).eq, ← (ℛ R b).eq, TensorProduct.sum_tmul]
    simp [TensorProduct.tmul_sum, Finset.sum_mul_sum]

-- TODO: Generate this using `simps` once the coercion from `LinearMapClass` is gone.
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6235a87c6cf105324a932facaec8092ec3950480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
