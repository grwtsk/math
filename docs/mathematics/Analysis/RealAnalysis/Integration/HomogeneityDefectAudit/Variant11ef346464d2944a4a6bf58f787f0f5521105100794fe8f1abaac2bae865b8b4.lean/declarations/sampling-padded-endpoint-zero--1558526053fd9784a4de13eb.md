# sampling_padded_endpoint_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "044e66f2f06a74fbca6adea60d670ea746addb90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:065cb6dc-884c-ebf5-b956-5dbf208103ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79a750cb-2a2b-53fc-d9b0-52b49ffbbd08",
  "kind": "theorem",
  "lexical_name": "sampling_padded_endpoint_zero",
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
  "slug": "sampling-padded-endpoint-zero--1558526053fd9784a4de13eb",
  "source": {
    "blob": "044e66f2f06a74fbca6adea60d670ea746addb90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1558526053fd9784a4de13ebd0d5968bd872f4d8ab3f604e388fc78449aab424",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79a750cb-2a2b-53fc-d9b0-52b49ffbbd08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampling_padded_endpoint_zero (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0)
    (u : ℝ) (hu : (⌊Real.exp (2 * A) / x⌋₊ + 1 : ℕ) ≤ u) :
    TwoMomentSampling.samplingIntegrand F x u = 0 := by
  have hN : (0 : ℝ) < (⌊Real.exp (2 * A) / x⌋₊ + 1 : ℕ) := by positivity
  apply sampling_zero A x u F hx (hN.trans_le hu) hzero
  have hfloor := Nat.lt_floor_add_one (Real.exp (2 * A) / x)
  have hd : Real.exp (2 * A) / x < u := by
    push_cast at hu
    exact hfloor.trans_le hu
  simpa only [mul_comm] using ((div_lt_iff₀ hx).mp hd).le

/-- The inner quadrature preserves the negative half-beta coefficient and gains inverse A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `044e66f2f06a74fbca6adea60d670ea746addb90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
