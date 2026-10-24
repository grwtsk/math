# continuousAt_cpow_zero_of_re_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90c8f28d6a1ff5388ee0ad9cbf8bf31efbe87bfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb16802e-7cfb-663d-6c55-28cc8dcac487",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5fd1f23-91ea-dadb-3020-806035ef0b9e",
  "kind": "theorem",
  "lexical_name": "continuousAt_cpow_zero_of_re_pos",
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
  "slug": "continuousat-cpow-zero-of-re-pos--299c12c9bbfd65a7622c8e79",
  "source": {
    "blob": "90c8f28d6a1ff5388ee0ad9cbf8bf31efbe87bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:299c12c9bbfd65a7622c8e797053c41793c402325647b3f9c8f5aa96a2f42c9b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5fd1f23-91ea-dadb-3020-806035ef0b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_cpow_zero_of_re_pos {z : ℂ} (hz : 0 < z.re) :
    ContinuousAt (fun x : ℂ × ℂ => x.1 ^ x.2) (0, z) := by
  have hz₀ : z ≠ 0 := ne_of_apply_ne re hz.ne'
  rw [ContinuousAt, zero_cpow hz₀, tendsto_zero_iff_norm_tendsto_zero]
  refine squeeze_zero (fun _ => norm_nonneg _) (fun _ => norm_cpow_le _ _) ?_
  simp only [div_eq_mul_inv, ← Real.exp_neg]
  refine Tendsto.zero_mul_isBoundedUnder_le ?_ ?_
  · convert
        (continuous_fst.norm.tendsto ((0 : ℂ), z)).rpow
          ((continuous_re.comp continuous_snd).tendsto _) _ <;>
      simp [hz, Real.zero_rpow hz.ne']
  · simp only [Function.comp_def, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    rcases exists_gt |im z| with ⟨C, hC⟩
    refine ⟨Real.exp (π * C), eventually_map.2 ?_⟩
    refine
      (((continuous_im.comp continuous_snd).abs.tendsto (_, z)).eventually (gt_mem_nhds hC)).mono
        fun z hz => Real.exp_le_exp.2 <| (neg_le_abs _).trans ?_
    rw [_root_.abs_mul]
    exact
      mul_le_mul (abs_le.2 ⟨(neg_pi_lt_arg _).le, arg_le_pi _⟩) hz.le (_root_.abs_nonneg _)
        Real.pi_pos.le

open ComplexOrder in
/-- See also `continuousAt_cpow` for a version that assumes `p.1 ≠ 0` but makes no
assumptions about `p.2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c8f28d6a1ff5388ee0ad9cbf8bf31efbe87bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
