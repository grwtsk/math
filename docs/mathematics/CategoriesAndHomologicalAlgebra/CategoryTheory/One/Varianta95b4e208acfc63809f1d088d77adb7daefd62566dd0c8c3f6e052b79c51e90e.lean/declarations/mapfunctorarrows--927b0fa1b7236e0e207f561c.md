# mapFunctorArrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3a8ccde91cc322ec9410c854e8d884710ad32765e8412620ae7bafa98268e20",
  "kind": "def",
  "lexical_name": "mapFunctorArrows",
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
  "slug": "mapfunctorarrows--927b0fa1b7236e0e207f561c",
  "source": {
    "blob": "412f1549d41b793901199daba969ed03c7d65311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta95b4e208acfc63809f1d088d77adb7daefd62566dd0c8c3f6e052b79c51e90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:927b0fa1b7236e0e207f561c983f0d9cb8c7df203185b38458193bf3a3568d6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta95b4e208acfc63809f1d088d77adb7daefd62566dd0c8c3f6e052b79c51e90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3a8ccde91cc322ec9410c854e8d884710ad32765e8412620ae7bafa98268e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapFunctorArrows (i j i' j' n : ℕ)
    (_ : i ≤ j := by lia) (_ : i' ≤ j' := by lia)
    (_ : i ≤ i' := by lia) (_ : j ≤ j' := by lia)
    (_ : j' ≤ n := by lia) :
    functorArrows C i j n ⟶ functorArrows C i' j' n where
  app S := homMk₁ (S.map' i i') (S.map' j j')
    (by simp [← Functor.map_comp])

end ComposableArrows

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta95b4e208acfc63809f1d088d77adb7daefd62566dd0c8c3f6e052b79c51e90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta95b4e208acfc63809f1d088d77adb7daefd62566dd0c8c3f6e052b79c51e90e.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `412f1549d41b793901199daba969ed03c7d65311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
