# compatibleFamilies_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df2b2fd1-e114-4405-3706-544f801fa7cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e15d048f-3561-5530-cf0b-f50398ce0394",
  "kind": "theorem",
  "lexical_name": "compatibleFamilies_isClosed",
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
  "slug": "compatiblefamilies-isclosed--962fb2a7f10943a6be336355",
  "source": {
    "blob": "ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:962fb2a7f10943a6be336355d709ef09d5f0db555f1871d1f3e42d0bf09ad610",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e15d048f-3561-5530-cf0b-f50398ce0394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatibleFamilies_isClosed
    [∀ level, TopologicalSpace (Level level)]
    [∀ level, DiscreteTopology (Level level)]
    (tower : PrimePowerTorsionTower prime Level) :
    IsClosed tower.compatibleFamilies := by
  rw [show tower.compatibleFamilies =
      ⋂ level,
        {coordinate |
          tower.transition level (coordinate (Nat.succ level)) =
            coordinate level} by
      ext coordinate
      simp [compatibleFamilies]]
  apply isClosed_iInter
  intro level
  apply isClosed_eq
  · exact
      continuous_of_discreteTopology.comp
        (continuous_apply (Nat.succ level))
  · exact continuous_apply level

/-- The topological inverse-limit carrier cut out by compatibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
