# continuousMapMkDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d7d66afef44a35225c8890d6b203ef24e48a2dd50e67d88604b8bb2e9f66185",
  "kind": "def",
  "lexical_name": "continuousMapMkDiscrete",
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
  "slug": "continuousmapmkdiscrete--10a981843438c6e6afb25442",
  "source": {
    "blob": "83555410976d8c68660209dce7cf3d24711cb52c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 419,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10a981843438c6e6afb25442238f19ae20b3cb7f79b24471afa31b48ee60468d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d7d66afef44a35225c8890d6b203ef24e48a2dd50e67d88604b8bb2e9f66185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMapMkDiscrete {Y : Type*} [TopologicalSpace Y]
    [DiscreteTopology X] (f : X → Y) (y : Y) (h : Tendsto f cofinite (𝓝 y)) :
    C(OnePoint X, Y) :=
  continuousMapMk ⟨f, continuous_of_discreteTopology⟩ y (by simpa [cocompact_eq_cofinite])

variable (X) in
/--
Continuous maps out of the one point compactification of an infinite discrete space to a Hausdorff
space correspond bijectively to "convergent" maps out of the discrete space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83555410976d8c68660209dce7cf3d24711cb52c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
