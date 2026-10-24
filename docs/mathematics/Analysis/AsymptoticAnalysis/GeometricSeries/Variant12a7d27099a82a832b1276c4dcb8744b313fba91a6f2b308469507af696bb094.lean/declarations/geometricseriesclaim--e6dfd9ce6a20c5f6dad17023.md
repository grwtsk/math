# geometricSeriesClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bf1cd3bea6569f9a685c5e5479eaf013b689a3969f7795f4f96a2eb9aef6191",
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
  "slug": "geometricseriesclaim--e6dfd9ce6a20c5f6dad17023",
  "source": {
    "blob": "3f934bc7ecd3de8ccd42d89fc5d8c2042a1bfa82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6dfd9ce6a20c5f6dad17023a367a546782789457a4f976eb93e36617d8de305",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bf1cd3bea6569f9a685c5e5479eaf013b689a3969f7795f4f96a2eb9aef6191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def geometricSeriesClaim
    (z : ℂ) (_hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticClaim
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence where
  label :=
    "Mathlib proof: complex geometric series summability, sum, and analyticity"
  statement :=
    Summable (fun n : ℕ => z ^ n) ∧
      Summable (fun n : ℕ => ‖z ^ n‖) ∧
      HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) ∧
      AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z

/-- The Mathlib-backed proof certificate for the geometric-series claim. The
`proof` field is assembled from the four Mathlib-backed theorems above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f934bc7ecd3de8ccd42d89fc5d8c2042a1bfa82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
