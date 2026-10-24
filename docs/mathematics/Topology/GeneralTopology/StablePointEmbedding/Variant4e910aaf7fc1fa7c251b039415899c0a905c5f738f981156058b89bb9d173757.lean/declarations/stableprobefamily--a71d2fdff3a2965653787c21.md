# StableProbeFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a20937ec37c9378e7dd1863d34621c09344e8d5e39e7a3964d3bb5d8c603b465",
  "kind": "structure",
  "lexical_name": "StableProbeFamily",
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
  "slug": "stableprobefamily--a71d2fdff3a2965653787c21",
  "source": {
    "blob": "497d4211aee5e389744cbfc1893ab7d6ff5c9db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a71d2fdff3a2965653787c217ba4416ba673de874594645709c6177eadd02afe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a20937ec37c9378e7dd1863d34621c09344e8d5e39e7a3964d3bb5d8c603b465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StableProbeFamily
    (State : Type u) (Probe : Type v)
    [TopologicalSpace State] where
  observe : Probe → State → ℝ
  stable : Probe → Prop
  everyProbeStable : ∀ probe, stable probe
  familyDigest : Digest
  familyAddress : ObjectAddress

namespace StableProbeFamily

variable
    {State : Type u} {Probe : Type v}
    [TopologicalSpace State]

/-- Product profile of all certified stable probes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `497d4211aee5e389744cbfc1893ab7d6ff5c9db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
