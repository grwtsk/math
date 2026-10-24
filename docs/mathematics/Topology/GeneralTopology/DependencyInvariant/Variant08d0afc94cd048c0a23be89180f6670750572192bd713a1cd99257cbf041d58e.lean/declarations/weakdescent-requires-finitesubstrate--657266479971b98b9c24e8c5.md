# weakDescent_requires_finiteSubstrate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba6a4030-6f23-c61f-44f3-4c38cd098e7e",
  "kind": "theorem",
  "lexical_name": "weakDescent_requires_finiteSubstrate",
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
  "slug": "weakdescent-requires-finitesubstrate--657266479971b98b9c24e8c5",
  "source": {
    "blob": "94d5401f4a44d8e06b176cbb070e400ce0cc408a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 327,
    "path": "GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:657266479971b98b9c24e8c5f13cb017effd9c20eacd6bdf0a0b4f28f0020742",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba6a4030-6f23-c61f-44f3-4c38cd098e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weakDescent_requires_finiteSubstrate :
    DownstreamArithmeticConsumer.weakDescent.FiniteSubstrateBefore := by
  simp [
    FiniteSubstrateBefore,
    targetLayer,
    GaloisCohomologyLayer.Before,
    GaloisCohomologyLayer.rank
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d5401f4a44d8e06b176cbb070e400ce0cc408a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
