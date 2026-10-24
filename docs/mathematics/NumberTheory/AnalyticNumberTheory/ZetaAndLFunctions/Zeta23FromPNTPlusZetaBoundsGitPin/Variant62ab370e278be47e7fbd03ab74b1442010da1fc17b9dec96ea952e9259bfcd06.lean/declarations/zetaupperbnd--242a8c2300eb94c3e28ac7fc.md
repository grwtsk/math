# ZetaUpperBnd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "978d953c0490ba116c4d3fadefd50215a07807a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62ab370e278be47e7fbd03ab74b1442010da1fc17b9dec96ea952e9259bfcd06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efddbd2e-481c-825f-eb26-b452b6b9775e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f391b1d6-a1e3-e37f-74da-72b2ea110cdd",
  "kind": "lemma",
  "lexical_name": "ZetaUpperBnd'",
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
  "slug": "zetaupperbnd--242a8c2300eb94c3e28ac7fc",
  "source": {
    "blob": "978d953c0490ba116c4d3fadefd50215a07807a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1401,
    "line": 1361,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Variant62ab370e278be47e7fbd03ab74b1442010da1fc17b9dec96ea952e9259bfcd06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:242a8c2300eb94c3e28ac7fc1b441d456a4bd24d6079180975201267cb19be91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Variant62ab370e278be47e7fbd03ab74b1442010da1fc17b9dec96ea952e9259bfcd06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f391b1d6-a1e3-e37f-74da-72b2ea110cdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1361–1401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ZetaUpperBnd' {A σ t : ℝ} (hA : A ∈ Ioc 0 (1 / 2)) (t_gt : 3 < |t|)
    (hσ : σ ∈ Icc (1 - A / Real.log |t|) 2) :
    let C := Real.exp A * (5 + 8 * 2); -- the 2 comes from ZetaBnd_aux1
    let N := ⌊|t|⌋₊;
    let s := σ + t * I;
    ‖∑ n ∈ Finset.range (N + 1), 1 / (n : ℂ) ^ s‖ + ‖(N : ℂ) ^ (1 - s) / (1 - s)‖
    + ‖(N : ℂ) ^ (-s) / 2‖
    + ‖s * ∫ (x : ℝ) in Ioi (N : ℝ), (⌊x⌋ + 1 / 2 - x) / (x : ℂ) ^ (s + 1)‖
    ≤ C * Real.log |t| := by
  intros C N s
  obtain ⟨Npos, N_le_t, logt_gt, σ_gt, σPos, neOne⟩ := UpperBnd_aux hA t_gt hσ.1
  replace σ_gt : 1 / 2 < σ := by linarith [hA.2]
  calc
    _ ≤ Real.exp A * 2 * Real.log |t| + ‖N ^ (1 - s) / (1 - s)‖ + ‖(N : ℂ) ^ (-s) / 2‖ +
      ‖s * ∫ x in Ioi (N : ℝ), (⌊x⌋ + 1 / 2 - x) / (x : ℂ) ^ (s + 1)‖ := ?_
    _ ≤ Real.exp A * 2 * Real.log |t| + ‖N ^ (1 - s) / (1 - s)‖ + ‖(N : ℂ) ^ (-s) / 2‖ +
      2 * |t| * N ^ (-σ) / σ  := ?_
    _ = Real.exp A * 2 * Real.log |t| + N ^ (1 - σ) / ‖(1 - s)‖ + N ^ (-σ) / 2 +
      2 * |t| * N ^ (-σ) / σ  := ?_
    _ ≤ Real.exp A * 2 * Real.log |t| + |t| ^ (1 - σ) * 2 +
        |t| ^ (1 - σ) + 2 * |t| * (8 * |t| ^ (-σ)) := ?_
    _ = Real.exp A * 2 * Real.log |t| + (3 + 8 * 2) * |t| ^ (1 - σ) := ?_
    _ ≤ Real.exp A * 2 * Real.log |t| + (3 + 8 * 2) * Real.exp A * 1 := ?_
    _ ≤ Real.exp A * 2 * Real.log |t| + (3 + 8 * 2) * Real.exp A * Real.log |t| := ?_
    _ = _ := by ring
  · simp only [add_le_add_iff_right, one_div_cpow_eq_cpow_neg]
    convert UpperBnd_aux3 (C := 2) hA hσ.1 t_gt le_rfl using 1
  · simp only [add_le_add_iff_left]; exact ZetaBnd_aux1 N (by linarith) ⟨σPos, hσ.2⟩ (by linarith)
  · simp only [norm_div, RCLike.norm_ofNat, s]
    congr <;> (convert norm_natCast_cpow_of_pos Npos _; simp)
  · have ⟨h₁, h₂, h₃⟩ := UpperBnd_aux6 t_gt ⟨σ_gt, hσ.2⟩ neOne Npos N_le_t
    gcongr
    rw [mul_div_assoc]
    gcongr
  · ring_nf; conv => lhs; rhs; lhs; rw [mul_comm |t|]
    rw [← Real.rpow_add_one (by positivity)]; ring_nf
  · simp only [Real.log_abs, add_le_add_iff_left, mul_one]
    exact mul_le_mul_iff_right₀ (by positivity) |>.mpr <| UpperBnd_aux2 t_gt hσ.1
  · simp only [add_le_add_iff_left]
    apply mul_le_mul_iff_right₀ (by norm_num [Real.exp_pos]) |>.mpr <| logt_gt.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Variant62ab370e278be47e7fbd03ab74b1442010da1fc17b9dec96ea952e9259bfcd06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Variant62ab370e278be47e7fbd03ab74b1442010da1fc17b9dec96ea952e9259bfcd06.lean#L1361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `978d953c0490ba116c4d3fadefd50215a07807a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
