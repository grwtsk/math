# actualEvenProductMoment_eq_upper_add_closed_low

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6311ea57-5715-8a1a-2849-228ff11f12a1",
  "kind": "theorem",
  "lexical_name": "actualEvenProductMoment_eq_upper_add_closed_low",
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
  "slug": "actualevenproductmoment-eq-upper-add-closed-low--e12e9df77365dfc37be42c02",
  "source": {
    "blob": "82475abd87794d67c498f6817e247b18c575ebb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Varianted7dd8b23ebc2cf27301d91cd7c6ab6685db7ae5af8e218a2e78e792422bb501.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e12e9df77365dfc37be42c027f69feac920083fd9b8c38d850631f40c92246e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Varianted7dd8b23ebc2cf27301d91cd7c6ab6685db7ae5af8e218a2e78e792422bb501.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6311ea57-5715-8a1a-2849-228ff11f12a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEvenProductMoment_eq_upper_add_closed_low (A : ℝ) :
    actualEvenProductMoment A = actualUpperEvenProductMoment A +
      ∑ n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
        (fun n : ℕ => (n : ℝ) ≤ 2 * Real.exp (2 * A) / 3),
        vonMangoldt n * closedPrimeWeight A n := by
  unfold actualEvenProductMoment actualUpperEvenProductMoment
  have h := Finset.sum_filter_add_sum_filter_not
    ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n))
    (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ))
    (fun n => vonMangoldt n * closedPrimeWeight A n)
  simpa only [not_lt] using h.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Varianted7dd8b23ebc2cf27301d91cd7c6ab6685db7ae5af8e218a2e78e792422bb501.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Varianted7dd8b23ebc2cf27301d91cd7c6ab6685db7ae5af8e218a2e78e792422bb501.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82475abd87794d67c498f6817e247b18c575ebb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
