# uCompactlyGeneratedSpace_of_coinduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd0b55f1-4305-e69b-09fc-f7f805e2e4e3",
  "kind": "theorem",
  "lexical_name": "uCompactlyGeneratedSpace_of_coinduced",
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
  "slug": "ucompactlygeneratedspace-of-coinduced--bb0f59cbec2856ce31d09dd0",
  "source": {
    "blob": "174bec8e0ce88826c0d21979b4b70f3e2b9dde9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb0f59cbec2856ce31d09dd0d053d12ad1139c24c77b4587ae4c46ea102a8dfe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd0b55f1-4305-e69b-09fc-f7f805e2e4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uCompactlyGeneratedSpace_of_coinduced
    [UCompactlyGeneratedSpace.{u} X] {f : X → Y} (hf : Continuous f) (ht : tY = coinduced f tX) :
    UCompactlyGeneratedSpace.{u} Y := by
  refine uCompactlyGeneratedSpace_of_isClosed fun s h ↦ ?_
  rw [ht, isClosed_coinduced]
  exact UCompactlyGeneratedSpace.isClosed fun _ ⟨g, hg⟩ ↦ h _ ⟨_, hf.comp hg⟩

/-- The quotient of a compactly generated space is compactly generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant2ca56a296e4e4a910fa77d7f86c43b7f6980fdea4f79bbab1e735aef51d64270.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `174bec8e0ce88826c0d21979b4b70f3e2b9dde9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
