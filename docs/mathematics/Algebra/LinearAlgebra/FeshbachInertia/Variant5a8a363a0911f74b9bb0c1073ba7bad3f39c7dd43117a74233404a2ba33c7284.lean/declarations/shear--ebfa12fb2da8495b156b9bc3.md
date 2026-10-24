# shear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ed662b8967a3c93985432ea743ed9aef9dbfb13b1c1dbe6a35d05572fe86633",
  "kind": "def",
  "lexical_name": "shear",
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
  "slug": "shear--ebfa12fb2da8495b156b9bc3",
  "source": {
    "blob": "a8cf30f101e6f96162800ba7f92fc06b92ce48ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebfa12fb2da8495b156b9bc30a2f221743f889641cfabe441c5fd0bb2d5ad952",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ed662b8967a3c93985432ea743ed9aef9dbfb13b1c1dbe6a35d05572fe86633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shear (C : Matrix n m ℝ) (B : Matrix n n ℝ) [Invertible B] :
    ((m → ℝ) × (n → ℝ)) ≃ₗ[ℝ] ((m → ℝ) × (n → ℝ)) where
  toFun z := (z.1, z.2 + (⅟B * C).mulVec z.1)
  invFun z := (z.1, z.2 - (⅟B * C).mulVec z.1)
  left_inv z := by ext <;> simp
  right_inv z := by ext <;> simp
  map_add' z w := by
    ext <;> simp [Matrix.mulVec_add, add_assoc, add_left_comm, add_comm]
  map_smul' a z := by ext <;> simp [Matrix.mulVec_smul]

omit [DecidableEq m] in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8cf30f101e6f96162800ba7f92fc06b92ce48ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
