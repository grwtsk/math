# lipschitzWith_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dccb153-83b7-8d8d-db8a-03bb76cad884",
  "kind": "lemma",
  "lexical_name": "lipschitzWith_eval",
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
  "slug": "lipschitzwith-eval--874ed6f55a5c6b1d137f2e5e",
  "source": {
    "blob": "2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 271,
    "path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:874ed6f55a5c6b1d137f2e5e5188bd8adfa0f95c40d101a6a0657d5934f2a6ab",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dccb153-83b7-8d8d-db8a-03bb76cad884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lipschitzWith_eval {x : α} (hx : x ∈ ⋃₀ 𝔖) :
    LipschitzWith 1 (fun f : α →ᵤ[𝔖] β ↦ toFun 𝔖 f x) := by
  intro f g
  simpa only [ENNReal.coe_one, one_mul] using edist_eval_le hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
