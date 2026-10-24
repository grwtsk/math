# IsUltraUniformity.separationQuotient_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02b768c-f26a-479e-2b6d-8f55ad3b8b4d",
  "kind": "lemma",
  "lexical_name": "IsUltraUniformity.separationQuotient_iff",
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
  "slug": "isultrauniformity-separationquotient-iff--cb62694e75c789e8c2de3c98",
  "source": {
    "blob": "57e689f4979fdce829c29d13848e37228269025b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb62694e75c789e8c2de3c98f8b2463bd20af80ea0bec46b290a46a513f8b21e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02b768c-f26a-479e-2b6d-8f55ad3b8b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma IsUltraUniformity.separationQuotient_iff :
    IsUltraUniformity (SeparationQuotient X) ↔ IsUltraUniformity X :=
  ⟨fun _ ↦ SeparationQuotient.isUniformInducing_mk.isUltraUniformity,
   fun _ ↦ inferInstance⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e689f4979fdce829c29d13848e37228269025b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
