# fractionalKernel_scaled_integral

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
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c757e29a-0d78-1651-a5ac-faf1c68ca90f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d312ef34-860d-475a-c06a-fa9a67b0ea55",
  "kind": "theorem",
  "lexical_name": "fractionalKernel_scaled_integral",
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
  "slug": "fractionalkernel-scaled-integral--aebb91d62f1620a966c12ccb",
  "source": {
    "blob": "66b3ff770812875a4868a8421c1f2643c525a7e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aebb91d62f1620a966c12ccb280246e1f50172e08090f2b6c9122d07b93fe126",
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

Occurrence: `result:d312ef34-860d-475a-c06a-fa9a67b0ea55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalKernel_scaled_integral (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1)
    (d : ℝ) (hd : 0 < d) :
    (∫ x : ℝ in Ioi (0 : ℝ), ((Int.fract (x / d) : ℝ) : ℂ) *
      (x : ℂ) ^ (-(s + 1))) = -(d : ℂ) ^ (-s) * riemannZeta s / s := by
  have hm : mellin (fun x : ℝ => ((Int.fract x : ℝ) : ℂ)) (-s) =
      -riemannZeta s / s := by
    simpa only [mellin, smul_eq_mul, sub_eq_add_neg, neg_add,
      mul_comm, fractionalKernel] using fractionalKernel_integral s hs hs'
  have hc := mellin_comp_mul_left (fun x : ℝ => ((Int.fract x : ℝ) : ℂ))
    (-s) (inv_pos.mpr hd)
  rw [hm] at hc
  simp only [Complex.ofReal_inv, neg_neg, Complex.inv_cpow_ofReal_nonneg hd.le,
    ← Complex.cpow_neg, smul_eq_mul] at hc
  simpa only [mellin, smul_eq_mul, sub_eq_add_neg, neg_add, mul_comm,
    div_eq_mul_inv, neg_mul, mul_neg, mul_assoc, mul_left_comm] using hc

end
end FractionalMellinScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b3ff770812875a4868a8421c1f2643c525a7e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
