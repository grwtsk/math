# ofNNReal_limsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aea6701b-50f7-52f2-0b0f-987d2e281dea",
  "kind": "lemma",
  "lexical_name": "ofNNReal_limsup",
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
  "slug": "ofnnreal-limsup--08bd09f0030b2efdcb9c9a70",
  "source": {
    "blob": "2b6ad1b40d452d54d1359a5cff20c3984b9d1240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1423,
    "line": 1417,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08bd09f0030b2efdcb9c9a70da99edd30d468862c9a5217ec4e4ed1db723db10",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aea6701b-50f7-52f2-0b0f-987d2e281dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1417–1423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofNNReal_limsup {u : ι → ℝ≥0} (hf : f.IsBoundedUnder (· ≤ ·) u) :
    limsup u f = limsup (fun i ↦ (u i : ℝ≥0∞)) f := by
  refine eq_of_forall_nnreal_iff fun r ↦ ?_
  rw [coe_le_coe, le_limsup_iff, le_limsup_iff]
  simp [forall_ennreal]

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean#L1417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6ad1b40d452d54d1359a5cff20c3984b9d1240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
