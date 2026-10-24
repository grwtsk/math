# integral_closed_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:261ee61d-d076-104d-b5b4-ef01810ad507",
  "kind": "theorem",
  "lexical_name": "integral_closed_tail",
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
  "slug": "integral-closed-tail--35898b219e652c9eb2bfb0c3",
  "source": {
    "blob": "2a784c05d3092f4296615592e3c99e847fa5bd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35898b219e652c9eb2bfb0c36e12f0a2e116e31afbbbaffc697d201c37470893",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:261ee61d-d076-104d-b5b4-ef01810ad507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_closed_tail (g : ℝ → ℝ) (A r : ℝ) (hr : r ∈ Icc 0 A) :
    (∫ u in 0..A, if r ≤ u then g u else 0) = ∫ u in r..A, g u := by
  rw [intervalIntegral.integral_of_le (hr.1.trans hr.2),
    intervalIntegral.integral_of_le hr.2]
  change (∫ u in Ioc 0 A, (Ici r).indicator g u) = _
  rw [integral_indicator measurableSet_Ici, Measure.restrict_restrict measurableSet_Ici]
  apply setIntegral_congr_set
  filter_upwards [volume.ae_ne r] with u hu
  apply propext
  change (r ≤ u ∧ 0 < u ∧ u ≤ A) ↔ (r < u ∧ u ≤ A)
  constructor
  · rintro ⟨hru, _, huA⟩
    exact ⟨lt_of_le_of_ne hru (Ne.symm hu), huA⟩
  · rintro ⟨hru, huA⟩
    exact ⟨hru.le, hr.1.trans_lt hru, huA⟩

/-- The actual doubled correlation derivative is continuous across its support seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a784c05d3092f4296615592e3c99e847fa5bd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
