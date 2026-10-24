# isCocartesian_of_isStronglyCocartesian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:063c5e0c0143fc4c57f812dd78177716a150ce628c692bd1b5119cb63a63dd5a",
  "kind": "instance",
  "lexical_name": "isCocartesian_of_isStronglyCocartesian",
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
  "slug": "iscocartesian-of-isstronglycocartesian--b40079eb433daf5744712439",
  "source": {
    "blob": "edcb0a9863c3679ce141202c592e756caf4b0f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b40079eb433daf574471243922b88bbe801a3238c520bdb149c2cca011c7423b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:063c5e0c0143fc4c57f812dd78177716a150ce628c692bd1b5119cb63a63dd5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance isCocartesian_of_isStronglyCocartesian [p.IsStronglyCocartesian f φ] :
    p.IsCocartesian f φ where
  universal_property := fun φ' => universal_property p f φ (𝟙 S) f (comp_id f).symm φ'

section

variable {S' : 𝒮} {b' : 𝒳} {g : S ⟶ S'} {f' : R ⟶ S'} (hf' : f' = f ≫ g) (φ' : a ⟶ b')
  [IsHomLift p f' φ']

/-- Given a diagram
```
a --φ--> b        b'
|        |        |
v        v        v
R --f--> S --g--> S'
```
such that `φ` is strongly cocartesian, and a morphism `φ' : a ⟶ b'`. Then `map` is the map
`b ⟶ b'` lying over `g` obtained from the universal property of `φ`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edcb0a9863c3679ce141202c592e756caf4b0f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
