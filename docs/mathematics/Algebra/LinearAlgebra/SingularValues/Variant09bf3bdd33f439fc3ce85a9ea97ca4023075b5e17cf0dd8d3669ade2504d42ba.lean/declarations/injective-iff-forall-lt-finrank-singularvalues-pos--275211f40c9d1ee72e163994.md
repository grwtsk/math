# injective_iff_forall_lt_finrank_singularValues_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4321987f-b097-e2ec-7463-9f1490ff20db",
  "kind": "theorem",
  "lexical_name": "injective_iff_forall_lt_finrank_singularValues_pos",
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
  "slug": "injective-iff-forall-lt-finrank-singularvalues-pos--275211f40c9d1ee72e163994",
  "source": {
    "blob": "8865473821c20caa662baf8dc97dce47c3929001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:275211f40c9d1ee72e163994f9ea5856abddc512b688ff1fed7c25b05e16cfc9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4321987f-b097-e2ec-7463-9f1490ff20db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_iff_forall_lt_finrank_singularValues_pos :
    Function.Injective T ↔ ∀ i < finrank 𝕜 E, 0 < T.singularValues i := by
  have := (adjoint T ∘ₗ T).not_hasEigenvalue_zero_tfae.out 5 1
  rw [← adjoint_comp_self_injective_iff, ← coe_comp, ← ker_eq_bot, ← not_iff_not, this.not_left]
  push Not
  constructor
  · intro h
    obtain ⟨i, hi⟩ := T.isSymmetric_adjoint_comp_self.exists_eigenvalues_eq rfl h
    use i, i.isLt
    simp [RCLike.ofReal_eq_zero.mp hi, T.singularValues_fin rfl]
  · intro ⟨i, h, hz⟩
    convert! T.isSymmetric_adjoint_comp_self.hasEigenvalue_eigenvalues rfl ⟨i, h⟩
    rw [← sq_singularValues_of_lt, le_antisymm hz (T.singularValues_nonneg i)]
    simp

/--
7.68(b) from [axler2024]. See also `LinearMap.support_singularValues` for a stronger statement.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8865473821c20caa662baf8dc97dce47c3929001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
