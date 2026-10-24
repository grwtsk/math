# forwardComplex_eq_sum_translates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0052ae65b8f803605e99c7883429fbd4ed3cd364",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d05a715c-c3d7-d51b-9c3c-a157967ab801",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52526eab-98e5-8b60-2c4e-01e92472683e",
  "kind": "theorem",
  "lexical_name": "forwardComplex_eq_sum_translates",
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
  "slug": "forwardcomplex-eq-sum-translates--7e52f5aaf4927d8f1110a8c3",
  "source": {
    "blob": "0052ae65b8f803605e99c7883429fbd4ed3cd364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e52f5aaf4927d8f1110a8c3647658ccbe4f390c87f97ad5840ee8169f1bcaf4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52526eab-98e5-8b60-2c4e-01e92472683e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardComplex_eq_sum_translates (A : ℝ) (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) :
    complexify (forwardL2 A hA s c) =
      ∑ n ∈ s, (c n : ℂ) • translation (Real.log (n : ℝ)) (sourceL2 A hA) := by
  apply Lp.ext
  filter_upwards [complexify_coe_ae (forwardL2 A hA s c),
    (forwardProfile_memLp hA s c).coeFn_toLp,
    Lp.coeFn_fun_finsetSum s
      (fun n => (c n : ℂ) • translation (Real.log (n : ℝ)) (sourceL2 A hA)),
    ae_all_iff.mpr (fun n : ℕ => Lp.coeFn_smul (c n : ℂ)
      (translation (Real.log (n : ℝ)) (sourceL2 A hA))),
    ae_all_iff.mpr (fun n : ℕ => translatedSource_coe_ae A hA (Real.log (n : ℝ)))]
      with x hc hf hs hsm ht
  change forwardL2 A hA s c x = forwardProfile A s c x at hf
  rw [hc, hf, hs]
  simp only [forwardProfile, Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [hsm n]
  simp only [Pi.smul_apply, smul_eq_mul]
  rw [ht n]
  simp

/-- The actual reflected beta state is spatial reflection of the same forward row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0052ae65b8f803605e99c7883429fbd4ed3cd364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
