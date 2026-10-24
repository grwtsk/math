# colimitSMulAux_eq_of_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85295190-cbcb-3006-c7db-de05454b14f0",
  "kind": "theorem",
  "lexical_name": "colimitSMulAux_eq_of_rel",
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
  "slug": "colimitsmulaux-eq-of-rel--1e6dca7ce756598626bc4fb9",
  "source": {
    "blob": "61d2f181ba5fc24d6dd09b727a8a93f91227b123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6dca7ce756598626bc4fb9d9c57161f99921513f3680e8cab914882e69de7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85295190-cbcb-3006-c7db-de05454b14f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitSMulAux_eq_of_rel (r : R) (x y : Σ j, F.obj j)
    (h : Types.FilteredColimit.Rel.{v, u} (F ⋙ forget (ModuleCat R)) x y) :
    colimitSMulAux F r x = colimitSMulAux F r y := by
  apply M.mk_eq
  obtain ⟨k, f, g, hfg⟩ := h
  use k, f, g
  simp only [Functor.comp_obj, Functor.comp_map, forget_map] at hfg
  simp [hfg]
set_option linter.uppercaseLean3 false in
#align Module.filtered_colimits.colimit_smul_aux_eq_of_rel ModuleCat.FilteredColimits.colimitSMulAux_eq_of_rel

/-- Scalar multiplication in the colimit. See also `colimitSMulAux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d2f181ba5fc24d6dd09b727a8a93f91227b123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
