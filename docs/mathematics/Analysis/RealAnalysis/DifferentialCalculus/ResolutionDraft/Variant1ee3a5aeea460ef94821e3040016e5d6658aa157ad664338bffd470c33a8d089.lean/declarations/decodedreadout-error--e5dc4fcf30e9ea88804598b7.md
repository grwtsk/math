# decodedReadout_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83672697-1dd3-3fcf-c413-40327ab2be65",
  "kind": "theorem",
  "lexical_name": "decodedReadout_error",
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
  "slug": "decodedreadout-error--e5dc4fcf30e9ea88804598b7",
  "source": {
    "blob": "17789f14474833e7df21efebf0ed3377f7029189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5dc4fcf30e9ea88804598b7ade3979bc02458c5ae8a67f3ffdeb716d56c818c",
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

Occurrence: `result:83672697-1dd3-3fcf-c413-40327ab2be65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decodedReadout_error {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε) (F : ℝ → ℝ)
    (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u ∈ Icc 0 (2*A), |F u-pairedTailTest A u| ≤ ε) :
    |decodedReadout A F-squareRemovedPairedWork A| ≤
      ε*(primeLogPrefix (2*A)+squarePrefix (2*A)+2*A) := by
  have hi := (pairedTailTest_continuous hA).intervalIntegrable (μ := volume) 0 (2*A)
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (f := fun u => F u-pairedTailTest A u) (a := 0) (b := 2*A) (C := ε)
    (fun u hu => by
      have hc : u ∈ Icc 0 (2*A) := by
        rw [uIoc_of_le (by linarith : (0 : ℝ)≤2*A)] at hu
        exact ⟨hu.1.le,hu.2⟩
      simpa only [Real.norm_eq_abs] using herr u hc)
  rw [intervalIntegral.integral_sub hF hi, Real.norm_eq_abs,
    sub_zero, abs_of_nonneg (by linarith : (0 : ℝ)≤2*A)] at hb
  have hp := primeReadout_error hA hε F herr
  have hs := squareReadout_error hA hε F herr
  rw [← actualReadout_eq hA]
  unfold decodedReadout
  have he :
      primeLogSum (2*A) F+(∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
        (∫ u in 0..2*A, F u) -
      (primeLogSum (2*A) (pairedTailTest A)+
        (∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*pairedTailTest A (2*Real.log p))-
        ∫ u in 0..2*A, pairedTailTest A u) =
      (primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A))+
      ((∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
        pairedSquareReadout A)-
      ((∫ u in 0..2*A, F u)-(∫ u in 0..2*A, pairedTailTest A u)) := by
    unfold pairedSquareReadout
    ring
  rw [he]
  calc
    _ ≤ |primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A)|+
      |(∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
        pairedSquareReadout A|+
      |(∫ u in 0..2*A,F u)-(∫ u in 0..2*A,pairedTailTest A u)| :=
      by
        have h1 := abs_sub (primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A)+
          ((∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
            pairedSquareReadout A))
          ((∫ u in 0..2*A,F u)-(∫ u in 0..2*A,pairedTailTest A u))
        have h2 := abs_add_le (primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A))
          ((∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
            pairedSquareReadout A)
        linarith
    _ ≤ _ := by nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17789f14474833e7df21efebf0ed3377f7029189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
