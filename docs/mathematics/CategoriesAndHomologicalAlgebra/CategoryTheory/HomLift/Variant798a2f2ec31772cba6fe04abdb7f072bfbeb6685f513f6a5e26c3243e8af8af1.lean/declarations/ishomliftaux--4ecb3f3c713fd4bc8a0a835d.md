# IsHomLiftAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f754ac5f98e0bdd43f4d8f624c81049117c3ce24bbaa7a1c7380c64b62434b2a",
  "kind": "inductive",
  "lexical_name": "IsHomLiftAux",
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
  "slug": "ishomliftaux--4ecb3f3c713fd4bc8a0a835d",
  "source": {
    "blob": "08bba803143aa27ad75b3be31d3f546b0053d0e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ecb3f3c713fd4bc8a0a835d268ed0f38be3314ba245e2521000358265926b29",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f754ac5f98e0bdd43f4d8f624c81049117c3ce24bbaa7a1c7380c64b62434b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
inductive IsHomLiftAux : ∀ {R S : 𝒮} {a b : 𝒳} (_ : R ⟶ S) (_ : a ⟶ b), Prop
  | map {a b : 𝒳} (φ : a ⟶ b) : IsHomLiftAux (p.map φ) φ

/-- Given a functor `p : 𝒳 ⥤ 𝒮`, an arrow `φ : a ⟶ b` in `𝒳` and an arrow `f : R ⟶ S` in `𝒮`,
`p.IsHomLift f φ` expresses the fact that `φ` lifts `f` through `p`.
This is often drawn as:
```
  a --φ--> b
  -        -
  |        |
  v        v
  R --f--> S
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bba803143aa27ad75b3be31d3f546b0053d0e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
