# thinGreenArithmeticFourierCoordinate_eq_authentic_corrected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e293499e-dac0-1411-ef86-0ad5a342a55d",
  "kind": "theorem",
  "lexical_name": "thinGreenArithmeticFourierCoordinate_eq_authentic_corrected",
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
  "slug": "thingreenarithmeticfouriercoordinate-eq-authentic-corrected--6353fd21678bc1f75d295e2d",
  "source": {
    "blob": "63ef7fb343828039e2104e63993799e54a7bcebd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 336,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6353fd21678bc1f75d295e2d48319f0c42a99aad3a13aee93cf6fd2ef4087dd8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e293499e-dac0-1411-ef86-0ad5a342a55d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thinGreenArithmeticFourierCoordinate_eq_authentic_corrected
    (X : ℕ) (H : Finset ℕ) (k : ℤ) :
    thinGreenArithmeticFourierCoordinate X k =
      greenFourierBackgroundCoordinate k -
        authenticCorrectedGreenPrimeCoordinate X H (fourierModeValue k) := by
  unfold thinGreenArithmeticFourierCoordinate
  rw [centeredGreenPrimeCoordinate_eq_authentic_corrected]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchored_shift_mem_authentic_centered_iff
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.authentic_center_amplitude_eq_anchor_add_other_shift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredPositiveDivisor_eq_authentic_matched_add_omitted
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.vonMangoldt_eq_authentic_matched_add_all_defects
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.thinGreenArithmeticFourierCoordinate_eq_authentic_corrected
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ef7fb343828039e2104e63993799e54a7bcebd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
