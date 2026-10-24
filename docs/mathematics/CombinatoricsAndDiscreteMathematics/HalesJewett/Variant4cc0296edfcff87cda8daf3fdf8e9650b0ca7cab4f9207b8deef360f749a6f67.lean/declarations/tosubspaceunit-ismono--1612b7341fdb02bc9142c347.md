# toSubspaceUnit_isMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76247c1f-efa0-168f-9fc5-c7594bc8aded",
  "kind": "lemma",
  "lexical_name": "toSubspaceUnit_isMono",
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
  "slug": "tosubspaceunit-ismono--1612b7341fdb02bc9142c347",
  "source": {
    "blob": "af5bdd5a4f3889634fabd26415570b3e6a1db8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1612b7341fdb02bc9142c347e3a9a217242221a8a2ebc137148ac59cdc315721",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76247c1f-efa0-168f-9fc5-c7594bc8aded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toSubspaceUnit_isMono {C : (ι → α) → κ} : l.toSubspaceUnit.IsMono C ↔ l.IsMono C := by
  simp only [Subspace.IsMono, toSubspaceUnit_apply, IsMono]
  exact exists_congr fun c ↦ ⟨fun h a ↦ h fun _ ↦ a, fun h a ↦ h _⟩

protected alias ⟨_, IsMono.toSubspaceUnit⟩ := toSubspaceUnit_isMono

/-- Consider a line in `ι → η → α` as a `η`-dimensional subspace in `ι × η → α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5bdd5a4f3889634fabd26415570b3e6a1db8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
