# Smooth1Properties_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "777619836d60555d8a9103b384489d1e66f2fe88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 583,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/010a74544650e8daeb2124aa0aefa218b5a437e9dba80b4d7b2752e456e93b02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d1bd5e2-13a8-ea1c-9f72-cbef44836b3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3aa7ec4a-1260-fca3-e3f2-f9c66eaded3b",
  "kind": "lemma",
  "lexical_name": "Smooth1Properties_estimate",
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
  "slug": "smooth1properties-estimate--a768330ae9b19786ae8205d5",
  "source": {
    "blob": "777619836d60555d8a9103b384489d1e66f2fe88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 583,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant010a74544650e8daeb2124aa0aefa218b5a437e9dba80b4d7b2752e456e93b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a768330ae9b19786ae8205d50d1f9d3ef8d1043d77f9b1775cc1a218e531ab2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant010a74544650e8daeb2124aa0aefa218b5a437e9dba80b4d7b2752e456e93b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aa7ec4a-1260-fca3-e3f2-f9c66eaded3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Smooth1Properties_estimate {ε : ℝ} (εpos : 0 < ε) :
    (1 - 2 ^ (-ε)) / ε < Real.log 2 := by
  apply (div_lt_iff₀' εpos).mpr
  have : 1 - 1 / (2 : ℝ) ^ ε = ((2 : ℝ) ^ ε - 1) / (2 : ℝ) ^ ε := by
    rw [sub_div, div_self (by positivity)]
  rw [← Real.log_rpow (by norm_num), rpow_neg (by norm_num), inv_eq_one_div (2 ^ ε), this]
  set c := (2 : ℝ) ^ ε
  have hc : 1 < c := by
    rw [← rpow_zero (2 : ℝ)]
    apply Real.rpow_lt_rpow_of_exponent_lt (by norm_num) εpos
  apply (div_lt_iff₀' (by positivity)).mpr <| lt_sub_iff_add_lt'.mp ?_
  let f := (fun x ↦ x * Real.log x - x)
  rw [(by simp [f] : -1 = f 1), (by simp [f] : c * Real.log c - c = f c)]
  have mono: StrictMonoOn f <| Ici 1 := by
    refine strictMonoOn_of_deriv_pos (convex_Ici _) ?_ ?_
    · apply continuousOn_id.mul (continuousOn_id.log ?_) |>.sub continuousOn_id
      intro x hx; simp only [mem_Ici] at hx; simp only [id_eq, ne_eq]; linarith
    · intro x hx; simp only [nonempty_Iio, interior_Ici', mem_Ioi] at hx
      dsimp only [f]
      rw [deriv_fun_sub, deriv_fun_mul, Real.deriv_log, deriv_id'', one_mul, mul_inv_cancel₀]
      · simp [log_pos hx]
      · linarith
      · simp only [differentiableAt_fun_id]
      · simp only [differentiableAt_log_iff, ne_eq]; linarith
      · exact differentiableAt_fun_id.mul <| differentiableAt_fun_id.log (by linarith)
      · simp only [differentiableAt_fun_id]
  exact mono (by rw [mem_Ici]) (mem_Ici.mpr <| le_of_lt hc) hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant010a74544650e8daeb2124aa0aefa218b5a437e9dba80b4d7b2752e456e93b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant010a74544650e8daeb2124aa0aefa218b5a437e9dba80b4d7b2752e456e93b02.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `777619836d60555d8a9103b384489d1e66f2fe88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
