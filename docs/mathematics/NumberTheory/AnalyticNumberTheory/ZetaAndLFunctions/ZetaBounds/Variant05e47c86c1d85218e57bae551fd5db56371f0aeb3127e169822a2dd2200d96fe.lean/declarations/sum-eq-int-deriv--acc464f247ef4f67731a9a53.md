# sum_eq_int_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8449749700ae3c61707103913ebe40c0507a6e07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 807,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1692fc4-6ef4-20d4-e834-fd0b97e917ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7c64595-e8b5-c5f7-c06f-5000063fcadb",
  "kind": "lemma",
  "lexical_name": "sum_eq_int_deriv",
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
  "slug": "sum-eq-int-deriv--acc464f247ef4f67731a9a53",
  "source": {
    "blob": "8449749700ae3c61707103913ebe40c0507a6e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 807,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc464f247ef4f67731a9a5306edc1b895896691693c5326365adab7f3f81293",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7c64595-e8b5-c5f7-c06f-5000063fcadb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_eq_int_deriv {φ : ℝ → ℂ} {a b : ℝ} (apos : 0 ≤ a) (a_lt_b : a < b)
    (φDiff : ∀ x ∈ [[a, b]], HasDerivAt φ (deriv φ x) x)
    (derivφCont : ContinuousOn (deriv φ) [[a, b]]) :
    ∑ n ∈ Finset.Ioc ⌊a⌋ ⌊b⌋, φ n =
      (∫ x in a..b, φ x) + (⌊b⌋ + 1 / 2 - b) * φ b - (⌊a⌋ + 1 / 2 - a) * φ a
        - ∫ x in a..b, (⌊x⌋ + 1 / 2 - x) * deriv φ x := by
  rw [uIcc_of_le a_lt_b.le] at φDiff
  have : MeasureTheory.IntegrableOn (deriv φ) (Icc a b) := by
    apply intervalIntegrable_iff_integrableOn_Icc_of_le a_lt_b.le |>.mp
    exact ContinuousOn.intervalIntegrable derivφCont
  have := sum_mul_eq_sub_sub_integral_mul (c := fun _ ↦ 1) apos a_lt_b.le
    (fun x hx ↦ (φDiff x hx).differentiableAt) this
  simp only [mul_one, Finset.sum_const, Nat.card_Icc, tsub_zero, nsmul_eq_mul, Nat.cast_add,
    Nat.cast_one] at this
  have coe :=Finset_coe_Nat_Int (fun n ↦ φ n) ⌊a⌋₊ ⌊b⌋₊
  rw [Int.natCast_floor_eq_floor apos, Int.natCast_floor_eq_floor (by linarith)] at coe
  rw [← coe]
  convert this using 1
  rw [← intervalIntegral.integral_of_le a_lt_b.le]
  rw [← Int.natCast_floor_eq_floor apos, ← Int.natCast_floor_eq_floor (by linarith)]
  have := by
    calc ∫ (t : ℝ) in a..b, deriv φ t * (↑⌊t⌋₊ + 1)
      _ = ∫ (t : ℝ) in a..b, ((↑⌊t⌋ + 1 / 2 - t) * deriv φ t - (-1/2 - t) * deriv φ t) := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le a_lt_b.le] at hx
        beta_reduce
        rw [← Int.natCast_floor_eq_floor (by linarith[hx.1])]
        simp only [Int.cast_natCast]
        ring
      _ = (∫ (t : ℝ) in a..b, (↑⌊t⌋ + 1 / 2 - t) * deriv φ t) -
          (∫ (t : ℝ) in a..b, (-1 / 2 - t) * deriv φ t) := by
        apply  intervalIntegral.integral_sub
        · apply integrability_aux.mul_continuousOn derivφCont
        · apply ContinuousOn.intervalIntegrable
          exact ContinuousOn.mul (by fun_prop) derivφCont
      _ = (∫ (t : ℝ) in a..b, (⌊t⌋ + 1 / 2 - t) * deriv φ t) -
      ((-1 / 2 - b) * φ b - (-1 / 2 - a) * φ a + ∫ (x : ℝ) in a..b, φ x) := by
        rw [← uIcc_of_le a_lt_b.le] at φDiff
        rw [sum_eq_int_deriv_aux2 _ φDiff derivφCont]
  rw [this]
  ring_nf!


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8449749700ae3c61707103913ebe40c0507a6e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
