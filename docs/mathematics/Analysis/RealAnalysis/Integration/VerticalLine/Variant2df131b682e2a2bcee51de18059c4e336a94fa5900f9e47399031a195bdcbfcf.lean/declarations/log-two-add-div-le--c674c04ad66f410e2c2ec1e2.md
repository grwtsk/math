# log_two_add_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab2272a2-0af5-63de-83b9-e6b3c905b100",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:902e7132-bf57-9774-0e2e-7af873fe0cd4",
  "kind": "lemma",
  "lexical_name": "log_two_add_div_le",
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
  "slug": "log-two-add-div-le--c674c04ad66f410e2c2ec1e2",
  "source": {
    "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 552,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c674c04ad66f410e2c2ec1e2d1c6018a58ddcf8445297539ccdcac2cdbb081d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902e7132-bf57-9774-0e2e-7af873fe0cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_two_add_div_le {x : ℝ} (hx : 0 ≤ x) :
    Real.log (2 + x) / (1 + x ^ 2) ≤ 6 * (1 + x) ^ (-(3 / 2 : ℝ)) := by
  have h1 := Real.log_le_rpow_div (show (0:ℝ) ≤ 2 + x by linarith) (show (0:ℝ) < 1/2 by norm_num)
  have h2 : (2 + x) ^ (1 / 2 : ℝ) ≤ (3 / 2) * (1 + x) ^ (1 / 2 : ℝ) := by
    have : (2 + x) ^ (1 / 2 : ℝ) ≤ ((9/4) * (1 + x)) ^ (1 / 2 : ℝ) :=
      Real.rpow_le_rpow (by linarith) (by linarith) (by norm_num)
    rw [Real.mul_rpow (by norm_num) (by linarith)] at this
    rw [show ((9:ℝ)/4) ^ (1/2:ℝ) = 3/2 by
      rw [show (9:ℝ)/4 = (3/2) ^ (2:ℝ) by norm_num, ← Real.rpow_mul (by norm_num)]; norm_num] at this
    exact this
  have hlog : Real.log (2 + x) ≤ 3 * (1 + x) ^ (1 / 2 : ℝ) := by
    have : (2 + x) ^ (1 / 2 : ℝ) / (1 / 2) = 2 * (2 + x) ^ (1 / 2 : ℝ) := by ring
    rw [this] at h1; linarith
  have hsq : 1 / (1 + x ^ 2) ≤ 2 * (1 + x) ^ (-2 : ℝ) := by
    rw [Real.rpow_neg (by linarith), Real.rpow_two, div_le_iff₀ (by positivity)]
    rw [show 2 * ((1 + x) ^ 2)⁻¹ * (1 + x ^ 2) = 2 * (1 + x ^ 2) / (1 + x) ^ 2 by ring,
      le_div_iff₀ (by positivity)]
    nlinarith [sq_nonneg (x - 1)]
  have h0 : 0 ≤ Real.log (2 + x) := Real.log_nonneg (by linarith)
  calc Real.log (2 + x) / (1 + x ^ 2) = Real.log (2 + x) * (1 / (1 + x ^ 2)) := by ring
    _ ≤ (3 * (1 + x) ^ (1 / 2 : ℝ)) * (2 * (1 + x) ^ (-2 : ℝ)) :=
        mul_le_mul hlog hsq (by positivity) (by positivity)
    _ = 6 * ((1 + x) ^ (1 / 2 : ℝ) * (1 + x) ^ (-2 : ℝ)) := by ring
    _ = 6 * (1 + x) ^ (-(3 / 2 : ℝ)) := by rw [← Real.rpow_add (by linarith)]; norm_num

/-- uniform decay of H = paperFT k near the real axis: for |Im z| ≤ 1,
‖paperFT k z‖ ≤ 2 e^{Lam} (‖k‖₁ + ‖k″‖₁)/(1 + (Re z)²). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc4a8b030c00845c3242faa3dbec21eaae5522b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
