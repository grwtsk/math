# LiftR_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b42fa978-2a35-98e4-5675-21a825d3ef38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e89bef8-28fe-28d6-a03d-8d12e39535ea",
  "kind": "theorem",
  "lexical_name": "LiftR_def",
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
  "slug": "liftr-def--6924ebaf593c30f5d8ddcff3",
  "source": {
    "blob": "f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6924ebaf593c30f5d8ddcff3c27e3d7f978ade249042d2149bb95f119d0a8dbe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e89bef8-28fe-28d6-a03d-8d12e39535ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LiftR_def (x y : F α) :
    LiftR' R x y ↔
      ∃ u : F (Subtype_ R),
        (TypeVec.prod.fst ⊚ subtypeVal R) <$$> u = x ∧
          (TypeVec.prod.snd ⊚ subtypeVal R) <$$> u = y :=
  exists_iff_exists_of_mono _ _ _ (toSubtype'_of_subtype' R)
    (by simp only [map_map, comp_assoc, subtypeVal_toSubtype']; simp [comp])
#align mvfunctor.liftr_def MvFunctor.LiftR_def

end LiftP'

end MvFunctor

open Nat

namespace MvFunctor

open TypeVec

section LiftPLastPredIff

variable {F : TypeVec.{u} (n + 1) → Type*} [MvFunctor F] [LawfulMvFunctor F] {α : TypeVec.{u} n}

open MvFunctor

variable {β : Type u}

variable (pp : β → Prop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
