# ball_sub_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc66afd40fcc0252f2bb914ad1dc2b972a455a31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb550b32fb380ee7d679465b321481580641131cd0d4e366b23e432f5712593f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36e259a6-894e-b2dd-f2c3-90fefe07ec13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04f164bf-ff18-0d0a-e0b0-0b4c1d9ad46d",
  "kind": "theorem",
  "lexical_name": "ball_sub_ball",
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
  "slug": "ball-sub-ball--132bf4af221576584102eaab",
  "source": {
    "blob": "cc66afd40fcc0252f2bb914ad1dc2b972a455a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 327,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Varianteb550b32fb380ee7d679465b321481580641131cd0d4e366b23e432f5712593f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:132bf4af221576584102eaab70258f97ea83a21215626a9e9157f03ed8bccddf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Varianteb550b32fb380ee7d679465b321481580641131cd0d4e366b23e432f5712593f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04f164bf-ff18-0d0a-e0b0-0b4c1d9ad46d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ball_sub_ball (hε : 0 < ε) (hδ : 0 < δ) (a b : E) :
    ball a ε - ball b δ = ball (a - b) (ε + δ) := by
  simp_rw [sub_eq_add_neg, neg_ball, ball_add_ball hε hδ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Varianteb550b32fb380ee7d679465b321481580641131cd0d4e366b23e432f5712593f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Varianteb550b32fb380ee7d679465b321481580641131cd0d4e366b23e432f5712593f.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc66afd40fcc0252f2bb914ad1dc2b972a455a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
