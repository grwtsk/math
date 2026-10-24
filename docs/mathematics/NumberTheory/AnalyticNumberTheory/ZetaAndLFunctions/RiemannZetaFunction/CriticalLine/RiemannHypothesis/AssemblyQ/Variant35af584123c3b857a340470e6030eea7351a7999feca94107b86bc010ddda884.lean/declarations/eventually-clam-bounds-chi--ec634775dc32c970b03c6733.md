# eventually_clam_bounds_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89a0e6ef-77c7-eac9-f737-6ba66dd3aac7",
  "kind": "lemma",
  "lexical_name": "eventually_clam_bounds_chi",
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
  "slug": "eventually-clam-bounds-chi--ec634775dc32c970b03c6733",
  "source": {
    "blob": "bcfec3a0afea0ac4bd8125c92e671c9de18d290e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 192,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec634775dc32c970b03c6733ebb7c2bf93ae2ea0c11a1904c8ceb20c7e451566",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89a0e6ef-77c7-eac9-f737-6ba66dd3aac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_clam_bounds_chi (P : Params) (hq : 1 ≤ q) (hlam : 0 < P.lam)
    (hlam1 : P.lam ≤ 1) :
    ∀ᶠ T in atTop,
      0 ≤ 1 / lam1q P q T + lam1q P q T / 3 ∧
        1 / lam1q P q T + lam1q P q T / 3 ≤ 2 / P.lam + 1 / 3 := by
  filter_upwards [tendsto_l_atTop.eventually_ge_atTop (max 1 (cq q)), eventually_gt_atTop 0]
    with T hl hT0
  have hl1 : (1:ℝ) ≤ l T := le_trans (le_max_left _ _) hl
  have hlc : cq q ≤ l T := le_trans (le_max_right _ _) hl
  have hlpos : 0 < l T := by linarith
  have hc := cq_pos hq
  have hpos := lam1q_pos P hq hT0 hlam hlpos
  have hle := (lam1q_le P hq hT0 hlam.le hlpos).trans hlam1
  have hhalf : P.lam / 2 ≤ lam1q P q T := by
    rw [lam1q_eq P hq hT0, le_div_iff₀ (by linarith)]
    nlinarith
  refine ⟨by positivity, ?_⟩
  have h1 : 1 / lam1q P q T ≤ 2 / P.lam := by
    rw [div_le_div_iff₀ hpos hlam]; linarith
  linarith

end GrowthQ

/-! ## Q3. The prime-side identification and seam B for L(s,χ) -/

section UnitsChi
open Assembly

variable (P : Params) (κ q : ℕ) (c : ℕ → ℂ)

/-- The prime-side matrix for L(s,χ) ([eq:Gdef] second expression with ν_{X,χ}), as a complex
matrix (entries real). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variant35af584123c3b857a340470e6030eea7351a7999feca94107b86bc010ddda884.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfec3a0afea0ac4bd8125c92e671c9de18d290e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
