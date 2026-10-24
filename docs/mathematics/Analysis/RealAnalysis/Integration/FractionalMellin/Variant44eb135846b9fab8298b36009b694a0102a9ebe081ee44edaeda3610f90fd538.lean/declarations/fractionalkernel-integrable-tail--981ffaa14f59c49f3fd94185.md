# fractionalKernel_integrable_tail

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
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a425e633-41c2-95c2-72bb-2cba7df973ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76b7c59e-a7ce-d6d7-a510-32c7c8e27a49",
  "kind": "theorem",
  "lexical_name": "fractionalKernel_integrable_tail",
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
  "slug": "fractionalkernel-integrable-tail--981ffaa14f59c49f3fd94185",
  "source": {
    "blob": "66b3ff770812875a4868a8421c1f2643c525a7e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:981ffaa14f59c49f3fd941855d8143f5256fdc27ebc7b86c930bdd74439702d4",
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

Occurrence: `result:76b7c59e-a7ce-d6d7-a510-32c7c8e27a49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalKernel_integrable_tail (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fractionalKernel s) (Ioi (1 : ℝ)) := by
  have hp : IntegrableOn (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) (Ioi (1 : ℝ)) :=
    integrableOn_Ioi_cpow_of_lt (by
      simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
      linarith) zero_lt_one
  have hf : IntegrableOn (fun x : ℝ =>
      ((⌊x⌋ : ℂ) + 1 / 2 - (x : ℂ)) * (x : ℂ) ^ (-(s + 1))) (Ioi (1 : ℝ)) := by
    simpa only [Nat.cast_one] using integrableOn_of_Zeta0_fun (N := 1) (by decide) hs
  apply ((hp.const_mul (1 / 2 : ℂ)).sub hf).congr
  filter_upwards [] with x
  simp only [fractionalKernel, Pi.sub_apply, Int.fract, Complex.ofReal_sub,
    Complex.ofReal_intCast]
  ring

/-- The near-zero integral is admitted in the full open strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b3ff770812875a4868a8421c1f2643c525a7e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
