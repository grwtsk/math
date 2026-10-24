# Tk_one_asymp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a8a36520d32d1ef8fed9e0bb77c79640cd6edd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbf5274f-9585-65b1-0293-62e762d58163",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ae46390-a569-0b3c-2097-d8f7d3daddac",
  "kind": "lemma",
  "lexical_name": "Tk_one_asymp",
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
  "slug": "tk-one-asymp--d20be05b46898bb36dc78207",
  "source": {
    "blob": "9a8a36520d32d1ef8fed9e0bb77c79640cd6edd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 248,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d20be05b46898bb36dc78207fcc1ab793cf874ce1a18ba4d900cdb16150d0b90",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ae46390-a569-0b3c-2097-d8f7d3daddac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Tk_one_asymp (u : ℝ) (hu : 0 ≤ u) : |Tk 1 u - u ^ 2 / (2).factorial| ≤ 2 * KM * (1 + u) ^ 1 := by
  have hK := KM_nonneg
  have hT1 : Tk 1 u = ∑ d ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ d / d * (fun v : ℝ => v) (Real.log d) := by
    rw [show (1:ℕ) = 0 + 1 from rfl, Tk_succ]
    refine sum_congr rfl fun d hd => ?_
    have hlog : Real.log d ≤ u := log_le_of_mem_Ioc_floor_exp hd
    rw [Tk_zero (by linarith)]
    ring
  have hderiv : ∀ v ∈ Set.Icc 0 u, HasDerivAt (fun v : ℝ => v) ((fun _ => (1:ℝ)) v) v :=
    fun v _ => hasDerivAt_id' v
  have hstep := mertens_step hu hderiv continuousOn_const
  rw [← hT1, integral_id, abs_of_nonneg hu] at hstep
  simp only [abs_one, intervalIntegral.integral_const, smul_eq_mul, mul_one, sub_zero] at hstep
  have h2 : ((2).factorial : ℝ) = 2 := by norm_num [Nat.factorial]
  rw [h2]
  calc |Tk 1 u - u ^ 2 / 2| = |Tk 1 u - (u ^ 2 - 0 ^ 2) / 2| := by ring_nf
    _ ≤ KM * (u + u) := hstep
    _ ≤ 2 * KM * (1 + u) ^ 1 := by nlinarith

/-- the induction, in the subtraction-free form k = j+1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8a36520d32d1ef8fed9e0bb77c79640cd6edd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
