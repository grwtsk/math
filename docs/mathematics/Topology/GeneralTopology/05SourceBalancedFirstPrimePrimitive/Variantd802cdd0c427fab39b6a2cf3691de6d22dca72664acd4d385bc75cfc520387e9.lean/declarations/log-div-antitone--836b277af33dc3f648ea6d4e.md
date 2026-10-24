# log_div_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f9f14c7-0af5-ecd2-9bee-40783ce395d8",
  "kind": "theorem",
  "lexical_name": "log_div_antitone",
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
  "slug": "log-div-antitone--836b277af33dc3f648ea6d4e",
  "source": {
    "blob": "5ea59110bd557f722c2c4626699819be2d9bb4d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:836b277af33dc3f648ea6d4e6bc16fe519f65b0f6cf0e4d463769e8c76868e89",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f9f14c7-0af5-ecd2-9bee-40783ce395d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_div_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    Real.log A / A ≤ Real.log Q / Q := by
  have hp : 0 < Q := by linarith
  have ha : 0 < A := by linarith
  have hlog : 1 ≤ Real.log Q := (Real.le_log_iff_exp_le hp).2
    (by linarith [Real.exp_one_lt_three])
  have hl := Real.log_le_sub_one_of_pos (div_pos ha hp)
  rw [Real.log_div ha.ne' hp.ne'] at hl
  apply (div_le_div_iff₀ ha hp).2
  have hmul := mul_le_mul_of_nonneg_left hl hp.le
  have hrem := mul_nonneg (show 0 ≤ A - Q by linarith)
    (show 0 ≤ Real.log Q - 1 by linarith)
  have hAQ : Q * (A / Q - 1) = A - Q := by field_simp
  rw [hAQ] at hmul
  nlinarith

/-- Actual head on every real A beyond the same supplied radius Q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea59110bd557f722c2c4626699819be2d9bb4d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
