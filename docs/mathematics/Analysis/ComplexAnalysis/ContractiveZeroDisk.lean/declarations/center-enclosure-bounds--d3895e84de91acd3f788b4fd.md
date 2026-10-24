# center_enclosure_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1e7991d-a22b-568a-c06e-89ccfa081b48",
  "kind": "theorem",
  "lexical_name": "center_enclosure_bounds",
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
  "slug": "center-enclosure-bounds--d3895e84de91acd3f788b4fd",
  "source": {
    "blob": "48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 123,
    "path": "GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3895e84de91acd3f788b4fdac6c2a908d6f50088c7ec54f539603445f9431cf",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e7991d-a22b-568a-c06e-89ccfa081b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem center_enclosure_bounds (f : ℂ → ℂ) (A c v d : ℂ) (r M ev ed : ℝ)
    (hr : 0 ≤ r) (hM0 : 0 ≤ M)
    (hf : AnalyticOnNhd ℂ f (closedBall c r))
    (hM : ∀ z ∈ closedBall c r, ‖deriv (deriv f) z‖ ≤ M)
    (hv : ‖f c - v‖ ≤ ev) (hd : ‖deriv f c - d‖ ≤ ed) :
    ‖A * f c‖ ≤ ‖A‖ * (‖v‖ + ev) ∧
      ∀ z ∈ closedBall c r, ‖1 - A * deriv f z‖ ≤
        ‖1 - A * d‖ + ‖A‖ * (ed + M * r) := by
  constructor
  · rw [norm_mul]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg A)
    have h := norm_le_norm_sub_add (f c) v
    linarith
  · intro z hz
    have hzR : ‖z - c‖ ≤ r := by simpa [mem_closedBall, dist_eq_norm] using hz
    have hvar := (derivative_variation f c r M hr hf hM z hz).trans
      (mul_le_mul_of_nonneg_left hzR hM0)
    have hdiff : ‖deriv f z - d‖ ≤ ed + M * r := by
      have ht := norm_sub_le_norm_sub_add_norm_sub (deriv f z) (deriv f c) d
      linarith
    have hid : 1 - A * deriv f z = (1 - A * d) - A * (deriv f z - d) := by ring
    rw [hid]
    calc
      _ ≤ ‖1 - A * d‖ + ‖A * (deriv f z - d)‖ := norm_sub_le _ _
      _ ≤ _ := by
        rw [norm_mul]
        exact add_le_add_right (mul_le_mul_of_nonneg_left hdiff (norm_nonneg A)) _

end
end GRWTSK.Analysis.Complex.ContractiveZeroDisk
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
