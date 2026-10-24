# norm_circleRieszCandidate_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21ca1eb-df07-f498-798a-7de008a9566e",
  "kind": "theorem",
  "lexical_name": "norm_circleRieszCandidate_sub_le",
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
  "slug": "norm-circlerieszcandidate-sub-le--8230025bcb5c06e913a31a7d",
  "source": {
    "blob": "995961d12505855c4baca56268cdd0f66f115992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 392,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8230025bcb5c06e913a31a7d3bc4dcbefc97b077d5dd980020352e9f215d4487",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21ca1eb-df07-f498-798a-7de008a9566e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_circleRieszCandidate_sub_le
    (A B : H →L[ℂ] H) (c : ℂ) {r MA MB : ℝ} (hr : 0 ≤ r)
    (hA : Metric.sphere c r ⊆ resolventSet ℂ A)
    (hB : Metric.sphere c r ⊆ resolventSet ℂ B)
    (hMA : ∀ z ∈ Metric.sphere c r, ‖resolvent A z‖ ≤ MA)
    (hMB : ∀ z ∈ Metric.sphere c r, ‖resolvent B z‖ ≤ MB) :
    ‖circleRieszCandidate B c r - circleRieszCandidate A c r‖ ≤
      r * (MB * ‖B - A‖ * MA) := by
  rw [circleRieszCandidate_sub A B c hr hA hB]
  apply circleIntegral.norm_two_pi_i_inv_smul_integral_le_of_norm_le_const hr
  intro z hz
  calc
    ‖resolvent B z - resolvent A z‖ ≤
        ‖resolvent B z‖ * ‖B - A‖ * ‖resolvent A z‖ :=
      norm_resolvent_perturbation_le A B (hA hz) (hB hz)
    _ ≤ MB * ‖B - A‖ * ‖resolvent A z‖ :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right (hMB z hz) (norm_nonneg _)) (norm_nonneg _)
    _ ≤ MB * ‖B - A‖ * MA :=
      mul_le_mul_of_nonneg_left (hMA z hz)
        (mul_nonneg ((norm_nonneg _).trans (hMB z hz)) (norm_nonneg _))

/-- Circle integration preserves pointwise commutation. -/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995961d12505855c4baca56268cdd0f66f115992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
