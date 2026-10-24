# pickupKernel_absolute_right_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b93ea90d-f9cb-ce4a-11ae-9f9af7f10ccf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:407155c8-2970-53c9-4590-1eeb32d02e97",
  "kind": "theorem",
  "lexical_name": "pickupKernel_absolute_right_tail",
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
  "slug": "pickupkernel-absolute-right-tail--a5532c4b995d15644ac626ac",
  "source": {
    "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 40,
    "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5532c4b995d15644ac626ac03c3d5a30e1199d4fa4a05f9a8f6f71a43317b91",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:407155c8-2970-53c9-4590-1eeb32d02e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupKernel_absolute_right_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    IntegrableOn (fun t => ‖pickupKernel c t‖) (Ioi H) ∧
      (∫ t : ℝ in Ioi H, ‖pickupKernel c t‖) ≤ absoluteDirichletBudget c/H := by
  obtain ⟨hi, heq⟩ := EulerP04RH.right_tail_majorant
    (A := absoluteDirichletBudget c) (m := 2) (by norm_num) (by linarith : 0 < H)
  have hdom : ∀ᵐ t ∂volume.restrict (Ioi H),
      ‖pickupKernel c t‖ ≤ absoluteDirichletBudget c*t^(-2:ℝ) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have htpos : 0 < t := lt_trans (by linarith : 0 < H) ht
    have hd := pickupKernel_norm_decay hc
      (show 1 ≤ |t| by rw [abs_of_pos htpos]; exact hH.trans ht.le)
    simpa only [abs_of_pos htpos] using hd
  have hiF : IntegrableOn (fun t => ‖pickupKernel c t‖) (Ioi H) :=
    hi.mono' (pickupKernel_continuous hc).norm.aestronglyMeasurable
      (hdom.mono (fun t ht => by simpa only [norm_norm] using ht))
  refine ⟨hiF, ?_⟩
  have hb := integral_mono_ae hiF hi hdom
  rw [heq] at hb
  simpa only [show (1:ℝ)-2 = -1 by norm_num, Real.rpow_neg_one,
    show (2:ℝ)-1 = 1 by norm_num, div_one, div_eq_mul_inv, inv_one, mul_one] using hb

/-- Reflection gives the left absolute tail without assuming kernel evenness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a86ceb1bdbde45ed63abe1a007d25b835c9962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
