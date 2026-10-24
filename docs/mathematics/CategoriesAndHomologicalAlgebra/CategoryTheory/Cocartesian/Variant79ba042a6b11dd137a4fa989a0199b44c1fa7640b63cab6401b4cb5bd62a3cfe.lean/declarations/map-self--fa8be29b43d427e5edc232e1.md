# map_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d9c0916-c372-68f1-4eb5-7d1dec24eacb",
  "kind": "lemma",
  "lexical_name": "map_self",
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
  "slug": "map-self--fa8be29b43d427e5edc232e1",
  "source": {
    "blob": "edcb0a9863c3679ce141202c592e756caf4b0f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa8be29b43d427e5edc232e1bad44deae26c84ddd1a381645b674aff335097a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d9c0916-c372-68f1-4eb5-7d1dec24eacb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma map_self : map p f φ (comp_id f).symm φ = 𝟙 b := by
  subst_hom_lift p f φ; symm
  apply map_uniq
  simp only [comp_id]

/-- When its possible to compare the two, the composition of two `IsStronglyCocartesian.map` will
also be given by a `IsStronglyCocartesian.map`. In other words, given diagrams
```
a --φ--> b        b'         b''
|        |        |          |
v        v        v          v
R --f--> S --g--> S' --g'--> S'
```
and
```
a --φ'--> b'
|         |
v         v
R --f'--> S'

```
and
```
a --φ''--> b''
|          |
v          v
R --f''--> S''
```
such that `φ` and `φ'` are strongly cocartesian morphisms, and such that `f' = f ≫ g` and
`f'' = f' ≫ g'`. Then composing the induced map from `b ⟶ b'` with the induced map from
`b' ⟶ b''` gives the induced map from `b ⟶ b''`. -/
@[reassoc (attr := simp)]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edcb0a9863c3679ce141202c592e756caf4b0f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
