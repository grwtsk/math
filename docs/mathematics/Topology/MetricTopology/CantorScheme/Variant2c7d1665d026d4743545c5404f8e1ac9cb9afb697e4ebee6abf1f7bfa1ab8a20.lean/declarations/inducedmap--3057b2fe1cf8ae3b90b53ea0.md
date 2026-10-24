# inducedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f3e8d152903fa71adb1d1ba3ed102974ff503c57969b7d7f36617be68aaafee",
  "kind": "def",
  "lexical_name": "inducedMap",
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
  "slug": "inducedmap--3057b2fe1cf8ae3b90b53ea0",
  "source": {
    "blob": "2c9202a0abd41a545c76cf54f32c1b50fcb5ed5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 65,
    "path": "GRWTSK/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3057b2fe1cf8ae3b90b53ea0122f6cce96fda0f65b25f8b852760fa5c4718c7b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f3e8d152903fa71adb1d1ba3ed102974ff503c57969b7d7f36617be68aaafee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inducedMap : Σ s : Set (ℕ → β), s → α :=
  ⟨{x | Set.Nonempty (⋂ n : ℕ, A (res x n))}, fun x => x.property.some⟩

section Topology

/-- A scheme is antitone if each set contains its children. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9202a0abd41a545c76cf54f32c1b50fcb5ed5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
