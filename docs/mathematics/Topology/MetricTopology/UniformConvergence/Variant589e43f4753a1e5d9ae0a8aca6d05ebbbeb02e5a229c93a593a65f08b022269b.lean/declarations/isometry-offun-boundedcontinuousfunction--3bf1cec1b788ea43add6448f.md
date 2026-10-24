# isometry_ofFun_boundedContinuousFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03ff419df7ae297373b1b0390ccc08f6ae9cb76f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c91d5c3-18e7-7ae4-f3b9-3dc772b8617e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f241545-dd66-0c0e-fec4-32c4db85e0d6",
  "kind": "lemma",
  "lexical_name": "isometry_ofFun_boundedContinuousFunction",
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
  "slug": "isometry-offun-boundedcontinuousfunction--3bf1cec1b788ea43add6448f",
  "source": {
    "blob": "03ff419df7ae297373b1b0390ccc08f6ae9cb76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 168,
    "path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf1cec1b788ea43add6448fc73f071f05f13bc65d537fc1c94b62810cba5e28",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f241545-dd66-0c0e-fec4-32c4db85e0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isometry_ofFun_boundedContinuousFunction [TopologicalSpace α] :
    Isometry (ofFun ∘ DFunLike.coe : (α →ᵇ β) → α →ᵤ β) := by
  simp [Isometry, edist_def, edist_eq_iSup]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03ff419df7ae297373b1b0390ccc08f6ae9cb76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
