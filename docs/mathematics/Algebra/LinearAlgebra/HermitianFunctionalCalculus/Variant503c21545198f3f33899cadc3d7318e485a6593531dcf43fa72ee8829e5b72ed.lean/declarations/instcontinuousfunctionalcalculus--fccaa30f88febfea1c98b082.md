# instContinuousFunctionalCalculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0c4841826f4285b0528311408965d773820627db833bd1bc8d9566130941502",
  "kind": "instance",
  "lexical_name": "instContinuousFunctionalCalculus",
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
  "slug": "instcontinuousfunctionalcalculus--fccaa30f88febfea1c98b082",
  "source": {
    "blob": "a2d1f864aec77c282db10d2d33075c3ca33296af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fccaa30f88febfea1c98b08272b875b9c3d14e7d19aefb4c75f7d2eb7e03eea3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0c4841826f4285b0528311408965d773820627db833bd1bc8d9566130941502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instContinuousFunctionalCalculus :
    ContinuousFunctionalCalculus ℝ (Matrix n n 𝕜) IsSelfAdjoint where
  exists_cfc_of_predicate a ha := by
    replace ha : IsHermitian a := ha
    refine ⟨ha.cfcAux, ha.isClosedEmbedding_cfcAux, ha.cfcAux_id, fun f ↦ ?map_spec,
      fun f ↦ ?hermitian⟩
    case map_spec =>
      apply Set.eq_of_subset_of_subset
      · rw [← ContinuousMap.spectrum_eq_range f]
        apply AlgHom.spectrum_apply_subset
      · rw [cfcAux_apply, unitary.spectrum.unitary_conjugate]
        rintro - ⟨x , rfl⟩
        apply spectrum.of_algebraMap_mem 𝕜
        simp only [Function.comp_apply, Set.mem_range, spectrum_diagonal]
        obtain ⟨x, hx⟩ := x
        obtain ⟨i, rfl⟩ := ha.eigenvalues_eq_spectrum_real ▸ hx
        exact ⟨i, rfl⟩
    case hermitian =>
      simp only [isSelfAdjoint_iff, cfcAux_apply, mul_assoc, star_mul, star_star]
      rw [star_eq_conjTranspose, diagonal_conjTranspose]
      congr!
      simp [Pi.star_def, Function.comp_def]
  spectrum_nonempty a ha := by
    obtain (h | h) := isEmpty_or_nonempty n
    · obtain ⟨x, y, hxy⟩ := exists_pair_ne (Matrix n n 𝕜)
      exact False.elim <| Matrix.of.symm.injective.ne hxy <| Subsingleton.elim _ _
    · exact eigenvalues_eq_spectrum_real ha ▸ Set.range_nonempty _
  predicate_zero := .zero _

/-- The continuous functional calculus of a Hermitian matrix as a triple product using the
spectral theorem. Note that this actually operates on bare functions since every function is
continuous on the spectrum of a matrix, since the spectrum is finite. This is shown to be equal to
the generic continuous functional calculus API in `Matrix.IsHermitian.cfc_eq`. In general, users
should prefer the generic API, especially because it will make rewriting easier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2d1f864aec77c282db10d2d33075c3ca33296af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
