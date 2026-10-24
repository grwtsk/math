# forgetEnrichmentOppositeEquivalence.functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbc0effdb1b076d75e1ce05fc514619bf6235af360746b505ad8976fcac96811",
  "kind": "def",
  "lexical_name": "forgetEnrichmentOppositeEquivalence.functor",
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
  "slug": "forgetenrichmentoppositeequivalence-functor--f49fca0ad30a2da16a545809",
  "source": {
    "blob": "2010dd44138981b5ecd784c544e6cece8f98d223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f49fca0ad30a2da16a545809090657b5c71392058c45edbd4d2d7dcc3d7b3ba7",
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

Occurrence: `declaration:fbc0effdb1b076d75e1ce05fc514619bf6235af360746b505ad8976fcac96811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forgetEnrichmentOppositeEquivalence.functor :
    ForgetEnrichment V Cᵒᵖ ⥤ (ForgetEnrichment V C)ᵒᵖ where
  obj x := x
  map {x y} f := f.op
  map_comp {x y z} f g := by
    have : (f ≫ g) = homTo V (f ≫ g) := rfl
    rw [this, forgetEnrichment_comp, Category.assoc, tensorHom_eComp_op_eq,
      leftUnitor_inv_braiding_assoc, ← unitors_inv_equal, ← Category.assoc]
    congr 1

/-- The functor going from the opposite of the underlying category of the enriched category `C`
to the underlying category of the enriched category `Cᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2010dd44138981b5ecd784c544e6cece8f98d223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
