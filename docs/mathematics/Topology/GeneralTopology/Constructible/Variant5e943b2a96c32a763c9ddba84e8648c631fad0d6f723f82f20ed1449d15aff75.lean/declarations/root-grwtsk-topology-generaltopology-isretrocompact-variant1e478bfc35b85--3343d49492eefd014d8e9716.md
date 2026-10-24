# _root_.GRWTSK.Topology.GeneralTopology.IsRetrocompact.Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.QuasiSeparatedSpace.isRetrocompact_iff_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e12aec6-9a82-8c05-eb64-607895491359",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsRetrocompact.Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.QuasiSeparatedSpace.isRetrocompact_iff_isCompact",
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
  "slug": "root-grwtsk-topology-generaltopology-isretrocompact-variant1e478bfc35b85--3343d49492eefd014d8e9716",
  "source": {
    "blob": "15fe5be2b116dde295895c5f95065f3612588f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 324,
    "path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3343d49492eefd014d8e971612950b3750fd53a05b120b2fb52d059e2c68e4c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e12aec6-9a82-8c05-eb64-607895491359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.IsRetrocompact.Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.QuasiSeparatedSpace.isRetrocompact_iff_isCompact
    (hU : IsOpen U) : IsRetrocompact U ↔ IsCompact U :=
  ⟨IsRetrocompact.isCompact, (IsCompact.isRetrocompact · hU)⟩

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fe5be2b116dde295895c5f95065f3612588f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
