# ofIso_compatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14e77bc0-96c8-5a55-d955-c701437e3602",
  "kind": "lemma",
  "lexical_name": "ofIso_compatibility",
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
  "slug": "ofiso-compatibility--24395e3eca4d359c26d50fb9",
  "source": {
    "blob": "951337559c5f56c49f98541eee216e687c9b29d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 390,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24395e3eca4d359c26d50fb9968f5924781d9e14218a53c2d899cc7faf334729",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e77bc0-96c8-5a55-d955-c701437e3602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma ofIso_compatibility :
    letI := ofIso e A
    NatTrans.CommShift e.hom A := by
  letI := ofIso e A
  refine ⟨fun a => ?_⟩
  dsimp [commShiftIso, ofIso]
  rw [← whiskerLeft_comp_assoc, e.hom_inv_id, whiskerLeft_id', id_comp]

end CommShift

end Functor

/--
Assume that we have a diagram of categories
```
C₁ ⥤ D₁
‖     ‖
v     v
C₂ ⥤ D₂
‖     ‖
v     v
C₃ ⥤ D₃
```
with functors `F₁₂ : C₁ ⥤ C₂`, `F₂₃ : C₂ ⥤ C₃` and `F₁₃ : C₁ ⥤ C₃` on the first
column that are related by a natural transformation `α : F₁₃ ⟶ F₁₂ ⋙ F₂₃`
and similarly `β : G₁₂ ⋙ G₂₃ ⟶ G₁₃` on the second column. Assume that we have
natural transformations
`e₁₂ : F₁₂ ⋙ L₂ ⟶ L₁ ⋙ G₁₂` (top square), `e₂₃ : F₂₃ ⋙ L₃ ⟶ L₂ ⋙ G₂₃` (bottom square),
and `e₁₃ : F₁₃ ⋙ L₃ ⟶ L₁ ⋙ G₁₃` (outer square), where the horizontal functors
are denoted `L₁`, `L₂` and `L₃`. Assume that `e₁₃` is determined by the other
natural transformations `α`, `e₂₃`, `e₁₂` and `β`. Then, if all these categories
are equipped with a shift by an additive monoid `A`, and all these functors commute with
these shifts, then the natural transformation `e₁₃` of the outer square commutes with the
shift if all `α`, `e₂₃`, `e₁₂` and `β` do. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951337559c5f56c49f98541eee216e687c9b29d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
