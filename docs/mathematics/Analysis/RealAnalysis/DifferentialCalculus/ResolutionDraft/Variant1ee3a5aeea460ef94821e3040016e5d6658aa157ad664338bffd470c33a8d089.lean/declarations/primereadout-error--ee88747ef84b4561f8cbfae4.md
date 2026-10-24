# primeReadout_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8db2183f-d22d-fb99-b41a-744430c2ae25",
  "kind": "theorem",
  "lexical_name": "primeReadout_error",
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
  "slug": "primereadout-error--ee88747ef84b4561f8cbfae4",
  "source": {
    "blob": "17789f14474833e7df21efebf0ed3377f7029189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee88747ef84b4561f8cbfae434d4d6856a764bac0113f71fcae5df55e5bfc4fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8db2183f-d22d-fb99-b41a-744430c2ae25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeReadout_error {A ε : ℝ} (_hA : 1 ≤ A) (_hε : 0 ≤ ε) (F : ℝ → ℝ)
    (herr : ∀ u ∈ Icc 0 (2*A), |F u-pairedTailTest A u| ≤ ε) :
    |primeLogSum (2*A) F - primeLogSum (2*A) (pairedTailTest A)| ≤
      ε*primeLogPrefix (2*A) := by
  unfold primeLogSum
  rw [← Finset.sum_sub_distrib, primeLogPrefix_eq_sum, Finset.mul_sum]
  calc
    _ ≤ ∑ p ∈ primeLogInventory (2*A),
      |Real.log (p : ℝ)/(p : ℝ)*F (Real.log p) -
        Real.log (p : ℝ)/(p : ℝ)*pairedTailTest A (Real.log p)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro p hp
      have hb := primeLogInventory_log_bounds (2*A) p hp
      have hn : 0 ≤ Real.log (p : ℝ)/(p : ℝ) := div_nonneg hb.1 (Nat.cast_nonneg p)
      rw [← mul_sub, abs_mul, abs_of_nonneg hn]
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left (herr (Real.log p) hb) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17789f14474833e7df21efebf0ed3377f7029189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
