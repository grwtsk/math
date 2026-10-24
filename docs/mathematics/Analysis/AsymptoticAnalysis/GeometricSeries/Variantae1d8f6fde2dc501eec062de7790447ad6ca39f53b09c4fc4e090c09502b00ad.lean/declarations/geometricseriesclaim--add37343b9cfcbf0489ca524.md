# geometricSeriesClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ada3d85dbc4ccf42428568cceb54e909662c2f0ecba8ee492c6b89b89da9b590",
  "kind": "def",
  "lexical_name": "geometricSeriesClaim",
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
  "slug": "geometricseriesclaim--add37343b9cfcbf0489ca524",
  "source": {
    "blob": "4a8bf4cad1248047a66c08139b1ee0987245a766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:add37343b9cfcbf0489ca524d389021d5c270c0b94815f00fa78c1f489c9571a",
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

Occurrence: `declaration:ada3d85dbc4ccf42428568cceb54e909662c2f0ecba8ee492c6b89b89da9b590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def geometricSeriesClaim
    (z : ℂ) (_hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticClaim
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence where
  label := "absolute convergence and sum of complex geometric series"
  statement :=
    Summable (fun n : ℕ => ‖z ^ n‖) ∧
      HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹)

/-- Proof-carrying certificate for the geometric-series claim. The `sound`
field is the actual analytic proposition and `soundProof` is built from the
Mathlib theorems above, not from `True`/`trivial`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8bf4cad1248047a66c08139b1ee0987245a766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
