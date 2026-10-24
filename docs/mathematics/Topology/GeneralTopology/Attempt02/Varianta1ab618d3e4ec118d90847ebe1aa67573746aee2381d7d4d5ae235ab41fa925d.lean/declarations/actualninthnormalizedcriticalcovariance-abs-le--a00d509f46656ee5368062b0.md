# actualNinthNormalizedCriticalCovariance_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d233425e-aa3f-543e-fb33-667be986165a",
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
  "slug": "actualninthnormalizedcriticalcovariance-abs-le--a00d509f46656ee5368062b0",
  "source": {
    "blob": "cd80aa35287a4bd0f5f0978b2144cb99a4085f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00d509f46656ee5368062b0cf960f17867a5192ead37d5952af77c9fa6a0c65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d233425e-aa3f-543e-fb33-667be986165a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–236.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd80aa35287a4bd0f5f0978b2144cb99a4085f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
