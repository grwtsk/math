# ModuleCat.projective_of_module_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eabc193f609f5991b3bc07078b4544e85b396b9ee66e5ad35ea905d8e14466da",
  "kind": "instance",
  "lexical_name": "ModuleCat.projective_of_module_projective",
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
  "slug": "modulecat-projective-of-module-projective--7c3dbde9438881d67cb02c37",
  "source": {
    "blob": "517a9997a3e5ed3a27654dc80e53166fbeac165c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c3dbde9438881d67cb02c37f056146247aa1aeb07eabfab50726f9db75e36d4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eabc193f609f5991b3bc07078b4544e85b396b9ee66e5ad35ea905d8e14466da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ModuleCat.projective_of_module_projective [Small.{v} R] [Projective P] :
    Module.Projective R P := by
  refine Module.Projective.of_lifting_property ?_
  intro _ _ _ _ _ _ f g s
  have : Epi (↟f) := (ModuleCat.epi_iff_surjective (↟f)).mpr s
  exact ⟨(Projective.factorThru (↟g) (↟f)).hom,
    ModuleCat.hom_ext_iff.mp <| Projective.factorThru_comp (↟g) (↟f)⟩

/-- The categorical notion of projective object agrees with the explicit module-theoretic notion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517a9997a3e5ed3a27654dc80e53166fbeac165c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
