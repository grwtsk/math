# epi_π_app_zero_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ea7b3ef-23b1-509b-f430-5e1de4cf25d6",
  "kind": "lemma",
  "lexical_name": "epi_π_app_zero_of_epi",
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
  "slug": "epi-app-zero-of-epi--716c1818d8f410244ea63542",
  "source": {
    "blob": "24e826e2843f932309c4c8e6af1553592d550861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:716c1818d8f410244ea635426c24680f39ef42070ecd936980c38100826883f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ea7b3ef-23b1-509b-f430-5e1de4cf25d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_π_app_zero_of_epi : Epi (c.π.app ⟨0⟩) := by
  apply Functor.epi_of_epi_map (forget R)
  change Epi (((forget R).mapCone c).π.app ⟨0⟩)
  apply coherentTopology.epi_π_app_zero_of_epi
  · simp only [LightProfinite.effectiveEpi_iff_surjective]
    exact fun x h ↦ Concrete.surjective_π_app_zero_of_surjective_map (limit.isLimit x) h
  · have := (freeForgetAdjunction R).isRightAdjoint
    exact isLimitOfPreserves _ hc
  · exact fun _ ↦ (forget R).map_epi _

end LightCondensed

open CategoryTheory.Limits.SequentialProduct

namespace LightCondensed

variable (n : ℕ)

attribute [local instance] functorMap_epi Abelian.hasFiniteBiproducts

variable {R : Type u} [Ring R] {M N : ℕ → LightCondMod.{u} R} (f : ∀ n, M n ⟶ N n) [∀ n, Epi (f n)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e826e2843f932309c4c8e6af1553592d550861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
