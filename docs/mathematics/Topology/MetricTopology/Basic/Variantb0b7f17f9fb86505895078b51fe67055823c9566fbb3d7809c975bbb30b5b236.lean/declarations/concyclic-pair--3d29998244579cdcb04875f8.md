# concyclic_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "554f03b1db2739bec6345283c07b3c24759a12fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:848f0205-9eb2-5df4-7557-960c84dd2754",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aee1fc0a-d0f9-971d-2694-a3018c5cf70c",
  "kind": "theorem",
  "lexical_name": "concyclic_pair",
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
  "slug": "concyclic-pair--3d29998244579cdcb04875f8",
  "source": {
    "blob": "554f03b1db2739bec6345283c07b3c24759a12fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 219,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d29998244579cdcb04875f8f6bc68c7ea94a9d34f783d154dd66d6d08d9d911",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aee1fc0a-d0f9-971d-2694-a3018c5cf70c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concyclic_pair (p₁ p₂ : P) : Concyclic ({p₁, p₂} : Set P) :=
  ⟨cospherical_pair p₁ p₂, coplanar_pair ℝ p₁ p₂⟩

namespace Sphere

/-- `s.IsDiameter p₁ p₂` says that `p₁` and `p₂` are the two endpoints of a diameter of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554f03b1db2739bec6345283c07b3c24759a12fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
