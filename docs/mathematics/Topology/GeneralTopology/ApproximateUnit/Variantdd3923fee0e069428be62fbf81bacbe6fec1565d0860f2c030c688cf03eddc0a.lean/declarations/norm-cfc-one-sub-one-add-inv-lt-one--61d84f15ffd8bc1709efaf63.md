# norm_cfcₙ_one_sub_one_add_inv_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24124d5d-e7df-4026-ff5c-f2eee0bde1c5",
  "kind": "lemma",
  "lexical_name": "norm_cfcₙ_one_sub_one_add_inv_lt_one",
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
  "slug": "norm-cfc-one-sub-one-add-inv-lt-one--61d84f15ffd8bc1709efaf63",
  "source": {
    "blob": "a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61d84f15ffd8bc1709efaf6397eb447270350e604df3b8b6dfaaa5587c297fc5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24124d5d-e7df-4026-ff5c-f2eee0bde1c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_cfcₙ_one_sub_one_add_inv_lt_one (a : A) :
    ‖cfcₙ (fun x : ℝ≥0 ↦ 1 - (1 + x)⁻¹) a‖ < 1 :=
  nnnorm_cfcₙ_nnreal_lt fun x _ ↦ tsub_lt_self zero_lt_one (by positivity)

-- the calls to `fun_prop` with a discharger set off the linter
set_option linter.style.multiGoal false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
