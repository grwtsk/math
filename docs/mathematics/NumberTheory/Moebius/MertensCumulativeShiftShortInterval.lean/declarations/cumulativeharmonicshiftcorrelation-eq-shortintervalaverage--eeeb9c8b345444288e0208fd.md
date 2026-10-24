# cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:985ccee8-a909-574c-0ef9-3e8513dcb50d",
  "kind": "theorem",
  "lexical_name": "cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage",
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
  "slug": "cumulativeharmonicshiftcorrelation-eq-shortintervalaverage--eeeb9c8b345444288e0208fd",
  "source": {
    "blob": "4650da8d695ef5e8515236b255dcbf38a62143b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeeb9c8b345444288e0208fd5da0f560bd02db67ff5f99dd3a29c9b9630fb922",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:985ccee8-a909-574c-0ef9-3e8513dcb50d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage
    (j t n : ℕ) :
    cumulativeHarmonicShiftCorrelation j t n =
      ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) *
          harmonicShortMobiusSum j t n a := by
  unfold cumulativeHarmonicShiftCorrelation
    harmonicShiftCorrelation
    harmonicShortMobiusSum
    mertensTwoPointPrefix
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a _ha
  rw [← Finset.mul_sum]
  apply congrArg (fun x : ℝ => moebiusReal (a + 1) * x)
  apply Finset.sum_congr rfl
  intro k _hk
  apply congrArg moebiusReal
  omega

/-- Triangle transfer from cumulative shift cancellation to the first moment of
short-interval Möbius sums.  This is sufficient only; the exact source remains
signed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4650da8d695ef5e8515236b255dcbf38a62143b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
