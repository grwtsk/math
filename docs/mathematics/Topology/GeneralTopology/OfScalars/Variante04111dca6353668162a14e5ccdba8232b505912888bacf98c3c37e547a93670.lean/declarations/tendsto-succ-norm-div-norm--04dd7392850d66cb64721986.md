# tendsto_succ_norm_div_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f83542cbe5757a810a4981b144abf46ad70f881",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f268fbb-719b-24ff-45d7-b31048a9a607",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:284181de-0583-5a59-8992-1eeabd61241d",
  "kind": "theorem",
  "lexical_name": "tendsto_succ_norm_div_norm",
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
  "slug": "tendsto-succ-norm-div-norm--04dd7392850d66cb64721986",
  "source": {
    "blob": "4f83542cbe5757a810a4981b144abf46ad70f881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04dd7392850d66cb647219862c52d15c5fe9bd055a3b813cf70cae9d10916bd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:284181de-0583-5a59-8992-1eeabd61241d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tendsto_succ_norm_div_norm {r r' : ℝ≥0} (hr' : r' ≠ 0)
    (hc : Tendsto (fun n ↦ ‖c n.succ‖ / ‖c n‖) atTop (𝓝 r)) :
      Tendsto (fun n ↦ ‖‖c (n + 1)‖ * r' ^ (n + 1)‖ /
        ‖‖c n‖ * r' ^ n‖) atTop (𝓝 ↑(r' * r)) := by
  simp_rw [norm_mul, norm_norm, mul_div_mul_comm, ← norm_div, pow_succ, mul_div_right_comm,
    div_self (pow_ne_zero _ (NNReal.coe_ne_zero.mpr hr')), one_mul, norm_div, NNReal.norm_eq]
  exact mul_comm r' r ▸ hc.mul tendsto_const_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f83542cbe5757a810a4981b144abf46ad70f881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
