# actualNinthNormalizedCriticalCovariance_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f989c65-f34d-01dd-7b24-739882adc82a",
  "kind": "theorem",
  "lexical_name": "actualNinthNormalizedCriticalCovariance_abs_le",
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
  "slug": "actualninthnormalizedcriticalcovariance-abs-le--53d44e1ec8f54ce3a0c47d18",
  "source": {
    "blob": "b2560f3723d49fed6e0cfaef4f4d7305ba30ba48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53d44e1ec8f54ce3a0c47d18f5b01068a4c29b72cfd0a0b0d69ce58d91c20a7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f989c65-f34d-01dd-7b24-739882adc82a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNinthNormalizedCriticalCovariance_abs_le {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    |actualNinthNormalizedCriticalCovariance A| ≤
      actualNinthNormalizedCriticalEarlyBudget T A + 101921587200 * eta := by
  have hl := actualCriticalErrorCovariance_late_edge_abs_le hA hT hTA heta hG
  have he := actualNinthNormalizedCriticalEarly_abs_le hA hT
  have hk : 0 ≤ A ^ 9 * Real.exp (-A) := by positivity
  have hn : A ≠ 0 := by linarith
  have hlate : |A ^ 9 * Real.exp (-A) *
      (∫ t in T..2 * A, actualCriticalErrorDensity A t)| ≤ 101921587200 * eta := by
    rw [abs_mul, abs_of_nonneg hk]
    calc
      _ ≤ A ^ 9 * Real.exp (-A) * (101921587200 * eta * Real.exp A / A ^ 9) :=
        mul_le_mul_of_nonneg_left hl hk
      _ = _ := by
        rw [Real.exp_neg]
        have he : Real.exp A ≠ 0 := (Real.exp_pos _).ne'
        field_simp
  unfold actualNinthNormalizedCriticalCovariance
  rw [actualCriticalErrorCovariance_split hA hT hTA, mul_add]
  exact (abs_add_le _ _).trans (add_le_add he hlate)

/-- Genuine ordinary actual centering yields normalized decay, with no unnormalized witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant45824b170e13ef1cb5c1f2bb39b436fae1f4e55c8413644f5a97707b45d4c9ca.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2560f3723d49fed6e0cfaef4f4d7305ba30ba48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
