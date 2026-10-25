# twoLegalNeighbors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82e4f85d5a291848fd469134db5937e17305e09499da182a82094dc60c04a341",
  "kind": "def",
  "lexical_name": "twoLegalNeighbors",
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
  "slug": "twolegalneighbors--536d94fb4fe59ff58ad0d0b4",
  "source": {
    "blob": "7366aa15473314499b96aeaca71557fbd8ee3a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant458d42c80e3f23f547f563513bb7e8ef95529b231ba356451ee0da2772fd797e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:536d94fb4fe59ff58ad0d0b45ed85e846790c91ae102dcd28d8065305d207143",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant458d42c80e3f23f547f563513bb7e8ef95529b231ba356451ee0da2772fd797e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82e4f85d5a291848fd469134db5937e17305e09499da182a82094dc60c04a341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoLegalNeighbors : LegalNeighborSystem twoTerrain twoBoundary where
  admitted := twoTerrain.Adjacent
  legalNeighbors := twoTerrain.neighbors
  mem_legalNeighbors_iff := by intros; rfl
  admitted_adjacent := id
  admitted_symmetric := by
    intro x y hxy
    exact (twoTerrain.adjacent_comm).1 hxy
  obstacle_excluded := by simp [twoBoundary]

/-- Identity signal evolution, used to expose the linear/threshold boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant458d42c80e3f23f547f563513bb7e8ef95529b231ba356451ee0da2772fd797e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant458d42c80e3f23f547f563513bb7e8ef95529b231ba356451ee0da2772fd797e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7366aa15473314499b96aeaca71557fbd8ee3a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
