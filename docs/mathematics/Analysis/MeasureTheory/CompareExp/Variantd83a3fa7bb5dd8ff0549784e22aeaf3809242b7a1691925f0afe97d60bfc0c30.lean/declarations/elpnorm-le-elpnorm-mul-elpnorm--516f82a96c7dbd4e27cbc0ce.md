# eLpNorm'_le_eLpNorm'_mul_eLpNorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e26b0e1d-fccd-ebe9-406f-9a18bdd6f8b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05a0515d-ad8a-6fa1-934a-e67126f459f3",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_le_eLpNorm'_mul_eLpNorm'",
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
  "slug": "elpnorm-le-elpnorm-mul-elpnorm--516f82a96c7dbd4e27cbc0ce",
  "source": {
    "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 338,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:516f82a96c7dbd4e27cbc0cec810f58cdd902fd16b5e4692315b5485f9199a94",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05a0515d-ad8a-6fa1-934a-e67126f459f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_le_eLpNorm'_mul_eLpNorm' {p q r : ℝ} (hf : AEStronglyMeasurable f μ)
    (hg : AEStronglyMeasurable g μ) (b : E → F → G) (c : ℝ≥0)
    (h : ∀ᵐ x ∂μ, ‖b (f x) (g x)‖₊ ≤ c * ‖f x‖₊ * ‖g x‖₊) (hro_lt : 0 < r) (hrp : r < p)
    (hpqr : 1 / r = 1 / p + 1 / q) :
    eLpNorm' (fun x => b (f x) (g x)) r μ ≤ c * eLpNorm' f p μ * eLpNorm' g q μ := by
  calc
    eLpNorm' (fun x => b (f x) (g x)) r μ
      ≤ eLpNorm' (fun x ↦ (c : ℝ) • ‖f x‖ * ‖g x‖) r μ := by
      simp only [eLpNorm']
      gcongr ?_ ^ _
      refine lintegral_mono_ae <| h.mono fun a ha ↦ ?_
      gcongr
      simp only [enorm_eq_nnnorm, ENNReal.coe_le_coe]
      simpa using! ha
    _ ≤ c * eLpNorm' f p μ * eLpNorm' g q μ := by
      simp only [smul_mul_assoc, ← Pi.smul_def, eLpNorm'_const_smul _ hro_lt]
      rw [Real.enorm_eq_ofReal c.coe_nonneg, ENNReal.ofReal_coe_nnreal, mul_assoc]
      gcongr
      simpa only [eLpNorm', enorm_mul, enorm_norm] using!
        ENNReal.lintegral_Lp_mul_le_Lq_mul_Lr hro_lt hrp hpqr μ hf.enorm hg.enorm

/-- Hölder's inequality, as an inequality on the `ℒp` seminorm of an elementwise operation
`fun x => b (f x) (g x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca89c56b1e589d63ce7c4f6721177ccf1e147411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
