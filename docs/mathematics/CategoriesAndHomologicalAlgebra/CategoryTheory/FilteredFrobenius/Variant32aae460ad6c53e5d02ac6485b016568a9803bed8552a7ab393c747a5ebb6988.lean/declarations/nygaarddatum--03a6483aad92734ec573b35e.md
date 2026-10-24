# NygaardDatum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a568281bc817d0e1c335303b3c844d01bf663fb05328d1e797e6aff6da1061dc",
  "kind": "structure",
  "lexical_name": "NygaardDatum",
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
  "slug": "nygaarddatum--03a6483aad92734ec573b35e",
  "source": {
    "blob": "260d948ec27de3afc3630eed6fe3b9a5a417b63d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03a6483aad92734ec573b35e6e17afaeacc1a520293c4fa2d5e6c50764d1c119",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a568281bc817d0e1c335303b3c844d01bf663fb05328d1e797e6aff6da1061dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NygaardDatum (P : Theory) where
  level : Int → (P.DerivedAlgᵒᵖ ⥤ P.Target)
  inclusion : ∀ r, level r ⟶ P.value
  transition : ∀ {r s : Int}, r ≤ s → (level s ⟶ level r)

  transition_refl :
    ∀ r,
      transition (le_refl r) = 𝟙 (level r)

  transition_trans :
    ∀ {r s t : Int} (hrs : r ≤ s) (hst : s ≤ t),
      transition hst ≫ transition hrs =
        transition (hrs.trans hst)

  inclusion_natural :
    ∀ {r s : Int} (hrs : r ≤ s),
      transition hrs ≫ inclusion r = inclusion s

namespace NygaardDatum

variable {P : Theory} (N : NygaardDatum P)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `260d948ec27de3afc3630eed6fe3b9a5a417b63d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
