# ShortComplex.comp_pOpcycles_eq_zero_iff_up_to_refinements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:198a2de2-edf7-6c1f-d8db-dcdc43e2d88f",
  "kind": "lemma",
  "lexical_name": "ShortComplex.comp_pOpcycles_eq_zero_iff_up_to_refinements",
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
  "slug": "shortcomplex-comp-popcycles-eq-zero-iff-up-to-refinements--545d3268880cc65aae458e9a",
  "source": {
    "blob": "717b398cf7833040d592f428dbfbd4b7e769b7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:545d3268880cc65aae458e9a29902978d4114cb2c383d5ead69b59004b71be01",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:198a2de2-edf7-6c1f-d8db-dcdc43e2d88f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShortComplex.comp_pOpcycles_eq_zero_iff_up_to_refinements
    {A : C} (x₂ : A ⟶ S.X₂) :
    x₂ ≫ S.pOpcycles = 0 ↔
      ∃ (A' : C) (π : A' ⟶ A) (_ : Epi π) (x₁ : A' ⟶ S.X₁), π ≫ x₂ = x₁ ≫ S.f :=
  CokernelCofork.IsColimit.comp_π_eq_zero_iff_up_to_refinements
    S.opcyclesIsCokernel x₂

variable {K L} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717b398cf7833040d592f428dbfbd4b7e769b7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
