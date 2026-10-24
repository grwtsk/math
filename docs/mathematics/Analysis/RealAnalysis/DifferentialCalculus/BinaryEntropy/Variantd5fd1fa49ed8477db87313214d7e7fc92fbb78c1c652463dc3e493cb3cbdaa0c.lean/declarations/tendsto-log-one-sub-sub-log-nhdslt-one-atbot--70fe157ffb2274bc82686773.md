# tendsto_log_one_sub_sub_log_nhdsLT_one_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74f76bc67e50141bcef64b117b4f37454442e791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:755ebc06-e1c6-c186-fb4a-0027bf9d7caa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a92099a0-905a-2e22-12c0-4af13077cb40",
  "kind": "lemma",
  "lexical_name": "tendsto_log_one_sub_sub_log_nhdsLT_one_atBot",
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
  "slug": "tendsto-log-one-sub-sub-log-nhdslt-one-atbot--70fe157ffb2274bc82686773",
  "source": {
    "blob": "74f76bc67e50141bcef64b117b4f37454442e791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70fe157ffb2274bc82686773add6b3264b55e51c083ff23254b1db5a94c07e81",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92099a0-905a-2e22-12c0-4af13077cb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_log_one_sub_sub_log_nhdsLT_one_atBot :
    Tendsto (fun p ↦ log (1 - p) - log p) (𝓝[<] 1) atBot := by
  apply Filter.tendsto_atBot_add_right_of_ge' (𝓝[<] 1) (-log (1 - 2⁻¹))
  · have : Tendsto log (𝓝[>] 0) atBot := Real.tendsto_log_nhdsGT_zero
    apply Tendsto.comp (f := (1 - ·)) (g := log) this
    have contF : Continuous ((1 : ℝ) - ·) := continuous_sub_left 1
    have : MapsTo ((1 : ℝ) - ·) (Iio 1) (Ioi 0) := by
      intro p hx
      simp_all only [mem_Iio, mem_Ioi, sub_pos]
    convert! ContinuousWithinAt.tendsto_nhdsWithin (x := (1 : ℝ)) contF.continuousWithinAt this
    exact Eq.symm (sub_eq_zero_of_eq rfl)
  · have h₁ : (1 : ℝ) - (2 : ℝ)⁻¹ < 1 := by norm_num
    filter_upwards [Ico_mem_nhdsLT h₁] with p hx
    gcongr
    exact hx.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74f76bc67e50141bcef64b117b4f37454442e791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
