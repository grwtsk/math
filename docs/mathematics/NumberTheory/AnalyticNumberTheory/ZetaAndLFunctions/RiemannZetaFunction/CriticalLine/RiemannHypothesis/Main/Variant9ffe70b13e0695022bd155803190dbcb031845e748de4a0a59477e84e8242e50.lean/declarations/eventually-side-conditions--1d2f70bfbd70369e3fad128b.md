# eventually_side_conditions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2166ec31b9b6a6d1e7ad3355a36a1f24dafd27e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5842d16-386c-c994-fd2e-11fed62cc1a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:212473b4-a679-451d-3b3a-6261193664d9",
  "kind": "lemma",
  "lexical_name": "eventually_side_conditions",
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
  "slug": "eventually-side-conditions--1d2f70bfbd70369e3fad128b",
  "source": {
    "blob": "2166ec31b9b6a6d1e7ad3355a36a1f24dafd27e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d2f70bfbd70369e3fad128beb2d814813984a751590cdb7bce9a914f7275e38",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:212473b4-a679-451d-3b3a-6261193664d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_side_conditions (Z : ZeroConfig) (H : PaperInputs Z) (P : Params) (hP : P.Valid) :
    (∀ᶠ T in atTop, Z.Gz P T = P.Gp T) ∧
    (∀ᶠ T in atTop, 1 - 2 * P.w / P.L T ≤ P.a T ∧ P.a T ≤ 1) ∧
    (∃ C : ℝ, ∀ᶠ T in atTop, (NII Z T : ℝ) ≤ C * Real.sqrt T * l T) ∧
    Tendsto P.calE atTop (𝓝 0) := by
  have hLtop := Assembly.tendsto_L_atTop P hP.lam_pos
  have hwL : ∀ᶠ T in atTop, 8 * P.w ≤ P.L T := hLtop.eventually_ge_atTop _
  have hLpos : ∀ᶠ T in atTop, 0 < P.L T := hLtop.eventually_gt_atTop _
  refine ⟨?_, ?_, ?_, Assembly.calE_tendsto_zero P hP.lam_pos hP.lam_le_one
    (zero_le_one.trans hP.one_le_w)⟩
  · filter_upwards [hwL, hLpos] with T hwL hL
    refine Z.Gz_eq_Gp P T H.EF hL ?_ ?_
    · exact (Complex.ofRealCLM.contDiff.comp (Params.phi_contDiff hP hwL)).of_le (by norm_num)
    · exact closure_minimal (Params.phi_support_subset hP) isClosed_Icc
  · filter_upwards [hwL] with T hwL
    exact ⟨(Params.one_sub_le_b hP hwL).trans (Params.b_le_a hP hwL), Params.a_le_one hP hwL⟩
  · obtain ⟨A₀, hA₀, hloc⟩ := H.RvM.local_count
    exact Tail.eventually_NII_le Z hA₀ hloc

/-- prop:block + [eq:Ncount] eventually (ZeroSide.eventually_blockInputs_of), with its two
inputs discharged: a > 0 eventually ([eq:abdef] via Taper's half_le_a) and lem:poisson ★
(Params.hasSum_phiHatR_sq). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2166ec31b9b6a6d1e7ad3355a36a1f24dafd27e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
