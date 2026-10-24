# iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b6585c-2115-c223-19be-98e6c1d99f69",
  "kind": "theorem",
  "lexical_name": "iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self",
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
  "slug": "iisortho-nondegenerate-iff-not-isortho-basis-self--6e4c3ff222a7a24fe29ebab3",
  "source": {
    "blob": "f490dd3bee1d294fd544dfdbb12cc648e681c9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 240,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e4c3ff222a7a24fe29ebab3a59408e21a3c4fee6d1bda33aab2ae58cb9139c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b6585c-2115-c223-19be-98e6c1d99f69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self {n : Type w} [Nontrivial R]
    [NoZeroDivisors R] (B : BilinForm R M) (v : Basis n R M) (hO : B.iIsOrtho v) :
    B.Nondegenerate ↔ ∀ i, ¬B.IsOrtho (v i) (v i) := by
  refine ⟨hO.not_isOrtho_basis_self_of_nondegenerate, fun ho m hB => ?_⟩
  obtain ⟨vi, rfl⟩ := v.repr.symm.surjective m
  rw [LinearEquiv.map_eq_zero_iff]
  ext i
  rw [Finsupp.zero_apply]
  specialize hB (v i)
  simp_rw [Basis.repr_symm_apply, Finsupp.linearCombination_apply, Finsupp.sum, sum_left,
           smul_left] at hB
  rw [Finset.sum_eq_single i] at hB
  · exact eq_zero_of_ne_zero_of_mul_right_eq_zero (ho i) hB
  · intro j _ hij
    convert mul_zero (vi j) using 2
    exact hO hij
  · intro hi
    convert zero_mul (M₀ := R) _ using 2
    exact Finsupp.notMem_support_iff.mp hi

section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f490dd3bee1d294fd544dfdbb12cc648e681c9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
