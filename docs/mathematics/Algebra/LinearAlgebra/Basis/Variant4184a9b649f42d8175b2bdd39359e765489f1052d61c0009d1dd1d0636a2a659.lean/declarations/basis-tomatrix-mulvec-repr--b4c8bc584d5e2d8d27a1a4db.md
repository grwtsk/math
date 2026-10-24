# Basis.toMatrix_mulVec_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:023edb4e-7465-3fb7-ea0c-cf7d642b4f36",
  "kind": "lemma",
  "lexical_name": "Basis.toMatrix_mulVec_repr",
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
  "slug": "basis-tomatrix-mulvec-repr--b4c8bc584d5e2d8d27a1a4db",
  "source": {
    "blob": "97e66729147e79bd440f7a386139b3a0ec5137b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 244,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4c8bc584d5e2d8d27a1a4dbb10521b26c71b992ff15e57b1ed2b480d6dc366b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:023edb4e-7465-3fb7-ea0c-cf7d642b4f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Basis.toMatrix_mulVec_repr [Finite ι'] (m : M) :
    b'.toMatrix b *ᵥ b.repr m = b'.repr m := by
  classical
  cases nonempty_fintype ι'
  simp [← LinearMap.toMatrix_id_eq_basis_toMatrix, LinearMap.toMatrix_mulVec_repr]

end Fintype

/-- A generalization of `Basis.toMatrix_self`, in the opposite direction. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e66729147e79bd440f7a386139b3a0ec5137b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
