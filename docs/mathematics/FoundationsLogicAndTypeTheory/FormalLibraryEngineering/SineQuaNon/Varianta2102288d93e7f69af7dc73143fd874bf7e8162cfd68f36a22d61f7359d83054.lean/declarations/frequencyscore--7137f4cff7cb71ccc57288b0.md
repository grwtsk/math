# frequencyScore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0410ba3a9629ef3df3da8ec112ce4b1a0d6c142be4130a44986b111aeab471ec",
  "kind": "def",
  "lexical_name": "frequencyScore",
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
  "slug": "frequencyscore--7137f4cff7cb71ccc57288b0",
  "source": {
    "blob": "7323ee005f7c0a0d049b946879c9f4c15147f549",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7137f4cff7cb71ccc57288b0b62712b877edcb5fc8d44f26051e1ede6cdc3381",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0410ba3a9629ef3df3da8ec112ce4b1a0d6c142be4130a44986b111aeab471ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def frequencyScore (n : Name) (frequencyWeight : Float := 0.01) : MetaM Float := do
  let f ← symbolFrequency n
  return 1.0 + frequencyWeight * (f + 1).toFloat.log2

/--
This isn't exactly what's described in the paper.

We select theorems in a priority order, where the priority is `1.5 ^ (trigger depth) * Π (tolerances)`.

The `1.5` factor could be tuned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7323ee005f7c0a0d049b946879c9f4c15147f549` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
