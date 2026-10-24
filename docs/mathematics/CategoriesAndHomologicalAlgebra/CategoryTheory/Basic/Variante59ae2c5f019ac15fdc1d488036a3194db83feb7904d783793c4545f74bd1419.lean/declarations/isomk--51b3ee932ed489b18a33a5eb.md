# isoMk₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:179ed571735d65274b3bb3144424d091c5807d8895d6a9dd95d7fd15e0bcef8b",
  "kind": "def",
  "lexical_name": "isoMk₃",
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
  "slug": "isomk--51b3ee932ed489b18a33a5eb",
  "source": {
    "blob": "980e2922b391c692ffafb4e4153c3d2fcd88d5c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 782,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51b3ee932ed489b18a33a5ebf7f482ea3fc9fa307e7dd06b51bedd3f51239284",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:179ed571735d65274b3bb3144424d091c5807d8895d6a9dd95d7fd15e0bcef8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoMk₃ {f g : ComposableArrows C 3}
    (app₀ : f.obj' 0 ≅ g.obj' 0) (app₁ : f.obj' 1 ≅ g.obj' 1) (app₂ : f.obj' 2 ≅ g.obj' 2)
    (app₃ : f.obj' 3 ≅ g.obj' 3)
    (w₀ : f.map' 0 1 ≫ app₁.hom = app₀.hom ≫ g.map' 0 1)
    (w₁ : f.map' 1 2 ≫ app₂.hom = app₁.hom ≫ g.map' 1 2)
    (w₂ : f.map' 2 3 ≫ app₃.hom = app₂.hom ≫ g.map' 2 3) : f ≅ g where
  hom := homMk₃ app₀.hom app₁.hom app₂.hom app₃.hom w₀ w₁ w₂
  inv := homMk₃ app₀.inv app₁.inv app₂.inv app₃.inv
    (by rw [← cancel_epi app₀.hom, ← reassoc_of% w₀, app₁.hom_inv_id,
      comp_id, app₀.hom_inv_id_assoc])
    (by rw [← cancel_epi app₁.hom, ← reassoc_of% w₁, app₂.hom_inv_id,
      comp_id, app₁.hom_inv_id_assoc])
    (by rw [← cancel_epi app₂.hom, ← reassoc_of% w₂, app₃.hom_inv_id,
      comp_id, app₂.hom_inv_id_assoc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante59ae2c5f019ac15fdc1d488036a3194db83feb7904d783793c4545f74bd1419.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `980e2922b391c692ffafb4e4153c3d2fcd88d5c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
