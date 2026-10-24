# completedLFunction_inv_eq_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "593eaa2bea3a05cdd7384cc7689a231513b63e82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb2eb1ba-f273-7174-3a03-6e8ad4604c4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad95769d-7e69-6a1e-172e-0f4472be0966",
  "kind": "lemma",
  "lexical_name": "completedLFunction_inv_eq_conj",
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
  "slug": "completedlfunction-inv-eq-conj--936ec3883e08db9e36b6cef3",
  "source": {
    "blob": "593eaa2bea3a05cdd7384cc7689a231513b63e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:936ec3883e08db9e36b6cef37a2116affb0153d6d4cfb73d68740df035a39ced",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad95769d-7e69-6a1e-172e-0f4472be0966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedLFunction_inv_eq_conj (hq : 1 < q) (hχ1 : χ ≠ 1) (w : ℂ) :
    completedLFunction χ⁻¹ w = conj (completedLFunction χ (conj w)) := by
  have hA : AnalyticOnNhd ℂ (completedLFunction χ⁻¹) univ := fun z _ =>
    (differentiable_completedLFunction (inv_ne_one hχ1)).analyticAt z
  have hB : AnalyticOnNhd ℂ (fun z => conj (completedLFunction χ (conj z))) univ := by
    refine DifferentiableOn.analyticOnNhd (fun z _ => ?_) isOpen_univ
    have hd : DifferentiableAt ℂ (completedLFunction χ) (conj z) :=
      (differentiable_completedLFunction hχ1) _
    have h3 := hd.conj_conj
    rw [Complex.conj_conj] at h3
    exact h3.differentiableWithinAt
  have hagree : completedLFunction χ⁻¹ =ᶠ[nhds (2 : ℂ)]
      (fun z => conj (completedLFunction χ (conj z))) := by
    have hopen : IsOpen {z : ℂ | 0 < z.re} := isOpen_lt continuous_const Complex.continuous_re
    filter_upwards [hopen.mem_nhds (show (0 : ℝ) < (2 : ℂ).re by norm_num)] with z hz
    have hzc : 0 < (conj z).re := by simpa using hz
    rw [(completed_eq_gamma_mul_L (χ := χ⁻¹) hq hz).eq_of_nhds,
      (completed_eq_gamma_mul_L (χ := χ) hq hzc).eq_of_nhds]
    simp only [Pi.mul_apply, map_mul, gammaFactor_conj, Complex.conj_conj, gammaFactor_inv,
      LFunction_conj hχ1]
  have heq := hA.eqOn_of_preconnected_of_eventuallyEq hB isPreconnected_univ (mem_univ _) hagree
  exact heq (mem_univ w)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593eaa2bea3a05cdd7384cc7689a231513b63e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
