# mapBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56f0a3e328c02179a2323a485ceb6bbacd18a1dc8d32f33adda9820385f6816d",
  "kind": "def",
  "lexical_name": "mapBifunctor",
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
  "slug": "mapbifunctor--c370eba6e57f2097529c7749",
  "source": {
    "blob": "bf8bdd713a6a2a9089f5234ef8fd8921082849e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c370eba6e57f2097529c7749aed95884e540a9ccc618c1ef159513a99459d9bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56f0a3e328c02179a2323a485ceb6bbacd18a1dc8d32f33adda9820385f6816d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapBifunctor (I J : Type*) :
    GradedObject I C₁ ⥤ GradedObject J C₂ ⥤ GradedObject (I × J) C₃ where
  obj X :=
    { obj := fun Y ij => (F.obj (X ij.1)).obj (Y ij.2)
      map := fun φ ij => (F.obj (X ij.1)).map (φ ij.2) }
  map φ :=
    { app := fun Y ij => (F.map (φ ij.1)).app (Y ij.2) }

section

variable {I J K : Type*} (p : I × J → K)

/-- Given a bifunctor `F : C₁ ⥤ C₂ ⥤ C₃`, graded objects `X : GradedObject I C₁` and
`Y : GradedObject J C₂` and a map `p : I × J → K`, this is the `K`-graded object sending
`k` to the coproduct of `(F.obj (X i)).obj (Y j)` for `p ⟨i, j⟩ = k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf8bdd713a6a2a9089f5234ef8fd8921082849e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
