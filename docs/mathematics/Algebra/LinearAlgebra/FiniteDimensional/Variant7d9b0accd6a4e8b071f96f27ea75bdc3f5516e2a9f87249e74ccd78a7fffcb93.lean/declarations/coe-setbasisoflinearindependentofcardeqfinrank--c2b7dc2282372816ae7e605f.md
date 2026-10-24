# coe_setBasisOfLinearIndependentOfCardEqFinrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afb59be1-d14b-58cc-528e-da6fb6ab90d2",
  "kind": "theorem",
  "lexical_name": "coe_setBasisOfLinearIndependentOfCardEqFinrank",
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
  "slug": "coe-setbasisoflinearindependentofcardeqfinrank--c2b7dc2282372816ae7e605f",
  "source": {
    "blob": "a7b6dc188797b6b20926e3de9421df9b5b45f3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1269,
    "line": 1251,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2b7dc2282372816ae7e605fb5bfa925a30a156eb56375d0a87088554c96d34a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afb59be1-d14b-58cc-528e-da6fb6ab90d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1251–1269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_setBasisOfLinearIndependentOfCardEqFinrank {s : Set V} [Nonempty s] [Fintype s]
    (lin_ind : LinearIndependent K ((↑) : s → V)) (card_eq : s.toFinset.card = finrank K V) :
    ⇑(setBasisOfLinearIndependentOfCardEqFinrank lin_ind card_eq) = ((↑) : s → V) := by
  -- porting note: added to make the next line unify the `_`s
  rw [setBasisOfLinearIndependentOfCardEqFinrank]
  exact Basis.coe_mk _ _
#align coe_set_basis_of_linear_independent_of_card_eq_finrank coe_setBasisOfLinearIndependentOfCardEqFinrank

end Basis

/-!
We now give characterisations of `finrank K V = 1` and `finrank K V ≤ 1`.
-/


section finrank_eq_one

/-- A vector space with a nonzero vector `v` has dimension 1 iff `v` spans.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean#L1251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b6dc188797b6b20926e3de9421df9b5b45f3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
