# cyclicWalshTV_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bca6dd7f-8231-553c-fbec-04b066866637",
  "kind": "theorem",
  "lexical_name": "cyclicWalshTV_bound",
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
  "slug": "cyclicwalshtv-bound--90dcdc583e3062688cd2d79f",
  "source": {
    "blob": "4e91de8ff32abb730324269fe9a7b23cff6a783d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 122,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90dcdc583e3062688cd2d79f2ae14302735d66608c151acc83c59d5acc67a9c5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bca6dd7f-8231-553c-fbec-04b066866637`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicWalshTV_bound (N : ℕ) (offsets : Finset ℕ)
    (z : ℕ → Bool) (hr : cyclicMaxOffset offsets < N) :
    (totalVariationFromUniform (Finset.range N)
       (cyclicShiftWord N offsets z) : ℝ) ≤
      ((cyclicMaxOffset offsets : ℚ) / (N : ℚ) : ℝ) +
        Real.sqrt
          (nonemptyCorrelationEnergy (Finset.range N)
             (ordinaryShiftWord offsets z) : ℝ) / 2 := by
  classical
  have hN : 0 < N := by omega
  have hroots : 0 < (Finset.range N).card := by
    simpa only [Finset.card_range] using hN
  have hsub : cyclicWrapCollar N offsets ⊆ Finset.range N :=
    cyclicWrapCollar_subset_range N offsets
  have hmatch :
      ∀ n ∈ Finset.range N, n ∉ cyclicWrapCollar N offsets →
        ordinaryShiftWord offsets z n = cyclicShiftWord N offsets z n := by
    intro n hn hgood
    exact ordinary_eq_cyclic_off_collar N offsets z hr n hn hgood
  have hreturn :=
    finiteWalshBoundary_return
      (ι := {h : ℕ // h ∈ offsets})
      (Finset.range N) (cyclicWrapCollar N offsets)
      (ordinaryShiftWord offsets z) (cyclicShiftWord N offsets z)
      hroots hsub hmatch
  have hcard :
      (cyclicWrapCollar N offsets).card = cyclicMaxOffset offsets :=
    cyclicWrapCollar_card N offsets (Nat.le_of_lt hr)
  simpa only [Finset.card_range, hcard] using hreturn

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e91de8ff32abb730324269fe9a7b23cff6a783d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
