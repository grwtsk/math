# nnrealPart_smul_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05c0d61a-869f-a091-ad62-9aaecbc83be2",
  "kind": "lemma",
  "lexical_name": "nnrealPart_smul_neg",
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
  "slug": "nnrealpart-smul-neg--f72eb7e9bba94b8fa38245e2",
  "source": {
    "blob": "756663c8d2496bfcef23a2d7e7545579bcc4bdf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 718,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f72eb7e9bba94b8fa38245e2598da28e7e451b94705c10c70214a32291cffbbe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05c0d61a-869f-a091-ad62-9aaecbc83be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnrealPart_smul_neg (f : C_c(α, ℝ)) {a : ℝ} (ha : a ≤ 0) :
    (a • f).nnrealPart = (-a).toNNReal • (-f).nnrealPart := by
  ext x
  simp only [nnrealPart_apply, coe_smul, Pi.smul_apply, smul_eq_mul, Real.coe_toNNReal', coe_neg,
    Pi.neg_apply, NNReal.coe_mul]
  rcases le_total 0 (f x) with hfx | hfx
  · simp [mul_nonpos_iff, ha, hfx]
  · simp [ha, hfx, mul_nonneg_of_nonpos_of_nonpos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756663c8d2496bfcef23a2d7e7545579bcc4bdf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
