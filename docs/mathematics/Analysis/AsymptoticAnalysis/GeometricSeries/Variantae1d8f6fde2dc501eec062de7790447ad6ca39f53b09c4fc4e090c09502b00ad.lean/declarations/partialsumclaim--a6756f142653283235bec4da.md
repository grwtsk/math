# partialSumClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c9d0e449709efd450a062aee357747c67bc850e88f284012531226c4605581f",
  "kind": "def",
  "lexical_name": "partialSumClaim",
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
  "slug": "partialsumclaim--a6756f142653283235bec4da",
  "source": {
    "blob": "4a8bf4cad1248047a66c08139b1ee0987245a766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6756f142653283235bec4da0497877fd69c954aa2cfeb840c950974b9816af4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c9d0e449709efd450a062aee357747c67bc850e88f284012531226c4605581f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partialSumClaim
    (z : ℂ) (_hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticClaim
      (geometricSeriesContext z)
      (Authority.BoundaryKind.custom "geometric-partial-sums-converge") where
  label := "partial sums of complex geometric series converge to (1 - z)⁻¹"
  statement :=
    Filter.Tendsto
      (fun N : ℕ => ∑ n ∈ Finset.range N, z ^ n)
      Filter.atTop
      (nhds ((1 - z)⁻¹))

/-- Proof-carrying certificate for partial-sum convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8bf4cad1248047a66c08139b1ee0987245a766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
