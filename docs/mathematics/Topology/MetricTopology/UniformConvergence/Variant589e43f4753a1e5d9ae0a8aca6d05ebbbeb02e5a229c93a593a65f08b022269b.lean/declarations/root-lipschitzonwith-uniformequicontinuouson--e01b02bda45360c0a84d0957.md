# _root_.LipschitzOnWith.uniformEquicontinuousOn

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
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c0e03e3-572e-6a91-ca1b-192c11f1719a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08a0d219-0359-664e-1b02-2710af7f1698",
  "kind": "lemma",
  "lexical_name": "_root_.LipschitzOnWith.uniformEquicontinuousOn",
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
  "slug": "root-lipschitzonwith-uniformequicontinuouson--e01b02bda45360c0a84d0957",
  "source": {
    "blob": "03ff419df7ae297373b1b0390ccc08f6ae9cb76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 114,
    "path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e01b02bda45360c0a84d09576ffea80eeb31b8b51062bedc1324b159771d183b",
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

Occurrence: `result:08a0d219-0359-664e-1b02-2710af7f1698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.LipschitzOnWith.uniformEquicontinuousOn (f : α → γ → β) (K : ℝ≥0) {s : Set γ}
    (h : ∀ c, LipschitzOnWith K (f c) s) : UniformEquicontinuousOn f s := by
  rw [uniformEquicontinuousOn_iff_uniformContinuousOn]
  rw [← lipschitzOnWith_ofFun_iff] at h
  exact h.uniformContinuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03ff419df7ae297373b1b0390ccc08f6ae9cb76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
