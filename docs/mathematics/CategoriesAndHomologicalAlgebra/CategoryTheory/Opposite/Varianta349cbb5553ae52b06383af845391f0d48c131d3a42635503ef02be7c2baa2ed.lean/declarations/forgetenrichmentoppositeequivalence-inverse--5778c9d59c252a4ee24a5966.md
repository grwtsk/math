# forgetEnrichmentOppositeEquivalence.inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc8d54080d827013839c01141cbf980625baa1a4e12ee27492dac3315cdf6889",
  "kind": "def",
  "lexical_name": "forgetEnrichmentOppositeEquivalence.inverse",
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
  "slug": "forgetenrichmentoppositeequivalence-inverse--5778c9d59c252a4ee24a5966",
  "source": {
    "blob": "2010dd44138981b5ecd784c544e6cece8f98d223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5778c9d59c252a4ee24a59669e9c9e31e5a50b0855aab72098e93e642c333585",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc8d54080d827013839c01141cbf980625baa1a4e12ee27492dac3315cdf6889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forgetEnrichmentOppositeEquivalence.inverse :
    (ForgetEnrichment V C)ᵒᵖ ⥤ ForgetEnrichment V Cᵒᵖ where
  obj x := x
  map {x y} f := f.unop
  map_comp {x y z} f g := by
    have : g.unop ≫ f.unop = homTo V (g.unop ≫ f.unop) := rfl
    dsimp
    rw [this, forgetEnrichment_comp, Category.assoc, unitors_inv_equal,
      ← leftUnitor_inv_braiding_assoc]
    have : (β_ _ _).hom ≫ (homTo V g.unop ⊗ homTo V f.unop) ≫
      eComp V («to» V z.unop) («to» V y.unop) («to» V x.unop) =
      ((homTo V f.unop) ⊗ (homTo V g.unop)) ≫ eComp V x y z := (tensorHom_eComp_op_eq V _ _).symm
    rw [this, ← Category.assoc]
    congr 1

/-- The equivalence between the underlying category of the enriched category `Cᵒᵖ` and
the opposite of the underlying category of the enriched category `C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2010dd44138981b5ecd784c544e6cece8f98d223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
