# succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ceb20aed6a4ea4dc78bf24f3d7a6de7b65570f2e10e117782f76e73766c6e02",
  "kind": "def",
  "lexical_name": "succ",
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
  "slug": "succ--0c54e0f855cbd12ff91e5c2a",
  "source": {
    "blob": "984d997c8385c567436fb5b84c181815c8b38e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c54e0f855cbd12ff91e5c2a96e3d4bbac153401e4ab0e302060ed7fb7fc287d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ceb20aed6a4ea4dc78bf24f3d7a6de7b65570f2e10e117782f76e73766c6e02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def succ {j : J} (e : d.Extension val₀ j) (hj : ¬IsMax j) :
    d.Extension val₀ (Order.succ j) where
  val := d.succ j hj e.val
  map_zero := by
    simp only [← e.map_zero]
    conv_rhs => rw [← d.map_succ j hj e.val]
    rw [← FunctorToTypes.map_comp_apply]
    rfl
  map_succ i hi := by
    obtain hij | rfl := ((Order.lt_succ_iff_of_not_isMax hj).mp hi).lt_or_eq
    · rw [← homOfLE_comp ((Order.lt_succ_iff_of_not_isMax hj).mp hi) (Order.le_succ j), op_comp,
        FunctorToTypes.map_comp_apply, d.map_succ, ← e.map_succ i hij,
        ← homOfLE_comp (Order.succ_le_of_lt hij) (Order.le_succ j), op_comp,
        FunctorToTypes.map_comp_apply, d.map_succ]
    · simp only [homOfLE_refl, op_id, FunctorToTypes.map_id_apply, homOfLE_leOfHom,
        d.map_succ]
  map_limit i hi hij := by
    obtain hij | rfl := hij.lt_or_eq
    · have hij' : i ≤ j := (Order.lt_succ_iff_of_not_isMax hj).mp hij
      have := congr_arg (F.map (homOfLE hij').op) (d.map_succ j hj e.val)
      rw [e.map_limit i hi, ← FunctorToTypes.map_comp_apply, ← op_comp, homOfLE_comp] at this
      rw [this]
      congr
      ext ⟨⟨l, hl⟩⟩
      dsimp
      conv_lhs => rw [← d.map_succ j hj e.val]
      rw [← FunctorToTypes.map_comp_apply]
      rfl
    · exfalso
      exact hj hi.isMax

variable [WellFoundedLT J]

/-- When `j` is a limit element, this is the exntesion to `d.Extension val₀ j`
of a family of elements in `d.Extension val₀ i` for all `i < j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984d997c8385c567436fb5b84c181815c8b38e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
