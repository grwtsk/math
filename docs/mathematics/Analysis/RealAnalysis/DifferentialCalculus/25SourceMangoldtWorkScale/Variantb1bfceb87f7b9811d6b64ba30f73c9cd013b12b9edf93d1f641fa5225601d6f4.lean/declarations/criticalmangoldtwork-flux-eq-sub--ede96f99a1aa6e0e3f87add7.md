# criticalMangoldtWork_flux_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7344100-9f5b-24a6-079c-e418733e996c",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_flux_eq_sub",
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
  "slug": "criticalmangoldtwork-flux-eq-sub--ede96f99a1aa6e0e3f87add7",
  "source": {
    "blob": "849e4d53f69ea7b60346bd2e409b23ab243207c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede96f99a1aa6e0e3f87add795be44105cd3fada29a8866c3a65d02b8ba73e2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7344100-9f5b-24a6-079c-e418733e996c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_flux_eq_sub {a b : ℝ} (ha : 1 < a) (hb : 1 < b) :
    criticalMangoldtWork b - criticalMangoldtWork a =
      (∫ A in a..b, continuousHalfScaleDerivative A) -
        ∫ A in a..b, closedPrimeMomentScaleDerivative A := by
  rw [← criticalMangoldtWork_flux ha hb]
  exact intervalIntegral.integral_sub (continuousHalfScaleDerivative_intervalIntegrable a b)
    (closedPrimeMomentScaleDerivative_intervalIntegrable ha hb)

/-- The actual pure-source flux has a strict uniform size bound for either orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849e4d53f69ea7b60346bd2e409b23ab243207c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
