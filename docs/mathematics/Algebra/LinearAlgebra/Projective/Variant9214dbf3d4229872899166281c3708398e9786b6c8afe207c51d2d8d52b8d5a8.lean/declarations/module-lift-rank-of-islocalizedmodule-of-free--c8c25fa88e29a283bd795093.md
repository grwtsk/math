# Module.lift_rank_of_isLocalizedModule_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84d40ae0-791d-26c6-9e9f-b2f88d9c9099",
  "kind": "theorem",
  "lexical_name": "Module.lift_rank_of_isLocalizedModule_of_free",
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
  "slug": "module-lift-rank-of-islocalizedmodule-of-free--c8c25fa88e29a283bd795093",
  "source": {
    "blob": "aab538c2d1894495767ec4394f733237db1ff3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant9214dbf3d4229872899166281c3708398e9786b6c8afe207c51d2d8d52b8d5a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8c25fa88e29a283bd795093774b4e419e3d0a76046a46b489ee7e862e6533ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant9214dbf3d4229872899166281c3708398e9786b6c8afe207c51d2d8d52b8d5a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d40ae0-791d-26c6-9e9f-b2f88d9c9099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.lift_rank_of_isLocalizedModule_of_free
    (Rₛ : Type uR') {Mₛ : Type uM'} [AddCommGroup Mₛ] [Module R Mₛ]
    [CommRing Rₛ] [Algebra R Rₛ] [Module Rₛ Mₛ] [IsScalarTower R Rₛ Mₛ] (S : Submonoid R)
    (f : M →ₗ[R] Mₛ) [IsLocalization S Rₛ] [IsLocalizedModule S f] [Module.Free R M]
    [Nontrivial Rₛ] :
    Cardinal.lift.{uM} (Module.rank Rₛ Mₛ) = Cardinal.lift.{uM'} (Module.rank R M) := by
  apply Cardinal.lift_injective.{max uM' uR'}
  have := (algebraMap R Rₛ).domain_nontrivial
  have := (IsLocalizedModule.isBaseChange S Rₛ f).equiv.lift_rank_eq.symm
  simp only [rank_tensorProduct, rank_self,
    Cardinal.lift_one, one_mul, Cardinal.lift_lift] at this ⊢
  convert! this
  exact Cardinal.lift_umax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant9214dbf3d4229872899166281c3708398e9786b6c8afe207c51d2d8d52b8d5a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant9214dbf3d4229872899166281c3708398e9786b6c8afe207c51d2d8d52b8d5a8.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab538c2d1894495767ec4394f733237db1ff3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
