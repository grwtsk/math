# fractionalKernel_scaled_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66b3ff770812875a4868a8421c1f2643c525a7e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:430c72bb-c778-e792-f57b-d90cb841c6b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2f227a0-de50-3711-08be-6a9e3039cc1b",
  "kind": "theorem",
  "lexical_name": "fractionalKernel_scaled_integrable",
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
  "slug": "fractionalkernel-scaled-integrable--50bc8443eb40f2467202ccf0",
  "source": {
    "blob": "66b3ff770812875a4868a8421c1f2643c525a7e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50bc8443eb40f2467202ccf05dfc2b5d8ea6056c593a21a686dc1e76cc018766",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2f227a0-de50-3711-08be-6a9e3039cc1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalKernel_scaled_integrable (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1)
    (d : ℝ) (hd : 0 < d) :
    IntegrableOn (fun x : ℝ => ((Int.fract (x / d) : ℝ) : ℂ) *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) := by
  have hm : MellinConvergent (fun x : ℝ => ((Int.fract x : ℝ) : ℂ)) (-s) := by
    change IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-s - 1) *
      ((Int.fract t : ℝ) : ℂ)) (Ioi (0 : ℝ))
    apply (fractionalKernel_integrable s hs hs').congr_fun _ measurableSet_Ioi
    intro x hx
    simp only [fractionalKernel, neg_add, sub_eq_add_neg, mul_comm]
  have hc := (MellinConvergent.comp_mul_left (f := fun x : ℝ =>
    ((Int.fract x : ℝ) : ℂ)) (s := -s) (inv_pos.mpr hd)).mpr hm
  simpa only [MellinConvergent, smul_eq_mul, sub_eq_add_neg, neg_add,
    mul_comm, div_eq_mul_inv] using hc

/-- The scaling factor and phase are retained in the exact fractional-part Mellin formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b3ff770812875a4868a8421c1f2643c525a7e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
