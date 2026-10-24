# ProfileSupBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc08ba4a06700ccaea32e4e94740e9a599ab22237ffa7818d95c00752da2e2aa",
  "kind": "def",
  "lexical_name": "ProfileSupBounds",
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
  "slug": "profilesupbounds--f9f44f27b5bef8f19b5b66dc",
  "source": {
    "blob": "df3ec0b26b02540f20ebeb9340c4da4ed72d3e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9f44f27b5bef8f19b5b66dce36e26f9b2cb81d5baf4f8008aa653ecc506341b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc08ba4a06700ccaea32e4e94740e9a599ab22237ffa7818d95c00752da2e2aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProfileSupBounds
    (F : ℝ → ℝ) (B0 B1 : ℝ) : Prop :=
  0 ≤ B0 ∧ 0 ≤ B1 ∧
  (∀ t : ℝ, |F t| ≤ B0) ∧
  (∀ t : ℝ, |deriv F t| ≤ B1)

/-- Candidate absolute derivative bound from the profile bounds `B0` and `B1`,
used on the half-line `u ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3ec0b26b02540f20ebeb9340c4da4ed72d3e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
