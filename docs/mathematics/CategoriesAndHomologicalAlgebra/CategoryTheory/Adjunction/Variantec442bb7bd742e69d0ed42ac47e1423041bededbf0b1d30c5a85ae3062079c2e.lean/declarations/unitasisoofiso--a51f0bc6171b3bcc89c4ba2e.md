# unitAsIsoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ea775b003e64a49e9b87b19d74309e31c032f8a0d3cb255cc0c8c160948ef72",
  "kind": "def",
  "lexical_name": "unitAsIsoOfIso",
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
  "slug": "unitasisoofiso--a51f0bc6171b3bcc89c4ba2e",
  "source": {
    "blob": "75b8b4de092ad8b99ed9dcc83b953575d957cfed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a51f0bc6171b3bcc89c4ba2e6d22361dce63ce9e2e6392fddc8b92f7bec045fd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ea775b003e64a49e9b87b19d74309e31c032f8a0d3cb255cc0c8c160948ef72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitAsIsoOfIso (adj : L ⊣ R) (i : L ⋙ R ≅ 𝟭 C) : 𝟭 C ≅ L ⋙ R where
  hom := adj.unit
  inv := i.hom ≫ (adj.toMonad.transport i).μ
  hom_inv_id := by
    rw [← assoc]
    ext X
    exact (adj.toMonad.transport i).right_unit X
  inv_hom_id := by
    rw [assoc, ← Iso.eq_inv_comp, comp_id, ← id_comp i.inv, Iso.eq_comp_inv, assoc,
      NatTrans.id_comm]
    ext X
    exact (adj.toMonad.transport i).right_unit X

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75b8b4de092ad8b99ed9dcc83b953575d957cfed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
