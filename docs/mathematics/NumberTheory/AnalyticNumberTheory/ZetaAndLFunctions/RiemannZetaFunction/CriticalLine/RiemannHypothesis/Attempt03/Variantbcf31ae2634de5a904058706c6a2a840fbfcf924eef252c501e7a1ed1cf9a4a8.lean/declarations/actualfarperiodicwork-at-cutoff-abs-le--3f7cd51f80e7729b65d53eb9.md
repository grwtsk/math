# actualFarPeriodicWork_at_cutoff_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27510499-21d0-9c6f-81a6-775a2dcf7779",
  "kind": "theorem",
  "lexical_name": "actualFarPeriodicWork_at_cutoff_abs_le",
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
  "slug": "actualfarperiodicwork-at-cutoff-abs-le--3f7cd51f80e7729b65d53eb9",
  "source": {
    "blob": "1ebe9698261529fb573714b29c433d2038e43118",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 256,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f7cd51f80e7729b65d53eb9df261c2c5497188726b7858920fc1dec27dad8ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27510499-21d0-9c6f-81a6-775a2dcf7779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFarPeriodicWork_at_cutoff_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |actualFarPeriodicWork A (actualFarPeriodicCutoff A)| ≤
      (16 / 3 : ℝ) * (Real.log 4 + 4 + Real.log 2) / A ^ 4 := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  let U := vaughanCutoff A
  have hU1 : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA1
  have hUp : 0 < (U : ℝ) := by linarith
  have hg := actualFarPeriodicCutoff_source_guards hA
  have hl : (vaughanCutoff A : ℝ) ≤ actualFarPeriodicCutoff A := by
    have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp
    linarith [hg.1]
  have hb := actualFarPeriodicWork_abs_le (by linarith : 91 ≤ A) hl hg.2.1 hg.2.2.1 hg.2.2.2
  have he : Real.exp (A - 2 * Real.log (actualFarPeriodicCutoff A)) =
      (U : ℝ)⁻¹ ^ 2 * A⁻¹ ^ 3 := by
    unfold actualFarPeriodicCutoff
    rw [Real.log_exp]
    rw [show A - 2 * (A / 2 + Real.log (vaughanCutoff A : ℝ) + 3 * Real.log A / 2) =
      -Real.log (U : ℝ) + -Real.log (U : ℝ) +
        (-Real.log A + -Real.log A + -Real.log A) by dsimp [U]; ring]
    simp only [Real.exp_add, Real.exp_neg, Real.exp_log hUp, Real.exp_log hAp]
    ring
  rw [he] at hb
  apply hb.trans
  have hC : 0 ≤ Real.log 4 + 4 + Real.log 2 := by positivity
  have hu : (U : ℝ) + 1 ≤ 2 * (U : ℝ) := by linarith
  have hm := mul_le_mul_of_nonneg_left hu hC
  dsimp [U] at *
  field_simp
  nlinarith

/-- The definition is exactly the original time/log pairing on the genuine far window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ebe9698261529fb573714b29c433d2038e43118` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
