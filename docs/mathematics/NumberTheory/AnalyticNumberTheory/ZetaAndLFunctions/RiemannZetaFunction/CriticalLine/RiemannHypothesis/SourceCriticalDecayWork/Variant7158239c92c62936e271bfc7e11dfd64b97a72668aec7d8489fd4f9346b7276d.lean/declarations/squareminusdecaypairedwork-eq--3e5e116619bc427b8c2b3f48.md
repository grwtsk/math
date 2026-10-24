# squareMinusDecayPairedWork_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ed7fd60-7de6-4e67-34e2-cd402755a212",
  "kind": "theorem",
  "lexical_name": "squareMinusDecayPairedWork_eq",
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
  "slug": "squareminusdecaypairedwork-eq--3e5e116619bc427b8c2b3f48",
  "source": {
    "blob": "83c1d8b7cfed567a39f63c5f3a8fe899ad7cc45f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e5e116619bc427b8c2b3f488b58127c82eab2a051758691784b91337937d47b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ed7fd60-7de6-4e67-34e2-cd402755a212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareMinusDecayPairedWork_eq {A : ℝ} (hA : 1 ≤ A) :
    squareMinusDecayPairedWork A =
      (primeSquareMoment A-diagonalMainCoefficient A*A)+(1-squarePrefixBaseline)+
        (squareTailNegativeMean A-criticalDecayNegativeMean A) := by
  rw [squareMinusDecay_eq_paired_difference hA, squareTailPairedWork_eq_work_add_mean hA,
    squareTailWork_eq hA, criticalDecayWork_eq_main hA]
  ring

/-- Only this independently specified signed difference has a uniform budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c1d8b7cfed567a39f63c5f3a8fe899ad7cc45f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
