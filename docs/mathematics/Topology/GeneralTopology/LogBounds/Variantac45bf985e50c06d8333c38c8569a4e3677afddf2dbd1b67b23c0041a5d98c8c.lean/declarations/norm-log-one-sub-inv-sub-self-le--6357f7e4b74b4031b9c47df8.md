# norm_log_one_sub_inv_sub_self_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c37eb735ffa490a848dc1e3302813ea2349c71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3ece84f-36aa-bd34-be5d-486683f64072",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c56318b0-c8bf-614c-ece1-e510a967a399",
  "kind": "lemma",
  "lexical_name": "norm_log_one_sub_inv_sub_self_le",
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
  "slug": "norm-log-one-sub-inv-sub-self-le--6357f7e4b74b4031b9c47df8",
  "source": {
    "blob": "45c37eb735ffa490a848dc1e3302813ea2349c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6357f7e4b74b4031b9c47df8e8052c40e893a4f4ec9cb3e1d2e130c65253b5ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c56318b0-c8bf-614c-ece1-e510a967a399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_log_one_sub_inv_sub_self_le {z : ℂ} (hz : ‖z‖ < 1) :
    ‖log (1 - z)⁻¹ - z‖ ≤ ‖z‖ ^ 2 * (1 - ‖z‖)⁻¹ / 2 := by
  convert norm_log_one_sub_inv_add_logTaylor_neg_le 1 hz using 2
  · simp [logTaylor_succ, logTaylor_zero, sub_eq_add_neg]
  · norm_num

open Filter Asymptotics in
/-- The Taylor series of the complex logarithm at `1` converges to the logarithm in the
open unit disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c37eb735ffa490a848dc1e3302813ea2349c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
