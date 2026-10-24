# row_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e695b05-7748-4fe9-fc82-67ff2471b87a",
  "kind": "theorem",
  "lexical_name": "row_stronglyMeasurable",
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
  "slug": "row-stronglymeasurable--55fb0892853bd457756af562",
  "source": {
    "blob": "1ebe9698261529fb573714b29c433d2038e43118",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55fb0892853bd457756af562515d432de511b44b8cd349423069a87859b9f409",
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

Occurrence: `result:2e695b05-7748-4fe9-fc82-67ff2471b87a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem row_stronglyMeasurable {A l b : ℝ} (hA : 0 < A) (hlb : l ≤ b) :
    StronglyMeasurable (fun t => actualPhysicalPeriodicPrefixRow A t l b) := by
  have hm : Measurable (fun x : ℝ =>
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
        centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) := by
    apply Measurable.sub _ measurable_const
    exact (measurable_of_countable (fun M : ℕ =>
      ∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n)).comp
        Nat.measurable_floor
  have hj : Measurable (fun p : ℝ × ℝ =>
      ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor p.2),
        centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
          actualPeriodicPhysicalCellProfile A p.1 p.2) :=
    (hm.comp measurable_snd).mul (physical_profile_measurable hA)
  have hi := hj.stronglyMeasurable.integral_prod_right' (ν := volume.restrict (Ioc l b))
  simpa only [actualPhysicalPeriodicPrefixRow, intervalIntegral.integral_of_le hlb] using hi

/-- The original time-density is genuinely L1 on every finite source time prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ebe9698261529fb573714b29c433d2038e43118` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
