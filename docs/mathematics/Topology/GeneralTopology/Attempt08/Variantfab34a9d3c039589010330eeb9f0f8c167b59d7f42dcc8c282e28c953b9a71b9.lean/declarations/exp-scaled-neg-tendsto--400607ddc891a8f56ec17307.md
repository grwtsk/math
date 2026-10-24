# exp_scaled_neg_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e238a0af-40bc-e080-e180-9b27e24d7557",
  "kind": "theorem",
  "lexical_name": "exp_scaled_neg_tendsto",
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
  "slug": "exp-scaled-neg-tendsto--400607ddc891a8f56ec17307",
  "source": {
    "blob": "f485c444b673a42063558eff72049996dd5a31c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:400607ddc891a8f56ec17307641744e7b320a4be93f47628b6847851c6950082",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e238a0af-40bc-e080-e180-9b27e24d7557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_scaled_neg_tendsto (z : ℝ) (hz : 0 < z) :
    Tendsto (fun A : ℝ => Real.exp (-2*A*z)) atTop (𝓝 0) := by
  have h := Real.tendsto_exp_neg_atTop_nhds_zero.comp (tendsto_id.const_mul_atTop (show 0 < 2*z by positivity))
  convert h using 1; ext A; simp only [Function.comp_apply, id_eq]; congr 1; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f485c444b673a42063558eff72049996dd5a31c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
