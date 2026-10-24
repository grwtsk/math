# log_step_square_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f879aa2f-d694-a7e6-0664-dc6e510b9315",
  "kind": "theorem",
  "lexical_name": "log_step_square_le",
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
  "slug": "log-step-square-le--53ccfcc0d5c5aa62a1703d4c",
  "source": {
    "blob": "ab6dd13f336cc0360a24f113bb72f1c6773c36cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53ccfcc0d5c5aa62a1703d4c1b54ffc47c52ccfa399a4d607af34b38a62bef7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f879aa2f-d694-a7e6-0664-dc6e510b9315`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_step_square_le {n : ℕ} (hn : 1 ≤ n) :
    (1 / Real.sqrt (n : ℝ)) * (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) *
      (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) ^ 2 ≤
        4 * (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) ^ 2 := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hm0 : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  have ha := Real.sqrt_pos.2 hn0
  have hb := Real.sqrt_pos.2 hm0
  have hnm : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  have ht : 1 ≤ Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ) := by
    apply (le_div_iff₀ ha).2
    simpa only [one_mul] using Real.sqrt_le_sqrt hnm
  have hq : (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ)) ^ 2 =
      ((n + 1 : ℕ) : ℝ) / (n : ℝ) := by
    rw [div_pow, Real.sq_sqrt hm0.le, Real.sq_sqrt hn0.le]
  have hl : Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) =
      2 * Real.log (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ)) := by
    rw [← Real.log_div hm0.ne' hn0.ne', ← hq, Real.log_pow]
    norm_num only [Nat.cast_ofNat]
  have hs := mul_le_mul_of_nonneg_left (log_square_le_self_add_inv_sub_two ht)
    (by positivity : 0 ≤ 4 * (1 / Real.sqrt (n : ℝ)) *
      (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)))
  have he : 4 * (1 / Real.sqrt (n : ℝ)) * (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) *
      (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ) +
        (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ))⁻¹ - 2) =
        4 * (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) ^ 2 := by
    rw [inv_div]
    field_simp [ha.ne', hb.ne']
    ring
  rw [he] at hs
  calc
    _ = (4 * (1 / Real.sqrt (n : ℝ)) * (1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) *
        (Real.log (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ))) ^ 2 := by
      rw [hl]
      ring
    _ ≤ _ := hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab6dd13f336cc0360a24f113bb72f1c6773c36cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
