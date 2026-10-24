# exponentialSeriesClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac704c7a836fd35f8d36fb57eec8b14184e08d551069769949eb00c6d353433b",
  "kind": "def",
  "lexical_name": "exponentialSeriesClaim",
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
  "slug": "exponentialseriesclaim--6c4cb9133220972a03ff920f",
  "source": {
    "blob": "e5df4e8773134a0194d815c5b6a30940a5319b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c4cb9133220972a03ff920f5b37cb7bbcdb61654665a73c2a6a3a71c78d46e8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac704c7a836fd35f8d36fb57eec8b14184e08d551069769949eb00c6d353433b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exponentialSeriesClaim
    (z : ℂ) :
    BoundaryCalculus.AnalyticClaim
      (exponentialSeriesContext z)
      (Authority.BoundaryKind.custom "complex-exponential-series") where
  label := "Mathlib proof: complex exponential series and analyticity"
  statement :=
    Summable
      (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ)) ∧
      HasSum
        (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ))
        (Complex.exp z) ∧
      AnalyticAt ℂ Complex.exp z ∧
      DifferentiableAt ℂ Complex.exp z

/-- The Mathlib-backed proof certificate for the exponential-series claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5df4e8773134a0194d815c5b6a30940a5319b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
