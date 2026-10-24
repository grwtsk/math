# uniqueHomsetOfInitialIsoUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:377a05940f285b4c58ec2f0be5c80fd6ff740949dc73022a452af9bb6b9ba39d",
  "kind": "def",
  "lexical_name": "uniqueHomsetOfInitialIsoUnit",
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
  "slug": "uniquehomsetofinitialisounit--46d4d72e33a5ef20cdc95311",
  "source": {
    "blob": "37fa527c594d753b47230282e5ed62a098010ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantdf4aa1221d292f18d8e3775fc85f1e4d52783de4ae6af7f85f4e663e92896866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46d4d72e33a5ef20cdc9531110ac35391bc37a480d3f126daa6d465ad0d3ee87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantdf4aa1221d292f18d8e3775fc85f1e4d52783de4ae6af7f85f4e663e92896866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:377a05940f285b4c58ec2f0be5c80fd6ff740949dc73022a452af9bb6b9ba39d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniqueHomsetOfInitialIsoUnit [HasInitial C] (i : ⊥_ C ≅ 𝟙_ C) (X Y : C) : Unique (X ⟶ Y) :=
  Equiv.unique <|
    calc
      (X ⟶ Y) ≃ (X ⊗ 𝟙_ C ⟶ Y) := Iso.homCongr (rightUnitor _).symm (Iso.refl _)
      _ ≃ (X ⊗ ⊥_ C ⟶ Y) := (Iso.homCongr ((Iso.refl _) ⊗ i.symm) (Iso.refl _))
      _ ≃ (⊥_ C ⟶ Y ^^ X) := (exp.adjunction _).homEquiv _ _

open scoped ZeroObject

/-- If a cartesian closed category has a zero object, each homset has exactly one element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantdf4aa1221d292f18d8e3775fc85f1e4d52783de4ae6af7f85f4e663e92896866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantdf4aa1221d292f18d8e3775fc85f1e4d52783de4ae6af7f85f4e663e92896866.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37fa527c594d753b47230282e5ed62a098010ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
