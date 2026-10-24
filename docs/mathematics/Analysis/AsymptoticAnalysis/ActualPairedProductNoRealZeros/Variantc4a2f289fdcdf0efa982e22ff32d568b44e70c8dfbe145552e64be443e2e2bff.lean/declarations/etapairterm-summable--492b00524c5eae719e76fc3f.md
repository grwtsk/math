# etaPairTerm_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bfd1828-57da-5111-0ea4-2dfd98f1a73a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13627342-b2ac-aa2e-9da9-8830f8ba19c3",
  "kind": "theorem",
  "lexical_name": "etaPairTerm_summable",
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
  "slug": "etapairterm-summable--492b00524c5eae719e76fc3f",
  "source": {
    "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 94,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:492b00524c5eae719e76fc3f19b7ece0155e28c8359b67c28986bfb4f48da293",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13627342-b2ac-aa2e-9da9-8830f8ba19c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem etaPairTerm_summable {s : ℂ} (hs : 0 < s.re) :
    Summable fun n : ℕ => etaPairTerm n s := by
  let δ : ℝ := s.re / 2
  let R : ℝ := ‖s‖
  have hδ : 0 < δ := by simp [δ, hs]
  have hp : 1 < δ + 1 := by linarith
  have hseries :
      Summable (fun n : ℕ =>
        R * ((n + 1 : ℕ) : ℝ) ^ (-δ - 1)) := by
    have hbase : Summable (fun n : ℕ =>
        1 / (n : ℝ) ^ (δ + 1)) :=
      Real.summable_one_div_nat_rpow.mpr hp
    have hshift := hbase.comp_injective (add_left_injective 1)
    have heq :
        (fun n : ℕ => R * ((n + 1 : ℕ) : ℝ) ^ (-δ - 1)) =
          fun n : ℕ => R * (((n + 1 : ℕ) : ℝ) ^ (δ + 1))⁻¹ := by
      funext n
      rw [show -δ - 1 = -(δ + 1) by ring,
        Real.rpow_neg (by positivity) (δ + 1)]
    rw [heq]
    simpa only [Function.comp_apply, Nat.cast_add, Nat.cast_one,
      add_comm, one_div] using hshift.mul_left R
  apply Summable.of_norm_bounded hseries
  intro n
  have hraw := etaPairTerm_norm_le hδ (s := s)
    (by simp [δ]; linarith) (show ‖s‖ ≤ R by rfl) n
  have hcast :
      ((n + 1 : ℕ) : ℝ) ≤ ((2 * n + 1 : ℕ) : ℝ) := by
    exact_mod_cast (by omega : n + 1 ≤ 2 * n + 1)
  have hpow :
      ((2 * n + 1 : ℕ) : ℝ) ^ (-δ - 1) ≤
        ((n + 1 : ℕ) : ℝ) ^ (-δ - 1) :=
    Real.rpow_le_rpow_of_nonpos (by positivity) hcast (by linarith)
  exact hraw.trans (mul_le_mul_of_nonneg_left hpow (by simp [R]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20524e95786b7a57d28806272d7dfa253f85ec3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
