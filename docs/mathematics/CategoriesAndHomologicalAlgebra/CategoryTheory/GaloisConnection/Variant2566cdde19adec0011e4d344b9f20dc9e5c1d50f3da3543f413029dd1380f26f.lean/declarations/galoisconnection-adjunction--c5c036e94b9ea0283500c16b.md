# GaloisConnection.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ff049aa055b9b82e231abe4ae3d173c7a55d764714dc766cb77bbaeb910a0f7",
  "kind": "def",
  "lexical_name": "GaloisConnection.adjunction",
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
  "slug": "galoisconnection-adjunction--c5c036e94b9ea0283500c16b",
  "source": {
    "blob": "df642c01f6f1eac5b07c0ec5b1e29ee9f276356b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 27,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisConnection/Variant2566cdde19adec0011e4d344b9f20dc9e5c1d50f3da3543f413029dd1380f26f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c036e94b9ea0283500c16bb438dc6b1d47fbca13ed313b240c991561f2ce51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisConnection/Variant2566cdde19adec0011e4d344b9f20dc9e5c1d50f3da3543f413029dd1380f26f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ff049aa055b9b82e231abe4ae3d173c7a55d764714dc766cb77bbaeb910a0f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GaloisConnection.adjunction {l : X → Y} {u : Y → X} (gc : GaloisConnection l u) :
    gc.monotone_l.functor ⊣ gc.monotone_u.functor :=
  CategoryTheory.Adjunction.mkOfHomEquiv
    { homEquiv := fun X Y =>
        { toFun := fun f => CategoryTheory.homOfLE (gc.le_u f.le)
          invFun := fun f => CategoryTheory.homOfLE (gc.l_le f.le)
          left_inv := by aesop_cat
          right_inv := by aesop_cat } }

end

namespace CategoryTheory

variable {X : Type u} {Y : Type v} [Preorder X] [Preorder Y]

/-- An adjunction between preorder categories induces a galois connection.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisConnection/Variant2566cdde19adec0011e4d344b9f20dc9e5c1d50f3da3543f413029dd1380f26f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisConnection/Variant2566cdde19adec0011e4d344b9f20dc9e5c1d50f3da3543f413029dd1380f26f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df642c01f6f1eac5b07c0ec5b1e29ee9f276356b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
