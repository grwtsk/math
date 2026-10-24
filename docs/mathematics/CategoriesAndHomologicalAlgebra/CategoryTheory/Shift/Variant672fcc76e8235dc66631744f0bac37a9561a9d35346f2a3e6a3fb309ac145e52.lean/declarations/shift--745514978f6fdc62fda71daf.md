# shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:038df15251499d7f222e1e279db1bff7e798435ed4761c60415d443fa1968da4",
  "kind": "def",
  "lexical_name": "shift",
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
  "slug": "shift--745514978f6fdc62fda71daf",
  "source": {
    "blob": "485a1ee32fe8077a229f84b4cf9ab9d4a4ea0b74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant672fcc76e8235dc66631744f0bac37a9561a9d35346f2a3e6a3fb309ac145e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:745514978f6fdc62fda71daf066458f47d0b2ef6fe1a208e9c5a5ca5bd9f0e4e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant672fcc76e8235dc66631744f0bac37a9561a9d35346f2a3e6a3fb309ac145e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:038df15251499d7f222e1e279db1bff7e798435ed4761c60415d443fa1968da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shift {K L : CochainComplex C ℤ} {φ₁ φ₂ : K ⟶ L} (h : Homotopy φ₁ φ₂) (n : ℤ) :
    Homotopy (φ₁⟦n⟧') (φ₂⟦n⟧') where
  hom _ _ := n.negOnePow • h.hom _ _
  zero i j hij := by rw [h.zero _ _ (by simp at hij ⊢; lia), smul_zero]
  comm i := by
    rw [dNext_eq _ (show (ComplexShape.up ℤ).Rel i (i + 1) by simp),
      prevD_eq _ (show (ComplexShape.up ℤ).Rel (i - 1) i by simp)]
    simpa [Linear.units_smul_comp, Linear.comp_units_smul, smul_smul, Int.units_mul_self,
      dNext_eq _ (show (ComplexShape.up ℤ).Rel (i + n) (i + 1 + n) by simp; lia),
      prevD_eq _ (show (ComplexShape.up ℤ).Rel (i - 1 + n) (i + n) by simp; lia)]
      using h.comm (i + n)

end Homotopy

namespace HomotopyCategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant672fcc76e8235dc66631744f0bac37a9561a9d35346f2a3e6a3fb309ac145e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant672fcc76e8235dc66631744f0bac37a9561a9d35346f2a3e6a3fb309ac145e52.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485a1ee32fe8077a229f84b4cf9ab9d4a4ea0b74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
