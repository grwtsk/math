# IsLocalizedModule.map_linearMap_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65018319-96eb-0389-270c-73983ba81f93",
  "kind": "lemma",
  "lexical_name": "IsLocalizedModule.map_linearMap_of_isLocalization",
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
  "slug": "islocalizedmodule-map-linearmap-of-islocalization--b66dc3d723b1d9a2d624bf0a",
  "source": {
    "blob": "02220448300b9c04ac88efa715e491a2e5416a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 247,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b66dc3d723b1d9a2d624bf0a01ed9e8dffa86542f233e491e2451e182fe3e027",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65018319-96eb-0389-270c-73983ba81f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalizedModule.map_linearMap_of_isLocalization (Rₚ Sₚ : Type*) [CommSemiring Rₚ]
    [Algebra R Rₚ] [CommSemiring Sₚ] [Algebra S Sₚ] [Algebra R Sₚ] [IsScalarTower R S Sₚ]
    [Algebra Rₚ Sₚ] [IsScalarTower R Rₚ Sₚ] (p : Ideal R) [p.IsPrime]
    [IsLocalization.AtPrime Rₚ p]
    [IsLocalizedModule.AtPrime p (IsScalarTower.toAlgHom R S Sₚ : S →ₗ[R] Sₚ)] :
    IsLocalizedModule.map p.primeCompl (Algebra.linearMap R Rₚ)
        (IsScalarTower.toAlgHom R S Sₚ : S →ₗ[R] Sₚ) (Algebra.linearMap R S) =
    (Algebra.linearMap Rₚ Sₚ).restrictScalars R := by
  apply IsLocalizedModule.linearMap_ext p.primeCompl (Algebra.linearMap _ _)
    (IsScalarTower.toAlgHom R S Sₚ : S →ₗ[R] Sₚ)
  ext
  simp only [LinearMap.coe_comp, Function.comp_apply, Algebra.linearMap_apply, map_one,
    LinearMap.coe_restrictScalars]
  rw [show 1 = Algebra.linearMap R Rₚ 1 by simp, IsLocalizedModule.map_apply]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exactness/Variantdedd97822c0713721d02ad356458408dc50f4f622c3774dc70b4b3a46946c9d8.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02220448300b9c04ac88efa715e491a2e5416a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
