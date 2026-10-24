# finiteHalfHarmonic_le_calibrated_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ad2b2a7-71ab-5efc-daec-1e28be450e9a",
  "kind": "theorem",
  "lexical_name": "finiteHalfHarmonic_le_calibrated_sqrt",
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
  "slug": "finitehalfharmonic-le-calibrated-sqrt--d753f4ba50564ba88346a53c",
  "source": {
    "blob": "a960fd791754a653c844e977a01b5bcbcb549f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d753f4ba50564ba88346a53c0182d24d13e06ef824e1536b1e4ed132d2bcce8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad2b2a7-71ab-5efc-daec-1e28be450e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteHalfHarmonic_le_calibrated_sqrt (U : ℕ) (hU : 1 ≤ U) :
    finiteHalfHarmonic U ≤ 2 * Real.sqrt (U : ℝ) +
      |(riemannZeta (1 / 2 : ℂ)).re| + 1 := by
  have ht := (halfHarmonicFractionalTail_bounds U hU).2
  have hs : (1 : ℝ) ≤ Real.sqrt (U : ℝ) := by
    have hn : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast hU
    simpa using Real.sqrt_le_sqrt hn
  have hi : 1 / Real.sqrt (U : ℝ) ≤ 1 := by
    exact (div_le_one (by linarith)).2 hs
  rw [finiteHalfHarmonic_eq_sqrt_zeta_tail U hU]
  linarith [le_abs_self (riemannZeta (1 / 2 : ℂ)).re]

/-- This crude square-root bound is used solely with the genuine small edge trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant9046dc451db6e12fe16039d3f1682c958b5ac4257b8c07679544b1d2a9180571.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a960fd791754a653c844e977a01b5bcbcb549f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
