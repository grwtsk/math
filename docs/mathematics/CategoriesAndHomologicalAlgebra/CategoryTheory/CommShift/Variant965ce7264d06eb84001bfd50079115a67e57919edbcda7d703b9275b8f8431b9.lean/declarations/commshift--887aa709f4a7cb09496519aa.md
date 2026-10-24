# CommShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b0006dea958b63aa857609c4437274cf2bdfb214cb944dca839e77d05699940",
  "kind": "class",
  "lexical_name": "CommShift",
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
  "slug": "commshift--887aa709f4a7cb09496519aa",
  "source": {
    "blob": "951337559c5f56c49f98541eee216e687c9b29d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:887aa709f4a7cb09496519aad9742cc74ccf4ef83f67b193f7f0e7f2a233518c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b0006dea958b63aa857609c4437274cf2bdfb214cb944dca839e77d05699940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CommShift where
  /-- The commutation isomorphisms for all `a`-shifts this functor is equipped with -/
  iso (a : A) : shiftFunctor C a ⋙ F ≅ F ⋙ shiftFunctor D a
  zero : iso 0 = CommShift.isoZero F A := by aesop_cat
  add (a b : A) : iso (a + b) = CommShift.isoAdd (iso a) (iso b) := by aesop_cat

variable {A}

section

variable [F.CommShift A]

/-- If a functor `F` commutes with the shift by `A` (i.e. `[F.CommShift A]`), then
`F.commShiftIso a` is the given isomorphism `shiftFunctor C a ⋙ F ≅ F ⋙ shiftFunctor D a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant965ce7264d06eb84001bfd50079115a67e57919edbcda7d703b9275b8f8431b9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951337559c5f56c49f98541eee216e687c9b29d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
