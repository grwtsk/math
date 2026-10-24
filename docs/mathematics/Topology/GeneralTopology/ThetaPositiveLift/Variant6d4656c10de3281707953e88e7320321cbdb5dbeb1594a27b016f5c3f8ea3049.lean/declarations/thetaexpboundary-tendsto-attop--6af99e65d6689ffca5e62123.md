# thetaExpBoundary_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51634ea6266d194951610f866a17c80cdfc1c3f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70d04865-2f6e-c871-f2be-59461b5cc0ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6108381e-5edd-ad1b-eacf-0484333a71e1",
  "kind": "theorem",
  "lexical_name": "thetaExpBoundary_tendsto_atTop",
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
  "slug": "thetaexpboundary-tendsto-attop--6af99e65d6689ffca5e62123",
  "source": {
    "blob": "51634ea6266d194951610f866a17c80cdfc1c3f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 321,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6af99e65d6689ffca5e621231e855a51a9e0ebf33c25f03f7be3136b3caadf0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6108381e-5edd-ad1b-eacf-0484333a71e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaExpBoundary_tendsto_atTop (u : ℂ) :
    Tendsto (thetaExpBoundary u) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  refine squeeze_zero'
    (g := fun t : ℝ =>
      thetaBoundaryDecayConstant u * Real.exp (-t)) ?_ ?_ ?_
  · exact Eventually.of_forall fun t => norm_nonneg _
  · exact thetaExpBoundary_norm_le_eventually u
  · simpa using
      (Real.tendsto_exp_atBot.comp tendsto_neg_atTop_atBot).const_mul
        (thetaBoundaryDecayConstant u)

/-- The evenized cosh/sinh boundary retained in the finite theta-Phi identity
therefore vanishes at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51634ea6266d194951610f866a17c80cdfc1c3f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
