# isClosedEmbedding_cfcAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb2f5b36-31ba-2268-3429-b894c21555cd",
  "kind": "lemma",
  "lexical_name": "isClosedEmbedding_cfcAux",
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
  "slug": "isclosedembedding-cfcaux--63cc2ac3cf14adbf0c547706",
  "source": {
    "blob": "a2d1f864aec77c282db10d2d33075c3ca33296af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63cc2ac3cf14adbf0c547706ff809e43ab5e01eab9b60d1a375880568bff0f32",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb2f5b36-31ba-2268-3429-b894c21555cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedEmbedding_cfcAux : IsClosedEmbedding hA.cfcAux := by
  have h0 : FiniteDimensional ℝ C(spectrum ℝ A, ℝ) :=
    FiniteDimensional.of_injective (ContinuousMap.coeFnLinearMap ℝ (M := ℝ)) DFunLike.coe_injective
  refine LinearMap.isClosedEmbedding_of_injective (𝕜 := ℝ) (E := C(spectrum ℝ A, ℝ))
    (F := Matrix n n 𝕜) (f := hA.cfcAux) <| LinearMap.ker_eq_bot'.mpr fun f hf ↦ ?_
  have h2 :
      diagonal (RCLike.ofReal ∘ f ∘ fun i ↦ ⟨hA.eigenvalues i, hA.eigenvalues_mem_spectrum_real i⟩)
        = (0 : Matrix n n 𝕜) := by
    simp only [LinearMap.coe_coe, cfcAux_apply] at hf
    replace hf := congr($(hf) * (eigenvectorUnitary hA : Matrix n n 𝕜))
    simp only [mul_assoc, SetLike.coe_mem, unitary.star_mul_self_of_mem, mul_one, zero_mul] at hf
    simpa [← mul_assoc] using congr((star hA.eigenvectorUnitary : Matrix n n 𝕜) * $(hf))
  ext x
  simp only [ContinuousMap.zero_apply]
  obtain ⟨x, hx⟩ := x
  obtain ⟨i, rfl⟩ := hA.eigenvalues_eq_spectrum_real ▸ hx
  rw [← diagonal_zero] at h2
  have := (diagonal_eq_diagonal_iff).mp h2
  refine RCLike.ofReal_eq_zero.mp (this i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2d1f864aec77c282db10d2d33075c3ca33296af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
