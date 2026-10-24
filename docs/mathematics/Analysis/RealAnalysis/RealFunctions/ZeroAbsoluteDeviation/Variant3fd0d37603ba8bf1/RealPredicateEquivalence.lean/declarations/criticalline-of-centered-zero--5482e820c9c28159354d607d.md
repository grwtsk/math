# criticalLine_of_centered_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c78f81f-62c0-4a60-32b7-9969db9e7422",
  "kind": "theorem",
  "lexical_name": "criticalLine_of_centered_zero",
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
  "slug": "criticalline-of-centered-zero--5482e820c9c28159354d607d",
  "source": {
    "blob": "33d078d0ad23dac0c63f9f5edbc81d69d7d2bff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5482e820c9c28159354d607def13ee312752c5727d59d49eb683c13fc7196424",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c78f81f-62c0-4a60-32b7-9969db9e7422`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalLine_of_centered_zero
    (x : ℝ)
    (h : CenteredWithZeroVariance x) :
    IsCriticalLineRealPart x := by
  unfold CenteredWithZeroVariance Harmonic.CenteredAroundHalf at h
  unfold IsCriticalLineRealPart
  have habs : |x - Harmonic.analyticEquilibrium| = 0 :=
    le_antisymm h (abs_nonneg _)
  have hsub : x - Harmonic.analyticEquilibrium = 0 :=
    abs_eq_zero.mp habs
  unfold Harmonic.analyticEquilibrium at hsub
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d078d0ad23dac0c63f9f5edbc81d69d7d2bff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
