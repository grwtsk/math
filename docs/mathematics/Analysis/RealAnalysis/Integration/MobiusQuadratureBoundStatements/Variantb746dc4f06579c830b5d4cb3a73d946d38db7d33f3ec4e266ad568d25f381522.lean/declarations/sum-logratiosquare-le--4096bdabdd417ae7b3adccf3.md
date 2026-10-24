# sum_logRatioSquare_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7c01ad0-06c8-b01a-b618-6b9de3b4b0d2",
  "kind": "theorem",
  "lexical_name": "sum_logRatioSquare_le",
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
  "slug": "sum-logratiosquare-le--4096bdabdd417ae7b3adccf3",
  "source": {
    "blob": "fdfa939337d512202f8068158380bdb5828fdb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 262,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4096bdabdd417ae7b3adccf388a996ad8180b29b30b30eddd5a18656386f09ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7c01ad0-06c8-b01a-b618-6b9de3b4b0d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_logRatioSquare_le (x : ℝ) (hx : 1 ≤ x) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / (d : ℝ)) ^ 2) ≤ 2 * x := by
  have h := sum_logRatioSquare_le_integral x hx
  rw [integral_logRatioSquare x (by linarith)] at h
  exact h

/-- The exact signed Möbius quadrature error, retaining both finite floor cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfa939337d512202f8068158380bdb5828fdb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
