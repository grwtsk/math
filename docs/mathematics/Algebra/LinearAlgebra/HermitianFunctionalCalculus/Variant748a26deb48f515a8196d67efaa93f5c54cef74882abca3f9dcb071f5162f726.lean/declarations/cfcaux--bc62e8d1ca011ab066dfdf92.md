# cfcAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4639bffc928ee2201f0cef0ef4b540b4fec6b3dfb2ea3aef2bdddbba2876381d",
  "kind": "def",
  "lexical_name": "cfcAux",
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
  "slug": "cfcaux--bc62e8d1ca011ab066dfdf92",
  "source": {
    "blob": "a78128c2e3da44c1e6ce28a0128351d32533c1cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc62e8d1ca011ab066dfdf9247dae1f60d37deb7760cf25c029855870efcaa67",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4639bffc928ee2201f0cef0ef4b540b4fec6b3dfb2ea3aef2bdddbba2876381d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cfcAux : C(spectrum ℝ A, ℝ) →⋆ₐ[ℝ] (Matrix n n 𝕜) where
  toFun g := conjStarAlgAut 𝕜 _ hA.eigenvectorUnitary <|
    diagonal (RCLike.ofReal ∘ g ∘ fun i ↦ ⟨hA.eigenvalues i, hA.eigenvalues_mem_spectrum_real i⟩)
  map_zero' := by simp [Pi.zero_def, Function.comp_def]
  map_one' := by simp [Pi.one_def, Function.comp_def]
  map_mul' f g := by
    simp only [ContinuousMap.coe_mul, ← map_mul, diagonal_mul_diagonal, Function.comp_apply]
    rfl
  map_add' f g := by
    simp only [ContinuousMap.coe_add, ← map_add, diagonal_add, Function.comp_apply]
    rfl
  commutes' r := by
    simp only [Function.comp_def, algebraMap_apply, smul_eq_mul, mul_one]
    rw [← mul_one (algebraMap _ _ _), ← coe_mul_star_self hA.eigenvectorUnitary,
      ← Algebra.left_comm, coe_star, ← mul_assoc, conjStarAlgAut_apply]
    rfl
  map_star' f := by
    simp only [star_trivial, ← map_star, star_eq_conjTranspose, diagonal_conjTranspose, Pi.star_def,
      Function.comp_apply, RCLike.star_def, RCLike.conj_ofReal]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a78128c2e3da44c1e6ce28a0128351d32533c1cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
