# mem_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57187c188cb8d0269da55fb0ac05a6e8e581dcb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75a52874-eae1-c4a5-1dfb-e5a49a087cd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44d9fd8c-f797-5957-850a-36f64dd9d0a0",
  "kind": "theorem",
  "lexical_name": "mem_closedBall",
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
  "slug": "mem-closedball--09c914466e8f391f348c989b",
  "source": {
    "blob": "57187c188cb8d0269da55fb0ac05a6e8e581dcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 209,
    "path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c914466e8f391f348c989b98af18e3a8486257150a3ce9ef2ac474456fcdda",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d9fd8c-f797-5957-850a-36f64dd9d0a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mem_closedBall (t : Icc v.tMin v.tMax) : f t ∈ closedBall v.x₀ v.R :=
  calc
    dist (f t) v.x₀ = dist (f t) (f.toFun v.t₀) := by rw [f.map_t₀']
    _ ≤ v.C * dist t v.t₀ := (f.lipschitz.dist_le_mul _ _)
    _ ≤ v.C * v.tDist := (mul_le_mul_of_nonneg_left (v.dist_t₀_le _) v.C.2)
    _ ≤ v.R := v.isPicardLindelof.C_mul_le_R
#align picard_lindelof.fun_space.mem_closed_ball PicardLindelof.FunSpace.mem_closedBall

/-- Given a curve $γ \colon [t_{\min}, t_{\max}] → E$, `PicardLindelof.vComp` is the function
$F(t)=v(π t, γ(π t))$, where `π` is the projection $ℝ → [t_{\min}, t_{\max}]$. The integral of this
function is the image of `γ` under the contracting map we are going to define below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57187c188cb8d0269da55fb0ac05a6e8e581dcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
