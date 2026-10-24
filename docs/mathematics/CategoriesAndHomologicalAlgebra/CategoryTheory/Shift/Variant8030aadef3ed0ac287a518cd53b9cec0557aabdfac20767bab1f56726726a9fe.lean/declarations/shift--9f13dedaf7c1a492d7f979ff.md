# shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5da959a28f4210a4a0a883dbcc8cf05c0315d4d137d132a93a4c52442e6f4bf8",
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
  "slug": "shift--9f13dedaf7c1a492d7f979ff",
  "source": {
    "blob": "6afd1d622e6ba1d1ff78071012195146c7c2c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f13dedaf7c1a492d7f979ff5d9d65b699c7b6fd3ee60cf4f7f3ad61f10a7b99",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5da959a28f4210a4a0a883dbcc8cf05c0315d4d137d132a93a4c52442e6f4bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shift {K L : CochainComplex C ℤ} {φ₁ φ₂ : K ⟶ L} (h : Homotopy φ₁ φ₂) (n : ℤ) :
    Homotopy (φ₁⟦n⟧') (φ₂⟦n⟧') where
  hom _ _ := n.negOnePow • h.hom _ _
  zero i j hij := by
    dsimp
    rw [h.zero, smul_zero]
    intro hij'
    dsimp at hij hij'
    omega
  comm := fun i => by
    rw [dNext_eq _ (show (ComplexShape.up ℤ).Rel i (i + 1) by simp),
      prevD_eq _ (show (ComplexShape.up ℤ).Rel (i - 1) i by simp)]
    dsimp
    simpa only [Linear.units_smul_comp, Linear.comp_units_smul, smul_smul,
      Int.units_mul_self, one_smul,
      dNext_eq _ (show (ComplexShape.up ℤ).Rel (i + n) (i + 1 + n) by dsimp; omega),
      prevD_eq _ (show (ComplexShape.up ℤ).Rel (i - 1 + n) (i + n) by dsimp; omega)]
        using h.comm (i + n)

end Homotopy

namespace HomotopyCategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afd1d622e6ba1d1ff78071012195146c7c2c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
